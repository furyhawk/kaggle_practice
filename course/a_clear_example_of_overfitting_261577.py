{"metadata":{"language_info":{"name":"python","version":"3.6.6","mimetype":"text/x-python","codemirror_mode":{"name":"ipython","version":3},"pygments_lexer":"ipython3","nbconvert_exporter":"python","file_extension":".py"},"kernelspec":{"display_name":"Python 3","language":"python","name":"python3"}},"nbformat_minor":4,"nbformat":4,"cells":[{"cell_type":"code","source":"---\ntitle: \"A clear example of overfitting\"\nauthor: \"Osvaldo Zagordi\"\ndate: \"21 October 2016\"\noutput: html_document\n---\n\n```{r my_setup, include=FALSE}\nknitr::opts_chunk$set(echo = TRUE, message = FALSE)\nlibrary(tidyverse)\nlibrary(xgboost)\nlibrary(Matrix)\nlibrary(FeatureHashing)\ntrain <- read_csv('../input/train.csv')\ntest <- read_csv('../input/test.csv')\n\n# adapted from https://susanejohnston.wordpress.com/2012/08/09/a-quick-and-easy-function-to-plot-lm-results-in-r/\nggplotRegression <- function (fit) {\nm2p <- data.frame(fitted_values = fit$fitted.values, actual_values = fit$model[, 1])\nprint(names(m2p))\nggplot(m2p, aes(x = actual_values, y = fitted_values)) +\n  geom_point() +\n  geom_abline(slope = 1, intercept = 0) +\n  labs(title = paste(\"Adj R2 = \", signif(summary(fit)$adj.r.squared, 4)),\n       x = 'observed value', y = 'predicted value')\n}\n```\n\nThis kernel presents two approaches to the prediction of house prices. The\nfirst one is a very simple linear fit on a small subset of _reasonable_ predicting\nvariables.\n\n## A very simple fit\n\nWe will use the area of the first and second floors, and the overall quality\nof the property, coded in a scale from one to ten. The idea here is just to\nhave a feeling, also visually, of how much the score on the leaderboard\ntranslates into predicted-observed prices.\n\n```{r basic_linear_fit}\n# variable names starting with a number need a \"`\" to be escaped\nfit <- lm(SalePrice ~ (`1stFlrSF` + `2ndFlrSF`) * OverallQual + 1, data = train)\nggplotRegression(fit)\n```\n\nThe plot shows that, although very simple, this model is already able to\ncapture some of the signal present in the data.\n\nA few words on the formula. An expression like `SalePrice ~ OverallQual + 1`\nmust be read as: predict `SalePrice` as a function of `OverallQual` plus a\nconstant term (the intercept). The formula we used reads\n\n    SalePrice ~ (`1stFlrSF` + `2ndFlrSF`) * OverallQual + 1.\n\nThe bacticks around `1stFlrSF` and `2ndFlrSF` are used to correctly interpret\nvariable names that begin with a number. The asterisk means that the model\nmust include interactions as well, _i.e._\n\n    z ~ x * y\n\nmeans: predict `z` as a linear function of `x`, `y` and `x` times `y` and\nestimate the three coefficients. In mathematical formula, estimate\n$\\alpha, \\beta, \\gamma$ in\n\n$$\nz = \\alpha \\cdot x + \\beta \\cdot y + \\gamma \\cdot x \\cdot y\n$$\n\nIn our case the linear model will estimate six coefficients: the intercept,\none coefficient for each variable in `1stFlrSF`, `2ndFlrSF`, `OverallQual`,\nand two coefficients for the interactions `1stFlrSF:OverallQual` and\n`2ndFlrSF:OverallQual`.\n\nLet's retry but this time trying to predict the log of the sale price.\n\n```{r basic_linear_fit_log}\ntrain$log_price <- log(train$SalePrice)\nfit <- lm(log_price ~ (`1stFlrSF` + `2ndFlrSF`) * OverallQual + 1, data = train)\nggplotRegression(fit)\n```\n\nNot a big difference, although $R^2$ has slightly increased (it is, anyway, not\na great measure to evaluate regression models).\n\nWe can use this model to predict on the test data and save this prediction.\nDon't forget to back-transform the log of the price; I also round to the closest\n500\\$, since I have only observed values of the sale price that are multiple\nof 500.\n\n```{r basic_prediction}\npreds <- predict(fit, test)\nrpreds <- as.integer(round(exp(preds) / 500) * 500)\ndata.frame(Id = test$Id, SalePrice = rpreds) %>%\n  write_csv(path = 'submission.csv')\n```\n\nThis gives a score of 0.1873 on the leaderboard, while the sample submission\ngives 0.4089 and the top submission scores 0.1 (as of Oct 21st). Not bad\nfor such a simple model, but definitely too simple for Kaggle.\n\n## Cleaning the data and simple feature engineering\n\nWe now prepare the data for learning with xgboost, the different steps are\ncommented in the code. In short:\n\n- we save a vector with the log of the prices to\n  use it later as a label,\n- we rename the variables that start with a number to\n  avoid confusion,\n- remove a summary variable that is mislabeled,\n- change `NA`s to `None` when the meaning is clear.\n\n```{r feat_eng}\ntrain_label <- train$log_price\ntrain$SalePrice <- NULL\ntrain$log_price <- NULL\n# we save Id for the submission, but it's not used to predict\ntestids <- test$Id\ntest$Id <- NULL\ntrain$Id <- NULL\n\nrow_train <- nrow(train)\nrow_test <- nrow(test)\nall_rows <- rbind(train, test) %>%\n  # first character name is a number, but this is still NSE\n  rename(FirstFlrSF = `1stFlrSF`,\n         SecondFlrSF = `2ndFlrSF`,\n         ThreeSeasonPorch = `3SsnPorch`) %>%\n  # MSSubClass is sometimes mislabeled and is anyway a summary of other features\n  select(-MSSubClass)\n\n# no access to alley, no basement and so on are coded as NA\nmask <- is.na(all_rows$Alley)\nall_rows$Alley[mask] <- 'None'\nmask <- is.na(all_rows$BsmtQual)\nall_rows$BsmtQual[mask] <- 'NoBasement'\nmask <- is.na(all_rows$BsmtExposure)\nall_rows$BsmtExposure[mask] <- 'NoBasement'\nmask <- is.na(all_rows$PoolQC)\nall_rows$PoolQC[mask] <- 'NoPool'\nmask <- is.na(all_rows$Fence)\nall_rows$Fence[mask] <- 'NoFence'\nmask <- is.na(all_rows$GarageType)\nall_rows$GarageType[mask] <- 'NoGarage'\nmask <- is.na(all_rows$GarageCond)\nall_rows$GarageCond[mask] <- 'NoGarage'\nmask <- is.na(all_rows$GarageArea)\nall_rows$GarageArea[mask] <- 0\nmask <- is.na(all_rows$GarageCars)\nall_rows$GarageCars[mask] <- 0\n# LotFrontage: Linear feet of street connected to property\n# NA -> 0\nmask <- is.na(all_rows$LotFrontage)\nall_rows$LotFrontage[mask] <- 0\n\n#rm(train, test)\n```\nNow we can compute the matrix to use in xgboost. At least for this simple\napproach, we exclude columns with `NA`s by applying `anyNA` on\nall columns and transposing to extract the column names. This is conveniently\ndone with functions from `tidyverse`.\n\n```{r hashed_matrix}\n# detect which columns have NAs with base function anyNA\nnonas <- all_rows %>%\n  summarise_each(funs(anyNA)) %>%\n  # this transposes\n  mutate(group = 1) %>%\n  gather(var, val, 1:ncol(all_rows)) %>%\n  select(-group) %>%\n  filter(val == FALSE)\n# indices of columns without NAs\nnona_indices <- which(colnames(all_rows) %in% nonas$var)\n\n# detect which columns are character\ncharcol <- all_rows %>%\n  summarise_each(funs(is.character)) %>%\n  # this transposes\n  mutate(group = 1) %>%\n  gather(var, val, 1:ncol(all_rows)) %>%\n  select(-group) %>%\n  filter(val == TRUE)\nchar_indices <- which(colnames(all_rows) %in% charcol$var)\n\n# no NAs and not characters\nnum_no_nas_indices <- setdiff(nona_indices, char_indices)\n\n# no NAs and characters\nchar_no_nas_indices <- intersect(nona_indices, char_indices)\n\n# use only columns without NAs\nhashed_matrix = hashed.model.matrix(~., data=all_rows[,nona_indices], hash.size=2^12, transpose=FALSE)\nhashed_matrix = as(hashed_matrix, \"dgCMatrix\")\n```\n\nWe are ready to feed this matrices into xgboost, but we will now make a small\nexperiment to show a magnificent case of overfitting. We will split the training\nset in two subsets of equal (or almost equal) size: a holdout set and a training set.\n\n```{r dmatrices}\n# we are assuming training set is already in random order so no need to shuffle\nrow_holdout <- round(row_train / 2)\ndholdout <- xgb.DMatrix(data = hashed_matrix[1:row_holdout,],\n                        label = train_label[1:row_holdout])\ndtrain <- xgb.DMatrix(data = hashed_matrix[(1 + row_holdout):row_train,],\n                      label = train_label[(1 + row_holdout):row_train])\ndtest <- xgb.DMatrix(data = hashed_matrix[(1 + row_train):(row_train + row_test),])\n```\n\nWe now use the training set to train the model and we save the rmse obtained.\n\n```{r}\nparam <- list(eval_metric = \"rmse\",\n              booster = \"gbtree\"\n)\n\nm2 <- xgb.train(data = dtrain,\n                param,\n                nrounds = 300,\n                watchlist = list(train = dtrain),\n                print_every_n = 100)\n```\n\nWithout optimizing the parameters, we obtain a rmse lower than 1E-3, a lot better\nthan the top submission on the leaderboard. How does this translates visually?\n\n```{r plot_train}\ndata.frame(predicted = exp(predict(m2, dtrain)),\n              observed = exp(train_label[(1 + row_holdout):row_train])) %>%\n  ggplot(aes(x = observed, y = predicted)) +\n  geom_point() +\n  geom_abline(slope = 1, intercept = 0) +\n  labs(title = \"Training and prediction on the same set (training)\",\n       x = 'observed value', y = 'predicted value')\n\n```\n\nExtremely good fit!\n\nLet's now use the trained model to predict on the holdout set, compute the rmse\nand plot.\n\n```{r predict_on_holdout}\nho_preds <- predict(m2, dholdout)\ndelta <- ho_preds - train_label[1:row_holdout]\nrmse <- sqrt(mean(delta^2))\npaste('rmse =', rmse)\ndata.frame(predicted = exp(ho_preds),\n           observed = exp(train_label[1:row_holdout])) %>%\n  ggplot(aes(x = observed, y = predicted)) +\n  geom_point() +\n  geom_abline(slope = 1, intercept = 0) +\n  labs(title = \"Training on the training set, prediction on the holdout set\",\n       x = 'observed value', y = 'predicted value')\n```\n\nrmse is now 0.155 and it is also seen on the plot that the prediction is\nnot that good, after all. Further, it will be worth investigating those\noutliers.\n\n```{r predict_on_test}\npreds <- predict(m2, dtest)\nrpreds <- as.integer(round(exp(preds) / 500) * 500)\ndata.frame(Id = testids, SalePrice = rpreds) %>%\n  write_csv(path = 'submission_xgb.csv')\n```\n\n","metadata":{"collapsed":false,"_kg_hide-input":false,"jupyter":{"outputs_hidden":false}},"execution_count":null,"outputs":[]}]}