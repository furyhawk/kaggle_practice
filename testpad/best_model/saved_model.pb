Ǫ!
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
<
Selu
features"T
activations"T"
Ttype:
2
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28Ӳ
?
cross_net_7/dense_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_namecross_net_7/dense_39/kernel
?
/cross_net_7/dense_39/kernel/Read/ReadVariableOpReadVariableOpcross_net_7/dense_39/kernel*
_output_shapes

:*
dtype0
?
cross_net_7/dense_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namecross_net_7/dense_39/bias
?
-cross_net_7/dense_39/bias/Read/ReadVariableOpReadVariableOpcross_net_7/dense_39/bias*
_output_shapes
:*
dtype0
?
(cross_net_7/batch_normalization_39/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(cross_net_7/batch_normalization_39/gamma
?
<cross_net_7/batch_normalization_39/gamma/Read/ReadVariableOpReadVariableOp(cross_net_7/batch_normalization_39/gamma*
_output_shapes
:*
dtype0
?
'cross_net_7/batch_normalization_39/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'cross_net_7/batch_normalization_39/beta
?
;cross_net_7/batch_normalization_39/beta/Read/ReadVariableOpReadVariableOp'cross_net_7/batch_normalization_39/beta*
_output_shapes
:*
dtype0
?
.cross_net_7/batch_normalization_39/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.cross_net_7/batch_normalization_39/moving_mean
?
Bcross_net_7/batch_normalization_39/moving_mean/Read/ReadVariableOpReadVariableOp.cross_net_7/batch_normalization_39/moving_mean*
_output_shapes
:*
dtype0
?
2cross_net_7/batch_normalization_39/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42cross_net_7/batch_normalization_39/moving_variance
?
Fcross_net_7/batch_normalization_39/moving_variance/Read/ReadVariableOpReadVariableOp2cross_net_7/batch_normalization_39/moving_variance*
_output_shapes
:*
dtype0
?
cross_net_7/output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:O**
shared_namecross_net_7/output/kernel
?
-cross_net_7/output/kernel/Read/ReadVariableOpReadVariableOpcross_net_7/output/kernel*
_output_shapes

:O*
dtype0
?
cross_net_7/output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namecross_net_7/output/bias

+cross_net_7/output/bias/Read/ReadVariableOpReadVariableOpcross_net_7/output/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
*cross_net_7/dense_block_28/dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*;
shared_name,*cross_net_7/dense_block_28/dense_35/kernel
?
>cross_net_7/dense_block_28/dense_35/kernel/Read/ReadVariableOpReadVariableOp*cross_net_7/dense_block_28/dense_35/kernel*
_output_shapes
:	?*
dtype0
?
(cross_net_7/dense_block_28/dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(cross_net_7/dense_block_28/dense_35/bias
?
<cross_net_7/dense_block_28/dense_35/bias/Read/ReadVariableOpReadVariableOp(cross_net_7/dense_block_28/dense_35/bias*
_output_shapes	
:?*
dtype0
?
7cross_net_7/dense_block_28/batch_normalization_35/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97cross_net_7/dense_block_28/batch_normalization_35/gamma
?
Kcross_net_7/dense_block_28/batch_normalization_35/gamma/Read/ReadVariableOpReadVariableOp7cross_net_7/dense_block_28/batch_normalization_35/gamma*
_output_shapes	
:?*
dtype0
?
6cross_net_7/dense_block_28/batch_normalization_35/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86cross_net_7/dense_block_28/batch_normalization_35/beta
?
Jcross_net_7/dense_block_28/batch_normalization_35/beta/Read/ReadVariableOpReadVariableOp6cross_net_7/dense_block_28/batch_normalization_35/beta*
_output_shapes	
:?*
dtype0
?
*cross_net_7/dense_block_29/dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*cross_net_7/dense_block_29/dense_36/kernel
?
>cross_net_7/dense_block_29/dense_36/kernel/Read/ReadVariableOpReadVariableOp*cross_net_7/dense_block_29/dense_36/kernel* 
_output_shapes
:
??*
dtype0
?
(cross_net_7/dense_block_29/dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(cross_net_7/dense_block_29/dense_36/bias
?
<cross_net_7/dense_block_29/dense_36/bias/Read/ReadVariableOpReadVariableOp(cross_net_7/dense_block_29/dense_36/bias*
_output_shapes	
:?*
dtype0
?
7cross_net_7/dense_block_29/batch_normalization_36/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97cross_net_7/dense_block_29/batch_normalization_36/gamma
?
Kcross_net_7/dense_block_29/batch_normalization_36/gamma/Read/ReadVariableOpReadVariableOp7cross_net_7/dense_block_29/batch_normalization_36/gamma*
_output_shapes	
:?*
dtype0
?
6cross_net_7/dense_block_29/batch_normalization_36/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86cross_net_7/dense_block_29/batch_normalization_36/beta
?
Jcross_net_7/dense_block_29/batch_normalization_36/beta/Read/ReadVariableOpReadVariableOp6cross_net_7/dense_block_29/batch_normalization_36/beta*
_output_shapes	
:?*
dtype0
?
*cross_net_7/dense_block_30/dense_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*cross_net_7/dense_block_30/dense_37/kernel
?
>cross_net_7/dense_block_30/dense_37/kernel/Read/ReadVariableOpReadVariableOp*cross_net_7/dense_block_30/dense_37/kernel* 
_output_shapes
:
??*
dtype0
?
(cross_net_7/dense_block_30/dense_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*9
shared_name*(cross_net_7/dense_block_30/dense_37/bias
?
<cross_net_7/dense_block_30/dense_37/bias/Read/ReadVariableOpReadVariableOp(cross_net_7/dense_block_30/dense_37/bias*
_output_shapes	
:?*
dtype0
?
7cross_net_7/dense_block_30/batch_normalization_37/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*H
shared_name97cross_net_7/dense_block_30/batch_normalization_37/gamma
?
Kcross_net_7/dense_block_30/batch_normalization_37/gamma/Read/ReadVariableOpReadVariableOp7cross_net_7/dense_block_30/batch_normalization_37/gamma*
_output_shapes	
:?*
dtype0
?
6cross_net_7/dense_block_30/batch_normalization_37/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*G
shared_name86cross_net_7/dense_block_30/batch_normalization_37/beta
?
Jcross_net_7/dense_block_30/batch_normalization_37/beta/Read/ReadVariableOpReadVariableOp6cross_net_7/dense_block_30/batch_normalization_37/beta*
_output_shapes	
:?*
dtype0
?
*cross_net_7/dense_block_31/dense_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*;
shared_name,*cross_net_7/dense_block_31/dense_38/kernel
?
>cross_net_7/dense_block_31/dense_38/kernel/Read/ReadVariableOpReadVariableOp*cross_net_7/dense_block_31/dense_38/kernel*
_output_shapes
:	?@*
dtype0
?
(cross_net_7/dense_block_31/dense_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(cross_net_7/dense_block_31/dense_38/bias
?
<cross_net_7/dense_block_31/dense_38/bias/Read/ReadVariableOpReadVariableOp(cross_net_7/dense_block_31/dense_38/bias*
_output_shapes
:@*
dtype0
?
7cross_net_7/dense_block_31/batch_normalization_38/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*H
shared_name97cross_net_7/dense_block_31/batch_normalization_38/gamma
?
Kcross_net_7/dense_block_31/batch_normalization_38/gamma/Read/ReadVariableOpReadVariableOp7cross_net_7/dense_block_31/batch_normalization_38/gamma*
_output_shapes
:@*
dtype0
?
6cross_net_7/dense_block_31/batch_normalization_38/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*G
shared_name86cross_net_7/dense_block_31/batch_normalization_38/beta
?
Jcross_net_7/dense_block_31/batch_normalization_38/beta/Read/ReadVariableOpReadVariableOp6cross_net_7/dense_block_31/batch_normalization_38/beta*
_output_shapes
:@*
dtype0
?
=cross_net_7/dense_block_28/batch_normalization_35/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=cross_net_7/dense_block_28/batch_normalization_35/moving_mean
?
Qcross_net_7/dense_block_28/batch_normalization_35/moving_mean/Read/ReadVariableOpReadVariableOp=cross_net_7/dense_block_28/batch_normalization_35/moving_mean*
_output_shapes	
:?*
dtype0
?
Across_net_7/dense_block_28/batch_normalization_35/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*R
shared_nameCAcross_net_7/dense_block_28/batch_normalization_35/moving_variance
?
Ucross_net_7/dense_block_28/batch_normalization_35/moving_variance/Read/ReadVariableOpReadVariableOpAcross_net_7/dense_block_28/batch_normalization_35/moving_variance*
_output_shapes	
:?*
dtype0
?
=cross_net_7/dense_block_29/batch_normalization_36/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=cross_net_7/dense_block_29/batch_normalization_36/moving_mean
?
Qcross_net_7/dense_block_29/batch_normalization_36/moving_mean/Read/ReadVariableOpReadVariableOp=cross_net_7/dense_block_29/batch_normalization_36/moving_mean*
_output_shapes	
:?*
dtype0
?
Across_net_7/dense_block_29/batch_normalization_36/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*R
shared_nameCAcross_net_7/dense_block_29/batch_normalization_36/moving_variance
?
Ucross_net_7/dense_block_29/batch_normalization_36/moving_variance/Read/ReadVariableOpReadVariableOpAcross_net_7/dense_block_29/batch_normalization_36/moving_variance*
_output_shapes	
:?*
dtype0
?
=cross_net_7/dense_block_30/batch_normalization_37/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=cross_net_7/dense_block_30/batch_normalization_37/moving_mean
?
Qcross_net_7/dense_block_30/batch_normalization_37/moving_mean/Read/ReadVariableOpReadVariableOp=cross_net_7/dense_block_30/batch_normalization_37/moving_mean*
_output_shapes	
:?*
dtype0
?
Across_net_7/dense_block_30/batch_normalization_37/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*R
shared_nameCAcross_net_7/dense_block_30/batch_normalization_37/moving_variance
?
Ucross_net_7/dense_block_30/batch_normalization_37/moving_variance/Read/ReadVariableOpReadVariableOpAcross_net_7/dense_block_30/batch_normalization_37/moving_variance*
_output_shapes	
:?*
dtype0
?
=cross_net_7/dense_block_31/batch_normalization_38/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*N
shared_name?=cross_net_7/dense_block_31/batch_normalization_38/moving_mean
?
Qcross_net_7/dense_block_31/batch_normalization_38/moving_mean/Read/ReadVariableOpReadVariableOp=cross_net_7/dense_block_31/batch_normalization_38/moving_mean*
_output_shapes
:@*
dtype0
?
Across_net_7/dense_block_31/batch_normalization_38/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*R
shared_nameCAcross_net_7/dense_block_31/batch_normalization_38/moving_variance
?
Ucross_net_7/dense_block_31/batch_normalization_38/moving_variance/Read/ReadVariableOpReadVariableOpAcross_net_7/dense_block_31/batch_normalization_38/moving_variance*
_output_shapes
:@*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
"Adam/cross_net_7/dense_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/cross_net_7/dense_39/kernel/m
?
6Adam/cross_net_7/dense_39/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/cross_net_7/dense_39/kernel/m*
_output_shapes

:*
dtype0
?
 Adam/cross_net_7/dense_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cross_net_7/dense_39/bias/m
?
4Adam/cross_net_7/dense_39/bias/m/Read/ReadVariableOpReadVariableOp Adam/cross_net_7/dense_39/bias/m*
_output_shapes
:*
dtype0
?
/Adam/cross_net_7/batch_normalization_39/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/Adam/cross_net_7/batch_normalization_39/gamma/m
?
CAdam/cross_net_7/batch_normalization_39/gamma/m/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/batch_normalization_39/gamma/m*
_output_shapes
:*
dtype0
?
.Adam/cross_net_7/batch_normalization_39/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adam/cross_net_7/batch_normalization_39/beta/m
?
BAdam/cross_net_7/batch_normalization_39/beta/m/Read/ReadVariableOpReadVariableOp.Adam/cross_net_7/batch_normalization_39/beta/m*
_output_shapes
:*
dtype0
?
 Adam/cross_net_7/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:O*1
shared_name" Adam/cross_net_7/output/kernel/m
?
4Adam/cross_net_7/output/kernel/m/Read/ReadVariableOpReadVariableOp Adam/cross_net_7/output/kernel/m*
_output_shapes

:O*
dtype0
?
Adam/cross_net_7/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cross_net_7/output/bias/m
?
2Adam/cross_net_7/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/cross_net_7/output/bias/m*
_output_shapes
:*
dtype0
?
1Adam/cross_net_7/dense_block_28/dense_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*B
shared_name31Adam/cross_net_7/dense_block_28/dense_35/kernel/m
?
EAdam/cross_net_7/dense_block_28/dense_35/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/cross_net_7/dense_block_28/dense_35/kernel/m*
_output_shapes
:	?*
dtype0
?
/Adam/cross_net_7/dense_block_28/dense_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/Adam/cross_net_7/dense_block_28/dense_35/bias/m
?
CAdam/cross_net_7/dense_block_28/dense_35/bias/m/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/dense_block_28/dense_35/bias/m*
_output_shapes	
:?*
dtype0
?
>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/m
?
RAdam/cross_net_7/dense_block_28/batch_normalization_35/gamma/m/Read/ReadVariableOpReadVariableOp>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/m*
_output_shapes	
:?*
dtype0
?
=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/m
?
QAdam/cross_net_7/dense_block_28/batch_normalization_35/beta/m/Read/ReadVariableOpReadVariableOp=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/m*
_output_shapes	
:?*
dtype0
?
1Adam/cross_net_7/dense_block_29/dense_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*B
shared_name31Adam/cross_net_7/dense_block_29/dense_36/kernel/m
?
EAdam/cross_net_7/dense_block_29/dense_36/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/cross_net_7/dense_block_29/dense_36/kernel/m* 
_output_shapes
:
??*
dtype0
?
/Adam/cross_net_7/dense_block_29/dense_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/Adam/cross_net_7/dense_block_29/dense_36/bias/m
?
CAdam/cross_net_7/dense_block_29/dense_36/bias/m/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/dense_block_29/dense_36/bias/m*
_output_shapes	
:?*
dtype0
?
>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/m
?
RAdam/cross_net_7/dense_block_29/batch_normalization_36/gamma/m/Read/ReadVariableOpReadVariableOp>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/m*
_output_shapes	
:?*
dtype0
?
=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/m
?
QAdam/cross_net_7/dense_block_29/batch_normalization_36/beta/m/Read/ReadVariableOpReadVariableOp=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/m*
_output_shapes	
:?*
dtype0
?
1Adam/cross_net_7/dense_block_30/dense_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*B
shared_name31Adam/cross_net_7/dense_block_30/dense_37/kernel/m
?
EAdam/cross_net_7/dense_block_30/dense_37/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/cross_net_7/dense_block_30/dense_37/kernel/m* 
_output_shapes
:
??*
dtype0
?
/Adam/cross_net_7/dense_block_30/dense_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/Adam/cross_net_7/dense_block_30/dense_37/bias/m
?
CAdam/cross_net_7/dense_block_30/dense_37/bias/m/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/dense_block_30/dense_37/bias/m*
_output_shapes	
:?*
dtype0
?
>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/m
?
RAdam/cross_net_7/dense_block_30/batch_normalization_37/gamma/m/Read/ReadVariableOpReadVariableOp>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/m*
_output_shapes	
:?*
dtype0
?
=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/m
?
QAdam/cross_net_7/dense_block_30/batch_normalization_37/beta/m/Read/ReadVariableOpReadVariableOp=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/m*
_output_shapes	
:?*
dtype0
?
1Adam/cross_net_7/dense_block_31/dense_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*B
shared_name31Adam/cross_net_7/dense_block_31/dense_38/kernel/m
?
EAdam/cross_net_7/dense_block_31/dense_38/kernel/m/Read/ReadVariableOpReadVariableOp1Adam/cross_net_7/dense_block_31/dense_38/kernel/m*
_output_shapes
:	?@*
dtype0
?
/Adam/cross_net_7/dense_block_31/dense_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/Adam/cross_net_7/dense_block_31/dense_38/bias/m
?
CAdam/cross_net_7/dense_block_31/dense_38/bias/m/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/dense_block_31/dense_38/bias/m*
_output_shapes
:@*
dtype0
?
>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*O
shared_name@>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/m
?
RAdam/cross_net_7/dense_block_31/batch_normalization_38/gamma/m/Read/ReadVariableOpReadVariableOp>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/m*
_output_shapes
:@*
dtype0
?
=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*N
shared_name?=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/m
?
QAdam/cross_net_7/dense_block_31/batch_normalization_38/beta/m/Read/ReadVariableOpReadVariableOp=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/m*
_output_shapes
:@*
dtype0
?
"Adam/cross_net_7/dense_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*3
shared_name$"Adam/cross_net_7/dense_39/kernel/v
?
6Adam/cross_net_7/dense_39/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/cross_net_7/dense_39/kernel/v*
_output_shapes

:*
dtype0
?
 Adam/cross_net_7/dense_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/cross_net_7/dense_39/bias/v
?
4Adam/cross_net_7/dense_39/bias/v/Read/ReadVariableOpReadVariableOp Adam/cross_net_7/dense_39/bias/v*
_output_shapes
:*
dtype0
?
/Adam/cross_net_7/batch_normalization_39/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/Adam/cross_net_7/batch_normalization_39/gamma/v
?
CAdam/cross_net_7/batch_normalization_39/gamma/v/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/batch_normalization_39/gamma/v*
_output_shapes
:*
dtype0
?
.Adam/cross_net_7/batch_normalization_39/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adam/cross_net_7/batch_normalization_39/beta/v
?
BAdam/cross_net_7/batch_normalization_39/beta/v/Read/ReadVariableOpReadVariableOp.Adam/cross_net_7/batch_normalization_39/beta/v*
_output_shapes
:*
dtype0
?
 Adam/cross_net_7/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:O*1
shared_name" Adam/cross_net_7/output/kernel/v
?
4Adam/cross_net_7/output/kernel/v/Read/ReadVariableOpReadVariableOp Adam/cross_net_7/output/kernel/v*
_output_shapes

:O*
dtype0
?
Adam/cross_net_7/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/cross_net_7/output/bias/v
?
2Adam/cross_net_7/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/cross_net_7/output/bias/v*
_output_shapes
:*
dtype0
?
1Adam/cross_net_7/dense_block_28/dense_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*B
shared_name31Adam/cross_net_7/dense_block_28/dense_35/kernel/v
?
EAdam/cross_net_7/dense_block_28/dense_35/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/cross_net_7/dense_block_28/dense_35/kernel/v*
_output_shapes
:	?*
dtype0
?
/Adam/cross_net_7/dense_block_28/dense_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/Adam/cross_net_7/dense_block_28/dense_35/bias/v
?
CAdam/cross_net_7/dense_block_28/dense_35/bias/v/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/dense_block_28/dense_35/bias/v*
_output_shapes	
:?*
dtype0
?
>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/v
?
RAdam/cross_net_7/dense_block_28/batch_normalization_35/gamma/v/Read/ReadVariableOpReadVariableOp>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/v*
_output_shapes	
:?*
dtype0
?
=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/v
?
QAdam/cross_net_7/dense_block_28/batch_normalization_35/beta/v/Read/ReadVariableOpReadVariableOp=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/v*
_output_shapes	
:?*
dtype0
?
1Adam/cross_net_7/dense_block_29/dense_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*B
shared_name31Adam/cross_net_7/dense_block_29/dense_36/kernel/v
?
EAdam/cross_net_7/dense_block_29/dense_36/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/cross_net_7/dense_block_29/dense_36/kernel/v* 
_output_shapes
:
??*
dtype0
?
/Adam/cross_net_7/dense_block_29/dense_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/Adam/cross_net_7/dense_block_29/dense_36/bias/v
?
CAdam/cross_net_7/dense_block_29/dense_36/bias/v/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/dense_block_29/dense_36/bias/v*
_output_shapes	
:?*
dtype0
?
>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/v
?
RAdam/cross_net_7/dense_block_29/batch_normalization_36/gamma/v/Read/ReadVariableOpReadVariableOp>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/v*
_output_shapes	
:?*
dtype0
?
=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/v
?
QAdam/cross_net_7/dense_block_29/batch_normalization_36/beta/v/Read/ReadVariableOpReadVariableOp=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/v*
_output_shapes	
:?*
dtype0
?
1Adam/cross_net_7/dense_block_30/dense_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*B
shared_name31Adam/cross_net_7/dense_block_30/dense_37/kernel/v
?
EAdam/cross_net_7/dense_block_30/dense_37/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/cross_net_7/dense_block_30/dense_37/kernel/v* 
_output_shapes
:
??*
dtype0
?
/Adam/cross_net_7/dense_block_30/dense_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*@
shared_name1/Adam/cross_net_7/dense_block_30/dense_37/bias/v
?
CAdam/cross_net_7/dense_block_30/dense_37/bias/v/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/dense_block_30/dense_37/bias/v*
_output_shapes	
:?*
dtype0
?
>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*O
shared_name@>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/v
?
RAdam/cross_net_7/dense_block_30/batch_normalization_37/gamma/v/Read/ReadVariableOpReadVariableOp>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/v*
_output_shapes	
:?*
dtype0
?
=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/v
?
QAdam/cross_net_7/dense_block_30/batch_normalization_37/beta/v/Read/ReadVariableOpReadVariableOp=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/v*
_output_shapes	
:?*
dtype0
?
1Adam/cross_net_7/dense_block_31/dense_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*B
shared_name31Adam/cross_net_7/dense_block_31/dense_38/kernel/v
?
EAdam/cross_net_7/dense_block_31/dense_38/kernel/v/Read/ReadVariableOpReadVariableOp1Adam/cross_net_7/dense_block_31/dense_38/kernel/v*
_output_shapes
:	?@*
dtype0
?
/Adam/cross_net_7/dense_block_31/dense_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*@
shared_name1/Adam/cross_net_7/dense_block_31/dense_38/bias/v
?
CAdam/cross_net_7/dense_block_31/dense_38/bias/v/Read/ReadVariableOpReadVariableOp/Adam/cross_net_7/dense_block_31/dense_38/bias/v*
_output_shapes
:@*
dtype0
?
>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*O
shared_name@>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/v
?
RAdam/cross_net_7/dense_block_31/batch_normalization_38/gamma/v/Read/ReadVariableOpReadVariableOp>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/v*
_output_shapes
:@*
dtype0
?
=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*N
shared_name?=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/v
?
QAdam/cross_net_7/dense_block_31/batch_normalization_38/beta/v/Read/ReadVariableOpReadVariableOp=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/v*
_output_shapes
:@*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
dense_layers
	dense

concat

batchn
softmax
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures

0
1
2
3
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
 trainable_variables
!regularization_losses
"	keras_api
h

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?
)iter

*beta_1

+beta_2
	,decay
-learning_ratem?m?m?m?#m?$m?.m?/m?0m?1m?2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?<m?=m?v?v?v?v?#v?$v?.v?/v?0v?1v?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?<v?=v?
?
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
>16
?17
@18
A19
B20
C21
D22
E23
24
25
26
27
28
29
#30
$31
?
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
16
17
18
19
#20
$21
 
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
	regularization_losses
 
?
	Kdense

Lbatchn
M
activation
Ndropout
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
y
	Sdense

Tbatchn
U
activation
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
y
	Zdense

[batchn
\
activation
]	variables
^trainable_variables
_regularization_losses
`	keras_api
y
	adense

bbatchn
c
activation
d	variables
etrainable_variables
fregularization_losses
g	keras_api
XV
VARIABLE_VALUEcross_net_7/dense_39/kernel'dense/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEcross_net_7/dense_39/bias%dense/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
 
ec
VARIABLE_VALUE(cross_net_7/batch_normalization_39/gamma'batchn/gamma/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUE'cross_net_7/batch_normalization_39/beta&batchn/beta/.ATTRIBUTES/VARIABLE_VALUE
qo
VARIABLE_VALUE.cross_net_7/batch_normalization_39/moving_mean-batchn/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE2cross_net_7/batch_normalization_39/moving_variance1batchn/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3

0
1
 
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
 trainable_variables
!regularization_losses
XV
VARIABLE_VALUEcross_net_7/output/kernel)softmax/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEcross_net_7/output/bias'softmax/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1

#0
$1
 
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
%	variables
&trainable_variables
'regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE*cross_net_7/dense_block_28/dense_35/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE(cross_net_7/dense_block_28/dense_35/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7cross_net_7/dense_block_28/batch_normalization_35/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE6cross_net_7/dense_block_28/batch_normalization_35/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE*cross_net_7/dense_block_29/dense_36/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE(cross_net_7/dense_block_29/dense_36/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE7cross_net_7/dense_block_29/batch_normalization_36/gamma&variables/6/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE6cross_net_7/dense_block_29/batch_normalization_36/beta&variables/7/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE*cross_net_7/dense_block_30/dense_37/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUE(cross_net_7/dense_block_30/dense_37/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7cross_net_7/dense_block_30/batch_normalization_37/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE6cross_net_7/dense_block_30/batch_normalization_37/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE
ge
VARIABLE_VALUE*cross_net_7/dense_block_31/dense_38/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUE(cross_net_7/dense_block_31/dense_38/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUE7cross_net_7/dense_block_31/batch_normalization_38/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE6cross_net_7/dense_block_31/batch_normalization_38/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE=cross_net_7/dense_block_28/batch_normalization_35/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAcross_net_7/dense_block_28/batch_normalization_35/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE=cross_net_7/dense_block_29/batch_normalization_36/moving_mean'variables/18/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAcross_net_7/dense_block_29/batch_normalization_36/moving_variance'variables/19/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE=cross_net_7/dense_block_30/batch_normalization_37/moving_mean'variables/20/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAcross_net_7/dense_block_30/batch_normalization_37/moving_variance'variables/21/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE=cross_net_7/dense_block_31/batch_normalization_38/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAcross_net_7/dense_block_31/batch_normalization_38/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE
F
>0
?1
@2
A3
B4
C5
D6
E7
8
9
8
0
1
2
3
4
5
6
7

|0
}1
 
 
j

.kernel
/bias
~	variables
trainable_variables
?regularization_losses
?	keras_api
?
	?axis
	0gamma
1beta
>moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
*
.0
/1
02
13
>4
?5

.0
/1
02
13
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
l

2kernel
3bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis
	4gamma
5beta
@moving_mean
Amoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
*
20
31
42
53
@4
A5

20
31
42
53
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
l

6kernel
7bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis
	8gamma
9beta
Bmoving_mean
Cmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
*
60
71
82
93
B4
C5

60
71
82
93
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
l

:kernel
;bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?
	?axis
	<gamma
=beta
Dmoving_mean
Emoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
V
?	variables
?trainable_variables
?regularization_losses
?	keras_api
*
:0
;1
<2
=3
D4
E5

:0
;1
<2
=3
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
 
 
 
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api

.0
/1

.0
/1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
 

00
11
>2
?3

00
11
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

>0
?1

K0
L1
M2
N3
 
 
 

20
31

20
31
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 

40
51
@2
A3

40
51
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

@0
A1

S0
T1
U2
 
 
 

60
71

60
71
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 

80
91
B2
C3

80
91
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

B0
C1

Z0
[1
\2
 
 
 

:0
;1

:0
;1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 

<0
=1
D2
E3

<0
=1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

D0
E1

a0
b1
c2
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
 
 
 
 
 

>0
?1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

@0
A1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

B0
C1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

D0
E1
 
 
 
 
 
 
 
 
 
{y
VARIABLE_VALUE"Adam/cross_net_7/dense_39/kernel/mCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE Adam/cross_net_7/dense_39/bias/mAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/batch_normalization_39/gamma/mCbatchn/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/cross_net_7/batch_normalization_39/beta/mBbatchn/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE Adam/cross_net_7/output/kernel/mEsoftmax/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/cross_net_7/output/bias/mCsoftmax/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/cross_net_7/dense_block_28/dense_35/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/dense_block_28/dense_35/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/cross_net_7/dense_block_29/dense_36/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/dense_block_29/dense_36/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/cross_net_7/dense_block_30/dense_37/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/dense_block_30/dense_37/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/cross_net_7/dense_block_31/dense_38/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/dense_block_31/dense_38/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE"Adam/cross_net_7/dense_39/kernel/vCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE Adam/cross_net_7/dense_39/bias/vAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/batch_normalization_39/gamma/vCbatchn/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE.Adam/cross_net_7/batch_normalization_39/beta/vBbatchn/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE Adam/cross_net_7/output/kernel/vEsoftmax/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/cross_net_7/output/bias/vCsoftmax/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/cross_net_7/dense_block_28/dense_35/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/dense_block_28/dense_35/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/cross_net_7/dense_block_29/dense_36/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/dense_block_29/dense_36/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/cross_net_7/dense_block_30/dense_37/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/dense_block_30/dense_37/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE1Adam/cross_net_7/dense_block_31/dense_38/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE/Adam/cross_net_7/dense_block_31/dense_38/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
z
serving_default_input_1Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1*cross_net_7/dense_block_28/dense_35/kernel(cross_net_7/dense_block_28/dense_35/bias=cross_net_7/dense_block_28/batch_normalization_35/moving_meanAcross_net_7/dense_block_28/batch_normalization_35/moving_variance6cross_net_7/dense_block_28/batch_normalization_35/beta7cross_net_7/dense_block_28/batch_normalization_35/gammacross_net_7/dense_39/kernelcross_net_7/dense_39/bias*cross_net_7/dense_block_29/dense_36/kernel(cross_net_7/dense_block_29/dense_36/bias=cross_net_7/dense_block_29/batch_normalization_36/moving_meanAcross_net_7/dense_block_29/batch_normalization_36/moving_variance6cross_net_7/dense_block_29/batch_normalization_36/beta7cross_net_7/dense_block_29/batch_normalization_36/gamma*cross_net_7/dense_block_30/dense_37/kernel(cross_net_7/dense_block_30/dense_37/bias=cross_net_7/dense_block_30/batch_normalization_37/moving_meanAcross_net_7/dense_block_30/batch_normalization_37/moving_variance6cross_net_7/dense_block_30/batch_normalization_37/beta7cross_net_7/dense_block_30/batch_normalization_37/gamma*cross_net_7/dense_block_31/dense_38/kernel(cross_net_7/dense_block_31/dense_38/bias=cross_net_7/dense_block_31/batch_normalization_38/moving_meanAcross_net_7/dense_block_31/batch_normalization_38/moving_variance6cross_net_7/dense_block_31/batch_normalization_38/beta7cross_net_7/dense_block_31/batch_normalization_38/gamma.cross_net_7/batch_normalization_39/moving_mean2cross_net_7/batch_normalization_39/moving_variance'cross_net_7/batch_normalization_39/beta(cross_net_7/batch_normalization_39/gammacross_net_7/output/kernelcross_net_7/output/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_133506
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?/
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/cross_net_7/dense_39/kernel/Read/ReadVariableOp-cross_net_7/dense_39/bias/Read/ReadVariableOp<cross_net_7/batch_normalization_39/gamma/Read/ReadVariableOp;cross_net_7/batch_normalization_39/beta/Read/ReadVariableOpBcross_net_7/batch_normalization_39/moving_mean/Read/ReadVariableOpFcross_net_7/batch_normalization_39/moving_variance/Read/ReadVariableOp-cross_net_7/output/kernel/Read/ReadVariableOp+cross_net_7/output/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp>cross_net_7/dense_block_28/dense_35/kernel/Read/ReadVariableOp<cross_net_7/dense_block_28/dense_35/bias/Read/ReadVariableOpKcross_net_7/dense_block_28/batch_normalization_35/gamma/Read/ReadVariableOpJcross_net_7/dense_block_28/batch_normalization_35/beta/Read/ReadVariableOp>cross_net_7/dense_block_29/dense_36/kernel/Read/ReadVariableOp<cross_net_7/dense_block_29/dense_36/bias/Read/ReadVariableOpKcross_net_7/dense_block_29/batch_normalization_36/gamma/Read/ReadVariableOpJcross_net_7/dense_block_29/batch_normalization_36/beta/Read/ReadVariableOp>cross_net_7/dense_block_30/dense_37/kernel/Read/ReadVariableOp<cross_net_7/dense_block_30/dense_37/bias/Read/ReadVariableOpKcross_net_7/dense_block_30/batch_normalization_37/gamma/Read/ReadVariableOpJcross_net_7/dense_block_30/batch_normalization_37/beta/Read/ReadVariableOp>cross_net_7/dense_block_31/dense_38/kernel/Read/ReadVariableOp<cross_net_7/dense_block_31/dense_38/bias/Read/ReadVariableOpKcross_net_7/dense_block_31/batch_normalization_38/gamma/Read/ReadVariableOpJcross_net_7/dense_block_31/batch_normalization_38/beta/Read/ReadVariableOpQcross_net_7/dense_block_28/batch_normalization_35/moving_mean/Read/ReadVariableOpUcross_net_7/dense_block_28/batch_normalization_35/moving_variance/Read/ReadVariableOpQcross_net_7/dense_block_29/batch_normalization_36/moving_mean/Read/ReadVariableOpUcross_net_7/dense_block_29/batch_normalization_36/moving_variance/Read/ReadVariableOpQcross_net_7/dense_block_30/batch_normalization_37/moving_mean/Read/ReadVariableOpUcross_net_7/dense_block_30/batch_normalization_37/moving_variance/Read/ReadVariableOpQcross_net_7/dense_block_31/batch_normalization_38/moving_mean/Read/ReadVariableOpUcross_net_7/dense_block_31/batch_normalization_38/moving_variance/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp6Adam/cross_net_7/dense_39/kernel/m/Read/ReadVariableOp4Adam/cross_net_7/dense_39/bias/m/Read/ReadVariableOpCAdam/cross_net_7/batch_normalization_39/gamma/m/Read/ReadVariableOpBAdam/cross_net_7/batch_normalization_39/beta/m/Read/ReadVariableOp4Adam/cross_net_7/output/kernel/m/Read/ReadVariableOp2Adam/cross_net_7/output/bias/m/Read/ReadVariableOpEAdam/cross_net_7/dense_block_28/dense_35/kernel/m/Read/ReadVariableOpCAdam/cross_net_7/dense_block_28/dense_35/bias/m/Read/ReadVariableOpRAdam/cross_net_7/dense_block_28/batch_normalization_35/gamma/m/Read/ReadVariableOpQAdam/cross_net_7/dense_block_28/batch_normalization_35/beta/m/Read/ReadVariableOpEAdam/cross_net_7/dense_block_29/dense_36/kernel/m/Read/ReadVariableOpCAdam/cross_net_7/dense_block_29/dense_36/bias/m/Read/ReadVariableOpRAdam/cross_net_7/dense_block_29/batch_normalization_36/gamma/m/Read/ReadVariableOpQAdam/cross_net_7/dense_block_29/batch_normalization_36/beta/m/Read/ReadVariableOpEAdam/cross_net_7/dense_block_30/dense_37/kernel/m/Read/ReadVariableOpCAdam/cross_net_7/dense_block_30/dense_37/bias/m/Read/ReadVariableOpRAdam/cross_net_7/dense_block_30/batch_normalization_37/gamma/m/Read/ReadVariableOpQAdam/cross_net_7/dense_block_30/batch_normalization_37/beta/m/Read/ReadVariableOpEAdam/cross_net_7/dense_block_31/dense_38/kernel/m/Read/ReadVariableOpCAdam/cross_net_7/dense_block_31/dense_38/bias/m/Read/ReadVariableOpRAdam/cross_net_7/dense_block_31/batch_normalization_38/gamma/m/Read/ReadVariableOpQAdam/cross_net_7/dense_block_31/batch_normalization_38/beta/m/Read/ReadVariableOp6Adam/cross_net_7/dense_39/kernel/v/Read/ReadVariableOp4Adam/cross_net_7/dense_39/bias/v/Read/ReadVariableOpCAdam/cross_net_7/batch_normalization_39/gamma/v/Read/ReadVariableOpBAdam/cross_net_7/batch_normalization_39/beta/v/Read/ReadVariableOp4Adam/cross_net_7/output/kernel/v/Read/ReadVariableOp2Adam/cross_net_7/output/bias/v/Read/ReadVariableOpEAdam/cross_net_7/dense_block_28/dense_35/kernel/v/Read/ReadVariableOpCAdam/cross_net_7/dense_block_28/dense_35/bias/v/Read/ReadVariableOpRAdam/cross_net_7/dense_block_28/batch_normalization_35/gamma/v/Read/ReadVariableOpQAdam/cross_net_7/dense_block_28/batch_normalization_35/beta/v/Read/ReadVariableOpEAdam/cross_net_7/dense_block_29/dense_36/kernel/v/Read/ReadVariableOpCAdam/cross_net_7/dense_block_29/dense_36/bias/v/Read/ReadVariableOpRAdam/cross_net_7/dense_block_29/batch_normalization_36/gamma/v/Read/ReadVariableOpQAdam/cross_net_7/dense_block_29/batch_normalization_36/beta/v/Read/ReadVariableOpEAdam/cross_net_7/dense_block_30/dense_37/kernel/v/Read/ReadVariableOpCAdam/cross_net_7/dense_block_30/dense_37/bias/v/Read/ReadVariableOpRAdam/cross_net_7/dense_block_30/batch_normalization_37/gamma/v/Read/ReadVariableOpQAdam/cross_net_7/dense_block_30/batch_normalization_37/beta/v/Read/ReadVariableOpEAdam/cross_net_7/dense_block_31/dense_38/kernel/v/Read/ReadVariableOpCAdam/cross_net_7/dense_block_31/dense_38/bias/v/Read/ReadVariableOpRAdam/cross_net_7/dense_block_31/batch_normalization_38/gamma/v/Read/ReadVariableOpQAdam/cross_net_7/dense_block_31/batch_normalization_38/beta/v/Read/ReadVariableOpConst*b
Tin[
Y2W	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_135164
?"
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecross_net_7/dense_39/kernelcross_net_7/dense_39/bias(cross_net_7/batch_normalization_39/gamma'cross_net_7/batch_normalization_39/beta.cross_net_7/batch_normalization_39/moving_mean2cross_net_7/batch_normalization_39/moving_variancecross_net_7/output/kernelcross_net_7/output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate*cross_net_7/dense_block_28/dense_35/kernel(cross_net_7/dense_block_28/dense_35/bias7cross_net_7/dense_block_28/batch_normalization_35/gamma6cross_net_7/dense_block_28/batch_normalization_35/beta*cross_net_7/dense_block_29/dense_36/kernel(cross_net_7/dense_block_29/dense_36/bias7cross_net_7/dense_block_29/batch_normalization_36/gamma6cross_net_7/dense_block_29/batch_normalization_36/beta*cross_net_7/dense_block_30/dense_37/kernel(cross_net_7/dense_block_30/dense_37/bias7cross_net_7/dense_block_30/batch_normalization_37/gamma6cross_net_7/dense_block_30/batch_normalization_37/beta*cross_net_7/dense_block_31/dense_38/kernel(cross_net_7/dense_block_31/dense_38/bias7cross_net_7/dense_block_31/batch_normalization_38/gamma6cross_net_7/dense_block_31/batch_normalization_38/beta=cross_net_7/dense_block_28/batch_normalization_35/moving_meanAcross_net_7/dense_block_28/batch_normalization_35/moving_variance=cross_net_7/dense_block_29/batch_normalization_36/moving_meanAcross_net_7/dense_block_29/batch_normalization_36/moving_variance=cross_net_7/dense_block_30/batch_normalization_37/moving_meanAcross_net_7/dense_block_30/batch_normalization_37/moving_variance=cross_net_7/dense_block_31/batch_normalization_38/moving_meanAcross_net_7/dense_block_31/batch_normalization_38/moving_variancetotalcounttotal_1count_1"Adam/cross_net_7/dense_39/kernel/m Adam/cross_net_7/dense_39/bias/m/Adam/cross_net_7/batch_normalization_39/gamma/m.Adam/cross_net_7/batch_normalization_39/beta/m Adam/cross_net_7/output/kernel/mAdam/cross_net_7/output/bias/m1Adam/cross_net_7/dense_block_28/dense_35/kernel/m/Adam/cross_net_7/dense_block_28/dense_35/bias/m>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/m=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/m1Adam/cross_net_7/dense_block_29/dense_36/kernel/m/Adam/cross_net_7/dense_block_29/dense_36/bias/m>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/m=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/m1Adam/cross_net_7/dense_block_30/dense_37/kernel/m/Adam/cross_net_7/dense_block_30/dense_37/bias/m>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/m=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/m1Adam/cross_net_7/dense_block_31/dense_38/kernel/m/Adam/cross_net_7/dense_block_31/dense_38/bias/m>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/m=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/m"Adam/cross_net_7/dense_39/kernel/v Adam/cross_net_7/dense_39/bias/v/Adam/cross_net_7/batch_normalization_39/gamma/v.Adam/cross_net_7/batch_normalization_39/beta/v Adam/cross_net_7/output/kernel/vAdam/cross_net_7/output/bias/v1Adam/cross_net_7/dense_block_28/dense_35/kernel/v/Adam/cross_net_7/dense_block_28/dense_35/bias/v>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/v=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/v1Adam/cross_net_7/dense_block_29/dense_36/kernel/v/Adam/cross_net_7/dense_block_29/dense_36/bias/v>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/v=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/v1Adam/cross_net_7/dense_block_30/dense_37/kernel/v/Adam/cross_net_7/dense_block_30/dense_37/bias/v>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/v=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/v1Adam/cross_net_7/dense_block_31/dense_38/kernel/v/Adam/cross_net_7/dense_block_31/dense_38/bias/v>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/v=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/v*a
TinZ
X2V*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_135429??
?
?
7__inference_batch_normalization_37_layer_call_fn_134752

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_132121p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_38_layer_call_fn_134819

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_132156o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_132156

inputs*
cast_readvariableop_resource:@,
cast_1_readvariableop_resource:@,
cast_2_readvariableop_resource:@,
cast_3_readvariableop_resource:@
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:@*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:@*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:@*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_35_layer_call_fn_134579

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_131910p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_39_layer_call_fn_134075

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_132285o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
'__inference_output_layer_call_fn_134138

inputs
unknown:O
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_132530o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????O: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????O
 
_user_specified_nameinputs
?
?
/__inference_dense_block_29_layer_call_fn_134277

inputs
unknown:
??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_29_layer_call_and_return_conditional_losses_132390p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_36_layer_call_fn_134659

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_131992p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?4
__inference__traced_save_135164
file_prefix:
6savev2_cross_net_7_dense_39_kernel_read_readvariableop8
4savev2_cross_net_7_dense_39_bias_read_readvariableopG
Csavev2_cross_net_7_batch_normalization_39_gamma_read_readvariableopF
Bsavev2_cross_net_7_batch_normalization_39_beta_read_readvariableopM
Isavev2_cross_net_7_batch_normalization_39_moving_mean_read_readvariableopQ
Msavev2_cross_net_7_batch_normalization_39_moving_variance_read_readvariableop8
4savev2_cross_net_7_output_kernel_read_readvariableop6
2savev2_cross_net_7_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopI
Esavev2_cross_net_7_dense_block_28_dense_35_kernel_read_readvariableopG
Csavev2_cross_net_7_dense_block_28_dense_35_bias_read_readvariableopV
Rsavev2_cross_net_7_dense_block_28_batch_normalization_35_gamma_read_readvariableopU
Qsavev2_cross_net_7_dense_block_28_batch_normalization_35_beta_read_readvariableopI
Esavev2_cross_net_7_dense_block_29_dense_36_kernel_read_readvariableopG
Csavev2_cross_net_7_dense_block_29_dense_36_bias_read_readvariableopV
Rsavev2_cross_net_7_dense_block_29_batch_normalization_36_gamma_read_readvariableopU
Qsavev2_cross_net_7_dense_block_29_batch_normalization_36_beta_read_readvariableopI
Esavev2_cross_net_7_dense_block_30_dense_37_kernel_read_readvariableopG
Csavev2_cross_net_7_dense_block_30_dense_37_bias_read_readvariableopV
Rsavev2_cross_net_7_dense_block_30_batch_normalization_37_gamma_read_readvariableopU
Qsavev2_cross_net_7_dense_block_30_batch_normalization_37_beta_read_readvariableopI
Esavev2_cross_net_7_dense_block_31_dense_38_kernel_read_readvariableopG
Csavev2_cross_net_7_dense_block_31_dense_38_bias_read_readvariableopV
Rsavev2_cross_net_7_dense_block_31_batch_normalization_38_gamma_read_readvariableopU
Qsavev2_cross_net_7_dense_block_31_batch_normalization_38_beta_read_readvariableop\
Xsavev2_cross_net_7_dense_block_28_batch_normalization_35_moving_mean_read_readvariableop`
\savev2_cross_net_7_dense_block_28_batch_normalization_35_moving_variance_read_readvariableop\
Xsavev2_cross_net_7_dense_block_29_batch_normalization_36_moving_mean_read_readvariableop`
\savev2_cross_net_7_dense_block_29_batch_normalization_36_moving_variance_read_readvariableop\
Xsavev2_cross_net_7_dense_block_30_batch_normalization_37_moving_mean_read_readvariableop`
\savev2_cross_net_7_dense_block_30_batch_normalization_37_moving_variance_read_readvariableop\
Xsavev2_cross_net_7_dense_block_31_batch_normalization_38_moving_mean_read_readvariableop`
\savev2_cross_net_7_dense_block_31_batch_normalization_38_moving_variance_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopA
=savev2_adam_cross_net_7_dense_39_kernel_m_read_readvariableop?
;savev2_adam_cross_net_7_dense_39_bias_m_read_readvariableopN
Jsavev2_adam_cross_net_7_batch_normalization_39_gamma_m_read_readvariableopM
Isavev2_adam_cross_net_7_batch_normalization_39_beta_m_read_readvariableop?
;savev2_adam_cross_net_7_output_kernel_m_read_readvariableop=
9savev2_adam_cross_net_7_output_bias_m_read_readvariableopP
Lsavev2_adam_cross_net_7_dense_block_28_dense_35_kernel_m_read_readvariableopN
Jsavev2_adam_cross_net_7_dense_block_28_dense_35_bias_m_read_readvariableop]
Ysavev2_adam_cross_net_7_dense_block_28_batch_normalization_35_gamma_m_read_readvariableop\
Xsavev2_adam_cross_net_7_dense_block_28_batch_normalization_35_beta_m_read_readvariableopP
Lsavev2_adam_cross_net_7_dense_block_29_dense_36_kernel_m_read_readvariableopN
Jsavev2_adam_cross_net_7_dense_block_29_dense_36_bias_m_read_readvariableop]
Ysavev2_adam_cross_net_7_dense_block_29_batch_normalization_36_gamma_m_read_readvariableop\
Xsavev2_adam_cross_net_7_dense_block_29_batch_normalization_36_beta_m_read_readvariableopP
Lsavev2_adam_cross_net_7_dense_block_30_dense_37_kernel_m_read_readvariableopN
Jsavev2_adam_cross_net_7_dense_block_30_dense_37_bias_m_read_readvariableop]
Ysavev2_adam_cross_net_7_dense_block_30_batch_normalization_37_gamma_m_read_readvariableop\
Xsavev2_adam_cross_net_7_dense_block_30_batch_normalization_37_beta_m_read_readvariableopP
Lsavev2_adam_cross_net_7_dense_block_31_dense_38_kernel_m_read_readvariableopN
Jsavev2_adam_cross_net_7_dense_block_31_dense_38_bias_m_read_readvariableop]
Ysavev2_adam_cross_net_7_dense_block_31_batch_normalization_38_gamma_m_read_readvariableop\
Xsavev2_adam_cross_net_7_dense_block_31_batch_normalization_38_beta_m_read_readvariableopA
=savev2_adam_cross_net_7_dense_39_kernel_v_read_readvariableop?
;savev2_adam_cross_net_7_dense_39_bias_v_read_readvariableopN
Jsavev2_adam_cross_net_7_batch_normalization_39_gamma_v_read_readvariableopM
Isavev2_adam_cross_net_7_batch_normalization_39_beta_v_read_readvariableop?
;savev2_adam_cross_net_7_output_kernel_v_read_readvariableop=
9savev2_adam_cross_net_7_output_bias_v_read_readvariableopP
Lsavev2_adam_cross_net_7_dense_block_28_dense_35_kernel_v_read_readvariableopN
Jsavev2_adam_cross_net_7_dense_block_28_dense_35_bias_v_read_readvariableop]
Ysavev2_adam_cross_net_7_dense_block_28_batch_normalization_35_gamma_v_read_readvariableop\
Xsavev2_adam_cross_net_7_dense_block_28_batch_normalization_35_beta_v_read_readvariableopP
Lsavev2_adam_cross_net_7_dense_block_29_dense_36_kernel_v_read_readvariableopN
Jsavev2_adam_cross_net_7_dense_block_29_dense_36_bias_v_read_readvariableop]
Ysavev2_adam_cross_net_7_dense_block_29_batch_normalization_36_gamma_v_read_readvariableop\
Xsavev2_adam_cross_net_7_dense_block_29_batch_normalization_36_beta_v_read_readvariableopP
Lsavev2_adam_cross_net_7_dense_block_30_dense_37_kernel_v_read_readvariableopN
Jsavev2_adam_cross_net_7_dense_block_30_dense_37_bias_v_read_readvariableop]
Ysavev2_adam_cross_net_7_dense_block_30_batch_normalization_37_gamma_v_read_readvariableop\
Xsavev2_adam_cross_net_7_dense_block_30_batch_normalization_37_beta_v_read_readvariableopP
Lsavev2_adam_cross_net_7_dense_block_31_dense_38_kernel_v_read_readvariableopN
Jsavev2_adam_cross_net_7_dense_block_31_dense_38_bias_v_read_readvariableop]
Ysavev2_adam_cross_net_7_dense_block_31_batch_normalization_38_gamma_v_read_readvariableop\
Xsavev2_adam_cross_net_7_dense_block_31_batch_normalization_38_beta_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?%
value?%B?%VB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB'batchn/gamma/.ATTRIBUTES/VARIABLE_VALUEB&batchn/beta/.ATTRIBUTES/VARIABLE_VALUEB-batchn/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB1batchn/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB)softmax/kernel/.ATTRIBUTES/VARIABLE_VALUEB'softmax/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCbatchn/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBbatchn/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEsoftmax/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCsoftmax/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCbatchn/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBbatchn/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEsoftmax/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCsoftmax/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?
value?B?VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?3
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_cross_net_7_dense_39_kernel_read_readvariableop4savev2_cross_net_7_dense_39_bias_read_readvariableopCsavev2_cross_net_7_batch_normalization_39_gamma_read_readvariableopBsavev2_cross_net_7_batch_normalization_39_beta_read_readvariableopIsavev2_cross_net_7_batch_normalization_39_moving_mean_read_readvariableopMsavev2_cross_net_7_batch_normalization_39_moving_variance_read_readvariableop4savev2_cross_net_7_output_kernel_read_readvariableop2savev2_cross_net_7_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopEsavev2_cross_net_7_dense_block_28_dense_35_kernel_read_readvariableopCsavev2_cross_net_7_dense_block_28_dense_35_bias_read_readvariableopRsavev2_cross_net_7_dense_block_28_batch_normalization_35_gamma_read_readvariableopQsavev2_cross_net_7_dense_block_28_batch_normalization_35_beta_read_readvariableopEsavev2_cross_net_7_dense_block_29_dense_36_kernel_read_readvariableopCsavev2_cross_net_7_dense_block_29_dense_36_bias_read_readvariableopRsavev2_cross_net_7_dense_block_29_batch_normalization_36_gamma_read_readvariableopQsavev2_cross_net_7_dense_block_29_batch_normalization_36_beta_read_readvariableopEsavev2_cross_net_7_dense_block_30_dense_37_kernel_read_readvariableopCsavev2_cross_net_7_dense_block_30_dense_37_bias_read_readvariableopRsavev2_cross_net_7_dense_block_30_batch_normalization_37_gamma_read_readvariableopQsavev2_cross_net_7_dense_block_30_batch_normalization_37_beta_read_readvariableopEsavev2_cross_net_7_dense_block_31_dense_38_kernel_read_readvariableopCsavev2_cross_net_7_dense_block_31_dense_38_bias_read_readvariableopRsavev2_cross_net_7_dense_block_31_batch_normalization_38_gamma_read_readvariableopQsavev2_cross_net_7_dense_block_31_batch_normalization_38_beta_read_readvariableopXsavev2_cross_net_7_dense_block_28_batch_normalization_35_moving_mean_read_readvariableop\savev2_cross_net_7_dense_block_28_batch_normalization_35_moving_variance_read_readvariableopXsavev2_cross_net_7_dense_block_29_batch_normalization_36_moving_mean_read_readvariableop\savev2_cross_net_7_dense_block_29_batch_normalization_36_moving_variance_read_readvariableopXsavev2_cross_net_7_dense_block_30_batch_normalization_37_moving_mean_read_readvariableop\savev2_cross_net_7_dense_block_30_batch_normalization_37_moving_variance_read_readvariableopXsavev2_cross_net_7_dense_block_31_batch_normalization_38_moving_mean_read_readvariableop\savev2_cross_net_7_dense_block_31_batch_normalization_38_moving_variance_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop=savev2_adam_cross_net_7_dense_39_kernel_m_read_readvariableop;savev2_adam_cross_net_7_dense_39_bias_m_read_readvariableopJsavev2_adam_cross_net_7_batch_normalization_39_gamma_m_read_readvariableopIsavev2_adam_cross_net_7_batch_normalization_39_beta_m_read_readvariableop;savev2_adam_cross_net_7_output_kernel_m_read_readvariableop9savev2_adam_cross_net_7_output_bias_m_read_readvariableopLsavev2_adam_cross_net_7_dense_block_28_dense_35_kernel_m_read_readvariableopJsavev2_adam_cross_net_7_dense_block_28_dense_35_bias_m_read_readvariableopYsavev2_adam_cross_net_7_dense_block_28_batch_normalization_35_gamma_m_read_readvariableopXsavev2_adam_cross_net_7_dense_block_28_batch_normalization_35_beta_m_read_readvariableopLsavev2_adam_cross_net_7_dense_block_29_dense_36_kernel_m_read_readvariableopJsavev2_adam_cross_net_7_dense_block_29_dense_36_bias_m_read_readvariableopYsavev2_adam_cross_net_7_dense_block_29_batch_normalization_36_gamma_m_read_readvariableopXsavev2_adam_cross_net_7_dense_block_29_batch_normalization_36_beta_m_read_readvariableopLsavev2_adam_cross_net_7_dense_block_30_dense_37_kernel_m_read_readvariableopJsavev2_adam_cross_net_7_dense_block_30_dense_37_bias_m_read_readvariableopYsavev2_adam_cross_net_7_dense_block_30_batch_normalization_37_gamma_m_read_readvariableopXsavev2_adam_cross_net_7_dense_block_30_batch_normalization_37_beta_m_read_readvariableopLsavev2_adam_cross_net_7_dense_block_31_dense_38_kernel_m_read_readvariableopJsavev2_adam_cross_net_7_dense_block_31_dense_38_bias_m_read_readvariableopYsavev2_adam_cross_net_7_dense_block_31_batch_normalization_38_gamma_m_read_readvariableopXsavev2_adam_cross_net_7_dense_block_31_batch_normalization_38_beta_m_read_readvariableop=savev2_adam_cross_net_7_dense_39_kernel_v_read_readvariableop;savev2_adam_cross_net_7_dense_39_bias_v_read_readvariableopJsavev2_adam_cross_net_7_batch_normalization_39_gamma_v_read_readvariableopIsavev2_adam_cross_net_7_batch_normalization_39_beta_v_read_readvariableop;savev2_adam_cross_net_7_output_kernel_v_read_readvariableop9savev2_adam_cross_net_7_output_bias_v_read_readvariableopLsavev2_adam_cross_net_7_dense_block_28_dense_35_kernel_v_read_readvariableopJsavev2_adam_cross_net_7_dense_block_28_dense_35_bias_v_read_readvariableopYsavev2_adam_cross_net_7_dense_block_28_batch_normalization_35_gamma_v_read_readvariableopXsavev2_adam_cross_net_7_dense_block_28_batch_normalization_35_beta_v_read_readvariableopLsavev2_adam_cross_net_7_dense_block_29_dense_36_kernel_v_read_readvariableopJsavev2_adam_cross_net_7_dense_block_29_dense_36_bias_v_read_readvariableopYsavev2_adam_cross_net_7_dense_block_29_batch_normalization_36_gamma_v_read_readvariableopXsavev2_adam_cross_net_7_dense_block_29_batch_normalization_36_beta_v_read_readvariableopLsavev2_adam_cross_net_7_dense_block_30_dense_37_kernel_v_read_readvariableopJsavev2_adam_cross_net_7_dense_block_30_dense_37_bias_v_read_readvariableopYsavev2_adam_cross_net_7_dense_block_30_batch_normalization_37_gamma_v_read_readvariableopXsavev2_adam_cross_net_7_dense_block_30_batch_normalization_37_beta_v_read_readvariableopLsavev2_adam_cross_net_7_dense_block_31_dense_38_kernel_v_read_readvariableopJsavev2_adam_cross_net_7_dense_block_31_dense_38_bias_v_read_readvariableopYsavev2_adam_cross_net_7_dense_block_31_batch_normalization_38_gamma_v_read_readvariableopXsavev2_adam_cross_net_7_dense_block_31_batch_normalization_38_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *d
dtypesZ
X2V	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::::O:: : : : : :	?:?:?:?:
??:?:?:?:
??:?:?:?:	?@:@:@:@:?:?:?:?:?:?:@:@: : : : :::::O::	?:?:?:?:
??:?:?:?:
??:?:?:?:	?@:@:@:@:::::O::	?:?:?:?:
??:?:?:?:
??:?:?:?:	?@:@:@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:O: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:!

_output_shapes	
:?:!

_output_shapes	
:?:! 

_output_shapes	
:?:!!

_output_shapes	
:?:!"

_output_shapes	
:?:!#

_output_shapes	
:?: $

_output_shapes
:@: %

_output_shapes
:@:&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :$* 

_output_shapes

:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
::$. 

_output_shapes

:O: /

_output_shapes
::%0!

_output_shapes
:	?:!1

_output_shapes	
:?:!2

_output_shapes	
:?:!3

_output_shapes	
:?:&4"
 
_output_shapes
:
??:!5

_output_shapes	
:?:!6

_output_shapes	
:?:!7

_output_shapes	
:?:&8"
 
_output_shapes
:
??:!9

_output_shapes	
:?:!:

_output_shapes	
:?:!;

_output_shapes	
:?:%<!

_output_shapes
:	?@: =

_output_shapes
:@: >

_output_shapes
:@: ?

_output_shapes
:@:$@ 

_output_shapes

:: A

_output_shapes
:: B

_output_shapes
:: C

_output_shapes
::$D 

_output_shapes

:O: E

_output_shapes
::%F!

_output_shapes
:	?:!G

_output_shapes	
:?:!H

_output_shapes	
:?:!I

_output_shapes	
:?:&J"
 
_output_shapes
:
??:!K

_output_shapes	
:?:!L

_output_shapes	
:?:!M

_output_shapes	
:?:&N"
 
_output_shapes
:
??:!O

_output_shapes	
:?:!P

_output_shapes	
:?:!Q

_output_shapes	
:?:%R!

_output_shapes
:	?@: S

_output_shapes
:@: T

_output_shapes
:@: U

_output_shapes
:@:V

_output_shapes
: 
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_134612

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????l
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?n
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?>
?
J__inference_dense_block_30_layer_call_and_return_conditional_losses_132768

inputs;
'dense_37_matmul_readvariableop_resource:
??7
(dense_37_biasadd_readvariableop_resource:	?M
>batch_normalization_37_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_37_assignmovingavg_1_readvariableop_resource:	?B
3batch_normalization_37_cast_readvariableop_resource:	?D
5batch_normalization_37_cast_1_readvariableop_resource:	?
identity??&batch_normalization_37/AssignMovingAvg?5batch_normalization_37/AssignMovingAvg/ReadVariableOp?(batch_normalization_37/AssignMovingAvg_1?7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp?*batch_normalization_37/Cast/ReadVariableOp?,batch_normalization_37/Cast_1/ReadVariableOp?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0|
dense_37/MatMulMatMulinputs&dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_30/SeluSeludense_37/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
5batch_normalization_37/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_37/moments/meanMean activation_30/Selu:activations:0>batch_normalization_37/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
+batch_normalization_37/moments/StopGradientStopGradient,batch_normalization_37/moments/mean:output:0*
T0*
_output_shapes
:	??
0batch_normalization_37/moments/SquaredDifferenceSquaredDifference activation_30/Selu:activations:04batch_normalization_37/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
9batch_normalization_37/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_37/moments/varianceMean4batch_normalization_37/moments/SquaredDifference:z:0Bbatch_normalization_37/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
&batch_normalization_37/moments/SqueezeSqueeze,batch_normalization_37/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
(batch_normalization_37/moments/Squeeze_1Squeeze0batch_normalization_37/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 q
,batch_normalization_37/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_37/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_37_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*batch_normalization_37/AssignMovingAvg/subSub=batch_normalization_37/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_37/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
*batch_normalization_37/AssignMovingAvg/mulMul.batch_normalization_37/AssignMovingAvg/sub:z:05batch_normalization_37/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
&batch_normalization_37/AssignMovingAvgAssignSubVariableOp>batch_normalization_37_assignmovingavg_readvariableop_resource.batch_normalization_37/AssignMovingAvg/mul:z:06^batch_normalization_37/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_37/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_37/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_37_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/AssignMovingAvg_1/subSub?batch_normalization_37/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_37/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
,batch_normalization_37/AssignMovingAvg_1/mulMul0batch_normalization_37/AssignMovingAvg_1/sub:z:07batch_normalization_37/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
(batch_normalization_37/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_37_assignmovingavg_1_readvariableop_resource0batch_normalization_37/AssignMovingAvg_1/mul:z:08^batch_normalization_37/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
*batch_normalization_37/Cast/ReadVariableOpReadVariableOp3batch_normalization_37_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_37_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_37/batchnorm/addAddV21batch_normalization_37/moments/Squeeze_1:output:0/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_37/batchnorm/RsqrtRsqrt(batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_37/batchnorm/mulMul*batch_normalization_37/batchnorm/Rsqrt:y:04batch_normalization_37/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_37/batchnorm/mul_1Mul activation_30/Selu:activations:0(batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_37/batchnorm/mul_2Mul/batch_normalization_37/moments/Squeeze:output:0(batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_37/batchnorm/subSub2batch_normalization_37/Cast/ReadVariableOp:value:0*batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_37/batchnorm/add_1AddV2*batch_normalization_37/batchnorm/mul_1:z:0(batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????z
IdentityIdentity*batch_normalization_37/batchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp'^batch_normalization_37/AssignMovingAvg6^batch_normalization_37/AssignMovingAvg/ReadVariableOp)^batch_normalization_37/AssignMovingAvg_18^batch_normalization_37/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_37/Cast/ReadVariableOp-^batch_normalization_37/Cast_1/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2P
&batch_normalization_37/AssignMovingAvg&batch_normalization_37/AssignMovingAvg2n
5batch_normalization_37/AssignMovingAvg/ReadVariableOp5batch_normalization_37/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_37/AssignMovingAvg_1(batch_normalization_37/AssignMovingAvg_12r
7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_37/Cast/ReadVariableOp*batch_normalization_37/Cast/ReadVariableOp2\
,batch_normalization_37/Cast_1/ReadVariableOp,batch_normalization_37/Cast_1/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_cross_net_7_layer_call_fn_133575

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
	unknown_6:
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:	?@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:O

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_cross_net_7_layer_call_and_return_conditional_losses_132537o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_134646

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?l
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?"
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133792

inputsI
6dense_block_28_dense_35_matmul_readvariableop_resource:	?F
7dense_block_28_dense_35_biasadd_readvariableop_resource:	?Q
Bdense_block_28_batch_normalization_35_cast_readvariableop_resource:	?S
Ddense_block_28_batch_normalization_35_cast_1_readvariableop_resource:	?S
Ddense_block_28_batch_normalization_35_cast_2_readvariableop_resource:	?S
Ddense_block_28_batch_normalization_35_cast_3_readvariableop_resource:	?9
'dense_39_matmul_readvariableop_resource:6
(dense_39_biasadd_readvariableop_resource:J
6dense_block_29_dense_36_matmul_readvariableop_resource:
??F
7dense_block_29_dense_36_biasadd_readvariableop_resource:	?Q
Bdense_block_29_batch_normalization_36_cast_readvariableop_resource:	?S
Ddense_block_29_batch_normalization_36_cast_1_readvariableop_resource:	?S
Ddense_block_29_batch_normalization_36_cast_2_readvariableop_resource:	?S
Ddense_block_29_batch_normalization_36_cast_3_readvariableop_resource:	?J
6dense_block_30_dense_37_matmul_readvariableop_resource:
??F
7dense_block_30_dense_37_biasadd_readvariableop_resource:	?Q
Bdense_block_30_batch_normalization_37_cast_readvariableop_resource:	?S
Ddense_block_30_batch_normalization_37_cast_1_readvariableop_resource:	?S
Ddense_block_30_batch_normalization_37_cast_2_readvariableop_resource:	?S
Ddense_block_30_batch_normalization_37_cast_3_readvariableop_resource:	?I
6dense_block_31_dense_38_matmul_readvariableop_resource:	?@E
7dense_block_31_dense_38_biasadd_readvariableop_resource:@P
Bdense_block_31_batch_normalization_38_cast_readvariableop_resource:@R
Ddense_block_31_batch_normalization_38_cast_1_readvariableop_resource:@R
Ddense_block_31_batch_normalization_38_cast_2_readvariableop_resource:@R
Ddense_block_31_batch_normalization_38_cast_3_readvariableop_resource:@A
3batch_normalization_39_cast_readvariableop_resource:C
5batch_normalization_39_cast_1_readvariableop_resource:C
5batch_normalization_39_cast_2_readvariableop_resource:C
5batch_normalization_39_cast_3_readvariableop_resource:7
%output_matmul_readvariableop_resource:O4
&output_biasadd_readvariableop_resource:
identity??*batch_normalization_39/Cast/ReadVariableOp?,batch_normalization_39/Cast_1/ReadVariableOp?,batch_normalization_39/Cast_2/ReadVariableOp?,batch_normalization_39/Cast_3/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?!dense_39/BiasAdd_1/ReadVariableOp?!dense_39/BiasAdd_2/ReadVariableOp?!dense_39/BiasAdd_3/ReadVariableOp?dense_39/MatMul/ReadVariableOp? dense_39/MatMul_1/ReadVariableOp? dense_39/MatMul_2/ReadVariableOp? dense_39/MatMul_3/ReadVariableOp?9dense_block_28/batch_normalization_35/Cast/ReadVariableOp?;dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp?;dense_block_28/batch_normalization_35/Cast_2/ReadVariableOp?;dense_block_28/batch_normalization_35/Cast_3/ReadVariableOp?.dense_block_28/dense_35/BiasAdd/ReadVariableOp?-dense_block_28/dense_35/MatMul/ReadVariableOp?9dense_block_29/batch_normalization_36/Cast/ReadVariableOp?;dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp?;dense_block_29/batch_normalization_36/Cast_2/ReadVariableOp?;dense_block_29/batch_normalization_36/Cast_3/ReadVariableOp?.dense_block_29/dense_36/BiasAdd/ReadVariableOp?-dense_block_29/dense_36/MatMul/ReadVariableOp?9dense_block_30/batch_normalization_37/Cast/ReadVariableOp?;dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp?;dense_block_30/batch_normalization_37/Cast_2/ReadVariableOp?;dense_block_30/batch_normalization_37/Cast_3/ReadVariableOp?.dense_block_30/dense_37/BiasAdd/ReadVariableOp?-dense_block_30/dense_37/MatMul/ReadVariableOp?9dense_block_31/batch_normalization_38/Cast/ReadVariableOp?;dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp?;dense_block_31/batch_normalization_38/Cast_2/ReadVariableOp?;dense_block_31/batch_normalization_38/Cast_3/ReadVariableOp?.dense_block_31/dense_38/BiasAdd/ReadVariableOp?-dense_block_31/dense_38/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?
-dense_block_28/dense_35/MatMul/ReadVariableOpReadVariableOp6dense_block_28_dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_block_28/dense_35/MatMulMatMulinputs5dense_block_28/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.dense_block_28/dense_35/BiasAdd/ReadVariableOpReadVariableOp7dense_block_28_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_block_28/dense_35/BiasAddBiasAdd(dense_block_28/dense_35/MatMul:product:06dense_block_28/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!dense_block_28/activation_28/SeluSelu(dense_block_28/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
9dense_block_28/batch_normalization_35/Cast/ReadVariableOpReadVariableOpBdense_block_28_batch_normalization_35_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_28/batch_normalization_35/Cast_1/ReadVariableOpReadVariableOpDdense_block_28_batch_normalization_35_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_28/batch_normalization_35/Cast_2/ReadVariableOpReadVariableOpDdense_block_28_batch_normalization_35_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_28/batch_normalization_35/Cast_3/ReadVariableOpReadVariableOpDdense_block_28_batch_normalization_35_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0z
5dense_block_28/batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3dense_block_28/batch_normalization_35/batchnorm/addAddV2Cdense_block_28/batch_normalization_35/Cast_1/ReadVariableOp:value:0>dense_block_28/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
5dense_block_28/batch_normalization_35/batchnorm/RsqrtRsqrt7dense_block_28/batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3dense_block_28/batch_normalization_35/batchnorm/mulMul9dense_block_28/batch_normalization_35/batchnorm/Rsqrt:y:0Cdense_block_28/batch_normalization_35/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
5dense_block_28/batch_normalization_35/batchnorm/mul_1Mul/dense_block_28/activation_28/Selu:activations:07dense_block_28/batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
5dense_block_28/batch_normalization_35/batchnorm/mul_2MulAdense_block_28/batch_normalization_35/Cast/ReadVariableOp:value:07dense_block_28/batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
3dense_block_28/batch_normalization_35/batchnorm/subSubCdense_block_28/batch_normalization_35/Cast_2/ReadVariableOp:value:09dense_block_28/batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
5dense_block_28/batch_normalization_35/batchnorm/add_1AddV29dense_block_28/batch_normalization_35/batchnorm/mul_1:z:07dense_block_28/batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
!dense_block_28/dropout_7/IdentityIdentity9dense_block_28/batch_normalization_35/batchnorm/add_1:z:0*
T0*(
_output_shapes
:???????????
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0{
dense_39/MatMulMatMulinputs&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
mulMulinputsdense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????O
addAddV2mul:z:0inputs*
T0*'
_output_shapes
:??????????
-dense_block_29/dense_36/MatMul/ReadVariableOpReadVariableOp6dense_block_29_dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_block_29/dense_36/MatMulMatMul*dense_block_28/dropout_7/Identity:output:05dense_block_29/dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.dense_block_29/dense_36/BiasAdd/ReadVariableOpReadVariableOp7dense_block_29_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_block_29/dense_36/BiasAddBiasAdd(dense_block_29/dense_36/MatMul:product:06dense_block_29/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!dense_block_29/activation_29/SeluSelu(dense_block_29/dense_36/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
9dense_block_29/batch_normalization_36/Cast/ReadVariableOpReadVariableOpBdense_block_29_batch_normalization_36_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_29/batch_normalization_36/Cast_1/ReadVariableOpReadVariableOpDdense_block_29_batch_normalization_36_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_29/batch_normalization_36/Cast_2/ReadVariableOpReadVariableOpDdense_block_29_batch_normalization_36_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_29/batch_normalization_36/Cast_3/ReadVariableOpReadVariableOpDdense_block_29_batch_normalization_36_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0z
5dense_block_29/batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3dense_block_29/batch_normalization_36/batchnorm/addAddV2Cdense_block_29/batch_normalization_36/Cast_1/ReadVariableOp:value:0>dense_block_29/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
5dense_block_29/batch_normalization_36/batchnorm/RsqrtRsqrt7dense_block_29/batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3dense_block_29/batch_normalization_36/batchnorm/mulMul9dense_block_29/batch_normalization_36/batchnorm/Rsqrt:y:0Cdense_block_29/batch_normalization_36/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
5dense_block_29/batch_normalization_36/batchnorm/mul_1Mul/dense_block_29/activation_29/Selu:activations:07dense_block_29/batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
5dense_block_29/batch_normalization_36/batchnorm/mul_2MulAdense_block_29/batch_normalization_36/Cast/ReadVariableOp:value:07dense_block_29/batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
3dense_block_29/batch_normalization_36/batchnorm/subSubCdense_block_29/batch_normalization_36/Cast_2/ReadVariableOp:value:09dense_block_29/batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
5dense_block_29/batch_normalization_36/batchnorm/add_1AddV29dense_block_29/batch_normalization_36/batchnorm/mul_1:z:07dense_block_29/batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
 dense_39/MatMul_1/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_39/MatMul_1MatMuladd:z:0(dense_39/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_39/BiasAdd_1/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_39/BiasAdd_1BiasAdddense_39/MatMul_1:product:0)dense_39/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
mul_1Mulinputsdense_39/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????T
add_1AddV2	mul_1:z:0add:z:0*
T0*'
_output_shapes
:??????????
-dense_block_30/dense_37/MatMul/ReadVariableOpReadVariableOp6dense_block_30_dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_block_30/dense_37/MatMulMatMul9dense_block_29/batch_normalization_36/batchnorm/add_1:z:05dense_block_30/dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.dense_block_30/dense_37/BiasAdd/ReadVariableOpReadVariableOp7dense_block_30_dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_block_30/dense_37/BiasAddBiasAdd(dense_block_30/dense_37/MatMul:product:06dense_block_30/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!dense_block_30/activation_30/SeluSelu(dense_block_30/dense_37/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
9dense_block_30/batch_normalization_37/Cast/ReadVariableOpReadVariableOpBdense_block_30_batch_normalization_37_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_30/batch_normalization_37/Cast_1/ReadVariableOpReadVariableOpDdense_block_30_batch_normalization_37_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_30/batch_normalization_37/Cast_2/ReadVariableOpReadVariableOpDdense_block_30_batch_normalization_37_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_30/batch_normalization_37/Cast_3/ReadVariableOpReadVariableOpDdense_block_30_batch_normalization_37_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0z
5dense_block_30/batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3dense_block_30/batch_normalization_37/batchnorm/addAddV2Cdense_block_30/batch_normalization_37/Cast_1/ReadVariableOp:value:0>dense_block_30/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
5dense_block_30/batch_normalization_37/batchnorm/RsqrtRsqrt7dense_block_30/batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3dense_block_30/batch_normalization_37/batchnorm/mulMul9dense_block_30/batch_normalization_37/batchnorm/Rsqrt:y:0Cdense_block_30/batch_normalization_37/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
5dense_block_30/batch_normalization_37/batchnorm/mul_1Mul/dense_block_30/activation_30/Selu:activations:07dense_block_30/batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
5dense_block_30/batch_normalization_37/batchnorm/mul_2MulAdense_block_30/batch_normalization_37/Cast/ReadVariableOp:value:07dense_block_30/batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
3dense_block_30/batch_normalization_37/batchnorm/subSubCdense_block_30/batch_normalization_37/Cast_2/ReadVariableOp:value:09dense_block_30/batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
5dense_block_30/batch_normalization_37/batchnorm/add_1AddV29dense_block_30/batch_normalization_37/batchnorm/mul_1:z:07dense_block_30/batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
 dense_39/MatMul_2/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_39/MatMul_2MatMul	add_1:z:0(dense_39/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_39/BiasAdd_2/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_39/BiasAdd_2BiasAdddense_39/MatMul_2:product:0)dense_39/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
mul_2Mulinputsdense_39/BiasAdd_2:output:0*
T0*'
_output_shapes
:?????????V
add_2AddV2	mul_2:z:0	add_1:z:0*
T0*'
_output_shapes
:??????????
-dense_block_31/dense_38/MatMul/ReadVariableOpReadVariableOp6dense_block_31_dense_38_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_block_31/dense_38/MatMulMatMul9dense_block_30/batch_normalization_37/batchnorm/add_1:z:05dense_block_31/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.dense_block_31/dense_38/BiasAdd/ReadVariableOpReadVariableOp7dense_block_31_dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_block_31/dense_38/BiasAddBiasAdd(dense_block_31/dense_38/MatMul:product:06dense_block_31/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
!dense_block_31/activation_31/SeluSelu(dense_block_31/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
9dense_block_31/batch_normalization_38/Cast/ReadVariableOpReadVariableOpBdense_block_31_batch_normalization_38_cast_readvariableop_resource*
_output_shapes
:@*
dtype0?
;dense_block_31/batch_normalization_38/Cast_1/ReadVariableOpReadVariableOpDdense_block_31_batch_normalization_38_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0?
;dense_block_31/batch_normalization_38/Cast_2/ReadVariableOpReadVariableOpDdense_block_31_batch_normalization_38_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0?
;dense_block_31/batch_normalization_38/Cast_3/ReadVariableOpReadVariableOpDdense_block_31_batch_normalization_38_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0z
5dense_block_31/batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3dense_block_31/batch_normalization_38/batchnorm/addAddV2Cdense_block_31/batch_normalization_38/Cast_1/ReadVariableOp:value:0>dense_block_31/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
:@?
5dense_block_31/batch_normalization_38/batchnorm/RsqrtRsqrt7dense_block_31/batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
:@?
3dense_block_31/batch_normalization_38/batchnorm/mulMul9dense_block_31/batch_normalization_38/batchnorm/Rsqrt:y:0Cdense_block_31/batch_normalization_38/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
5dense_block_31/batch_normalization_38/batchnorm/mul_1Mul/dense_block_31/activation_31/Selu:activations:07dense_block_31/batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@?
5dense_block_31/batch_normalization_38/batchnorm/mul_2MulAdense_block_31/batch_normalization_38/Cast/ReadVariableOp:value:07dense_block_31/batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
:@?
3dense_block_31/batch_normalization_38/batchnorm/subSubCdense_block_31/batch_normalization_38/Cast_2/ReadVariableOp:value:09dense_block_31/batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@?
5dense_block_31/batch_normalization_38/batchnorm/add_1AddV29dense_block_31/batch_normalization_38/batchnorm/mul_1:z:07dense_block_31/batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@?
 dense_39/MatMul_3/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_39/MatMul_3MatMul	add_2:z:0(dense_39/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_39/BiasAdd_3/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_39/BiasAdd_3BiasAdddense_39/MatMul_3:product:0)dense_39/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
mul_3Mulinputsdense_39/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????V
add_3AddV2	mul_3:z:0	add_2:z:0*
T0*'
_output_shapes
:??????????
*batch_normalization_39/Cast/ReadVariableOpReadVariableOp3batch_normalization_39_cast_readvariableop_resource*
_output_shapes
:*
dtype0?
,batch_normalization_39/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_39_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0?
,batch_normalization_39/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_39_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0?
,batch_normalization_39/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_39_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_39/batchnorm/addAddV24batch_normalization_39/Cast_1/ReadVariableOp:value:0/batch_normalization_39/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_39/batchnorm/RsqrtRsqrt(batch_normalization_39/batchnorm/add:z:0*
T0*
_output_shapes
:?
$batch_normalization_39/batchnorm/mulMul*batch_normalization_39/batchnorm/Rsqrt:y:04batch_normalization_39/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:?
&batch_normalization_39/batchnorm/mul_1Mul	add_3:z:0(batch_normalization_39/batchnorm/mul:z:0*
T0*'
_output_shapes
:??????????
&batch_normalization_39/batchnorm/mul_2Mul2batch_normalization_39/Cast/ReadVariableOp:value:0(batch_normalization_39/batchnorm/mul:z:0*
T0*
_output_shapes
:?
$batch_normalization_39/batchnorm/subSub4batch_normalization_39/Cast_2/ReadVariableOp:value:0*batch_normalization_39/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
&batch_normalization_39/batchnorm/add_1AddV2*batch_normalization_39/batchnorm/mul_1:z:0(batch_normalization_39/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????[
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_7/concatConcatV29dense_block_31/batch_normalization_38/batchnorm/add_1:z:0*batch_normalization_39/batchnorm/add_1:z:0"concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????O?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:O*
dtype0?
output/MatMulMatMulconcatenate_7/concat:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp+^batch_normalization_39/Cast/ReadVariableOp-^batch_normalization_39/Cast_1/ReadVariableOp-^batch_normalization_39/Cast_2/ReadVariableOp-^batch_normalization_39/Cast_3/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp"^dense_39/BiasAdd_1/ReadVariableOp"^dense_39/BiasAdd_2/ReadVariableOp"^dense_39/BiasAdd_3/ReadVariableOp^dense_39/MatMul/ReadVariableOp!^dense_39/MatMul_1/ReadVariableOp!^dense_39/MatMul_2/ReadVariableOp!^dense_39/MatMul_3/ReadVariableOp:^dense_block_28/batch_normalization_35/Cast/ReadVariableOp<^dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp<^dense_block_28/batch_normalization_35/Cast_2/ReadVariableOp<^dense_block_28/batch_normalization_35/Cast_3/ReadVariableOp/^dense_block_28/dense_35/BiasAdd/ReadVariableOp.^dense_block_28/dense_35/MatMul/ReadVariableOp:^dense_block_29/batch_normalization_36/Cast/ReadVariableOp<^dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp<^dense_block_29/batch_normalization_36/Cast_2/ReadVariableOp<^dense_block_29/batch_normalization_36/Cast_3/ReadVariableOp/^dense_block_29/dense_36/BiasAdd/ReadVariableOp.^dense_block_29/dense_36/MatMul/ReadVariableOp:^dense_block_30/batch_normalization_37/Cast/ReadVariableOp<^dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp<^dense_block_30/batch_normalization_37/Cast_2/ReadVariableOp<^dense_block_30/batch_normalization_37/Cast_3/ReadVariableOp/^dense_block_30/dense_37/BiasAdd/ReadVariableOp.^dense_block_30/dense_37/MatMul/ReadVariableOp:^dense_block_31/batch_normalization_38/Cast/ReadVariableOp<^dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp<^dense_block_31/batch_normalization_38/Cast_2/ReadVariableOp<^dense_block_31/batch_normalization_38/Cast_3/ReadVariableOp/^dense_block_31/dense_38/BiasAdd/ReadVariableOp.^dense_block_31/dense_38/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*batch_normalization_39/Cast/ReadVariableOp*batch_normalization_39/Cast/ReadVariableOp2\
,batch_normalization_39/Cast_1/ReadVariableOp,batch_normalization_39/Cast_1/ReadVariableOp2\
,batch_normalization_39/Cast_2/ReadVariableOp,batch_normalization_39/Cast_2/ReadVariableOp2\
,batch_normalization_39/Cast_3/ReadVariableOp,batch_normalization_39/Cast_3/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2F
!dense_39/BiasAdd_1/ReadVariableOp!dense_39/BiasAdd_1/ReadVariableOp2F
!dense_39/BiasAdd_2/ReadVariableOp!dense_39/BiasAdd_2/ReadVariableOp2F
!dense_39/BiasAdd_3/ReadVariableOp!dense_39/BiasAdd_3/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2D
 dense_39/MatMul_1/ReadVariableOp dense_39/MatMul_1/ReadVariableOp2D
 dense_39/MatMul_2/ReadVariableOp dense_39/MatMul_2/ReadVariableOp2D
 dense_39/MatMul_3/ReadVariableOp dense_39/MatMul_3/ReadVariableOp2v
9dense_block_28/batch_normalization_35/Cast/ReadVariableOp9dense_block_28/batch_normalization_35/Cast/ReadVariableOp2z
;dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp;dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp2z
;dense_block_28/batch_normalization_35/Cast_2/ReadVariableOp;dense_block_28/batch_normalization_35/Cast_2/ReadVariableOp2z
;dense_block_28/batch_normalization_35/Cast_3/ReadVariableOp;dense_block_28/batch_normalization_35/Cast_3/ReadVariableOp2`
.dense_block_28/dense_35/BiasAdd/ReadVariableOp.dense_block_28/dense_35/BiasAdd/ReadVariableOp2^
-dense_block_28/dense_35/MatMul/ReadVariableOp-dense_block_28/dense_35/MatMul/ReadVariableOp2v
9dense_block_29/batch_normalization_36/Cast/ReadVariableOp9dense_block_29/batch_normalization_36/Cast/ReadVariableOp2z
;dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp;dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp2z
;dense_block_29/batch_normalization_36/Cast_2/ReadVariableOp;dense_block_29/batch_normalization_36/Cast_2/ReadVariableOp2z
;dense_block_29/batch_normalization_36/Cast_3/ReadVariableOp;dense_block_29/batch_normalization_36/Cast_3/ReadVariableOp2`
.dense_block_29/dense_36/BiasAdd/ReadVariableOp.dense_block_29/dense_36/BiasAdd/ReadVariableOp2^
-dense_block_29/dense_36/MatMul/ReadVariableOp-dense_block_29/dense_36/MatMul/ReadVariableOp2v
9dense_block_30/batch_normalization_37/Cast/ReadVariableOp9dense_block_30/batch_normalization_37/Cast/ReadVariableOp2z
;dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp;dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp2z
;dense_block_30/batch_normalization_37/Cast_2/ReadVariableOp;dense_block_30/batch_normalization_37/Cast_2/ReadVariableOp2z
;dense_block_30/batch_normalization_37/Cast_3/ReadVariableOp;dense_block_30/batch_normalization_37/Cast_3/ReadVariableOp2`
.dense_block_30/dense_37/BiasAdd/ReadVariableOp.dense_block_30/dense_37/BiasAdd/ReadVariableOp2^
-dense_block_30/dense_37/MatMul/ReadVariableOp-dense_block_30/dense_37/MatMul/ReadVariableOp2v
9dense_block_31/batch_normalization_38/Cast/ReadVariableOp9dense_block_31/batch_normalization_38/Cast/ReadVariableOp2z
;dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp;dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp2z
;dense_block_31/batch_normalization_38/Cast_2/ReadVariableOp;dense_block_31/batch_normalization_38/Cast_2/ReadVariableOp2z
;dense_block_31/batch_normalization_38/Cast_3/ReadVariableOp;dense_block_31/batch_normalization_38/Cast_3/ReadVariableOp2`
.dense_block_31/dense_38/BiasAdd/ReadVariableOp.dense_block_31/dense_38/BiasAdd/ReadVariableOp2^
-dense_block_31/dense_38/MatMul/ReadVariableOp-dense_block_31/dense_38/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_39_layer_call_and_return_conditional_losses_134036

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
J__inference_dense_block_31_layer_call_and_return_conditional_losses_132692

inputs:
'dense_38_matmul_readvariableop_resource:	?@6
(dense_38_biasadd_readvariableop_resource:@L
>batch_normalization_38_assignmovingavg_readvariableop_resource:@N
@batch_normalization_38_assignmovingavg_1_readvariableop_resource:@A
3batch_normalization_38_cast_readvariableop_resource:@C
5batch_normalization_38_cast_1_readvariableop_resource:@
identity??&batch_normalization_38/AssignMovingAvg?5batch_normalization_38/AssignMovingAvg/ReadVariableOp?(batch_normalization_38/AssignMovingAvg_1?7batch_normalization_38/AssignMovingAvg_1/ReadVariableOp?*batch_normalization_38/Cast/ReadVariableOp?,batch_normalization_38/Cast_1/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0{
dense_38/MatMulMatMulinputs&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@g
activation_31/SeluSeludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@
5batch_normalization_38/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_38/moments/meanMean activation_31/Selu:activations:0>batch_normalization_38/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(?
+batch_normalization_38/moments/StopGradientStopGradient,batch_normalization_38/moments/mean:output:0*
T0*
_output_shapes

:@?
0batch_normalization_38/moments/SquaredDifferenceSquaredDifference activation_31/Selu:activations:04batch_normalization_38/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@?
9batch_normalization_38/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_38/moments/varianceMean4batch_normalization_38/moments/SquaredDifference:z:0Bbatch_normalization_38/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(?
&batch_normalization_38/moments/SqueezeSqueeze,batch_normalization_38/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 ?
(batch_normalization_38/moments/Squeeze_1Squeeze0batch_normalization_38/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 q
,batch_normalization_38/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_38/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_38_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0?
*batch_normalization_38/AssignMovingAvg/subSub=batch_normalization_38/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_38/moments/Squeeze:output:0*
T0*
_output_shapes
:@?
*batch_normalization_38/AssignMovingAvg/mulMul.batch_normalization_38/AssignMovingAvg/sub:z:05batch_normalization_38/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@?
&batch_normalization_38/AssignMovingAvgAssignSubVariableOp>batch_normalization_38_assignmovingavg_readvariableop_resource.batch_normalization_38/AssignMovingAvg/mul:z:06^batch_normalization_38/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_38/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_38/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_38_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/AssignMovingAvg_1/subSub?batch_normalization_38/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_38/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@?
,batch_normalization_38/AssignMovingAvg_1/mulMul0batch_normalization_38/AssignMovingAvg_1/sub:z:07batch_normalization_38/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@?
(batch_normalization_38/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_38_assignmovingavg_1_readvariableop_resource0batch_normalization_38/AssignMovingAvg_1/mul:z:08^batch_normalization_38/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
*batch_normalization_38/Cast/ReadVariableOpReadVariableOp3batch_normalization_38_cast_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_38_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0k
&batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_38/batchnorm/addAddV21batch_normalization_38/moments/Squeeze_1:output:0/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
:@~
&batch_normalization_38/batchnorm/RsqrtRsqrt(batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
:@?
$batch_normalization_38/batchnorm/mulMul*batch_normalization_38/batchnorm/Rsqrt:y:04batch_normalization_38/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
&batch_normalization_38/batchnorm/mul_1Mul activation_31/Selu:activations:0(batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@?
&batch_normalization_38/batchnorm/mul_2Mul/batch_normalization_38/moments/Squeeze:output:0(batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
:@?
$batch_normalization_38/batchnorm/subSub2batch_normalization_38/Cast/ReadVariableOp:value:0*batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@?
&batch_normalization_38/batchnorm/add_1AddV2*batch_normalization_38/batchnorm/mul_1:z:0(batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@y
IdentityIdentity*batch_normalization_38/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp'^batch_normalization_38/AssignMovingAvg6^batch_normalization_38/AssignMovingAvg/ReadVariableOp)^batch_normalization_38/AssignMovingAvg_18^batch_normalization_38/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_38/Cast/ReadVariableOp-^batch_normalization_38/Cast_1/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2P
&batch_normalization_38/AssignMovingAvg&batch_normalization_38/AssignMovingAvg2n
5batch_normalization_38/AssignMovingAvg/ReadVariableOp5batch_normalization_38/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_38/AssignMovingAvg_1(batch_normalization_38/AssignMovingAvg_12r
7batch_normalization_38/AssignMovingAvg_1/ReadVariableOp7batch_normalization_38/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_38/Cast/ReadVariableOp*batch_normalization_38/Cast/ReadVariableOp2\
,batch_normalization_38/Cast_1/ReadVariableOp,batch_normalization_38/Cast_1/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?F
?
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133429
input_1(
dense_block_28_133339:	?$
dense_block_28_133341:	?$
dense_block_28_133343:	?$
dense_block_28_133345:	?$
dense_block_28_133347:	?$
dense_block_28_133349:	?!
dense_39_133352:
dense_39_133354:)
dense_block_29_133359:
??$
dense_block_29_133361:	?$
dense_block_29_133363:	?$
dense_block_29_133365:	?$
dense_block_29_133367:	?$
dense_block_29_133369:	?)
dense_block_30_133377:
??$
dense_block_30_133379:	?$
dense_block_30_133381:	?$
dense_block_30_133383:	?$
dense_block_30_133385:	?$
dense_block_30_133387:	?(
dense_block_31_133395:	?@#
dense_block_31_133397:@#
dense_block_31_133399:@#
dense_block_31_133401:@#
dense_block_31_133403:@#
dense_block_31_133405:@+
batch_normalization_39_133413:+
batch_normalization_39_133415:+
batch_normalization_39_133417:+
batch_normalization_39_133419:
output_133423:O
output_133425:
identity??.batch_normalization_39/StatefulPartitionedCall? dense_39/StatefulPartitionedCall?"dense_39/StatefulPartitionedCall_1?"dense_39/StatefulPartitionedCall_2?"dense_39/StatefulPartitionedCall_3?&dense_block_28/StatefulPartitionedCall?&dense_block_29/StatefulPartitionedCall?&dense_block_30/StatefulPartitionedCall?&dense_block_31/StatefulPartitionedCall?output/StatefulPartitionedCall?
&dense_block_28/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_block_28_133339dense_block_28_133341dense_block_28_133343dense_block_28_133345dense_block_28_133347dense_block_28_133349*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_28_layer_call_and_return_conditional_losses_132928?
 dense_39/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_39_133352dense_39_133354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355p
mulMulinput_1)dense_39/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????P
addAddV2mul:z:0input_1*
T0*'
_output_shapes
:??????????
&dense_block_29/StatefulPartitionedCallStatefulPartitionedCall/dense_block_28/StatefulPartitionedCall:output:0dense_block_29_133359dense_block_29_133361dense_block_29_133363dense_block_29_133365dense_block_29_133367dense_block_29_133369*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_29_layer_call_and_return_conditional_losses_132844?
"dense_39/StatefulPartitionedCall_1StatefulPartitionedCalladd:z:0dense_39_133352dense_39_133354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355t
mul_1Mulinput_1+dense_39/StatefulPartitionedCall_1:output:0*
T0*'
_output_shapes
:?????????T
add_1AddV2	mul_1:z:0add:z:0*
T0*'
_output_shapes
:??????????
&dense_block_30/StatefulPartitionedCallStatefulPartitionedCall/dense_block_29/StatefulPartitionedCall:output:0dense_block_30_133377dense_block_30_133379dense_block_30_133381dense_block_30_133383dense_block_30_133385dense_block_30_133387*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_30_layer_call_and_return_conditional_losses_132768?
"dense_39/StatefulPartitionedCall_2StatefulPartitionedCall	add_1:z:0dense_39_133352dense_39_133354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355t
mul_2Mulinput_1+dense_39/StatefulPartitionedCall_2:output:0*
T0*'
_output_shapes
:?????????V
add_2AddV2	mul_2:z:0	add_1:z:0*
T0*'
_output_shapes
:??????????
&dense_block_31/StatefulPartitionedCallStatefulPartitionedCall/dense_block_30/StatefulPartitionedCall:output:0dense_block_31_133395dense_block_31_133397dense_block_31_133399dense_block_31_133401dense_block_31_133403dense_block_31_133405*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_31_layer_call_and_return_conditional_losses_132692?
"dense_39/StatefulPartitionedCall_3StatefulPartitionedCall	add_2:z:0dense_39_133352dense_39_133354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355t
mul_3Mulinput_1+dense_39/StatefulPartitionedCall_3:output:0*
T0*'
_output_shapes
:?????????V
add_3AddV2	mul_3:z:0	add_2:z:0*
T0*'
_output_shapes
:??????????
.batch_normalization_39/StatefulPartitionedCallStatefulPartitionedCall	add_3:z:0batch_normalization_39_133413batch_normalization_39_133415batch_normalization_39_133417batch_normalization_39_133419*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_132285?
concatenate_7/PartitionedCallPartitionedCall/dense_block_31/StatefulPartitionedCall:output:07batch_normalization_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????O* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_7_layer_call_and_return_conditional_losses_132517?
output/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0output_133423output_133425*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_132530v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_39/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall#^dense_39/StatefulPartitionedCall_1#^dense_39/StatefulPartitionedCall_2#^dense_39/StatefulPartitionedCall_3'^dense_block_28/StatefulPartitionedCall'^dense_block_29/StatefulPartitionedCall'^dense_block_30/StatefulPartitionedCall'^dense_block_31/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_39/StatefulPartitionedCall.batch_normalization_39/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2H
"dense_39/StatefulPartitionedCall_1"dense_39/StatefulPartitionedCall_12H
"dense_39/StatefulPartitionedCall_2"dense_39/StatefulPartitionedCall_22H
"dense_39/StatefulPartitionedCall_3"dense_39/StatefulPartitionedCall_32P
&dense_block_28/StatefulPartitionedCall&dense_block_28/StatefulPartitionedCall2P
&dense_block_29/StatefulPartitionedCall&dense_block_29/StatefulPartitionedCall2P
&dense_block_30/StatefulPartitionedCall&dense_block_30/StatefulPartitionedCall2P
&dense_block_31/StatefulPartitionedCall&dense_block_31/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?$
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_132039

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?l
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?F
?
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133107

inputs(
dense_block_28_133017:	?$
dense_block_28_133019:	?$
dense_block_28_133021:	?$
dense_block_28_133023:	?$
dense_block_28_133025:	?$
dense_block_28_133027:	?!
dense_39_133030:
dense_39_133032:)
dense_block_29_133037:
??$
dense_block_29_133039:	?$
dense_block_29_133041:	?$
dense_block_29_133043:	?$
dense_block_29_133045:	?$
dense_block_29_133047:	?)
dense_block_30_133055:
??$
dense_block_30_133057:	?$
dense_block_30_133059:	?$
dense_block_30_133061:	?$
dense_block_30_133063:	?$
dense_block_30_133065:	?(
dense_block_31_133073:	?@#
dense_block_31_133075:@#
dense_block_31_133077:@#
dense_block_31_133079:@#
dense_block_31_133081:@#
dense_block_31_133083:@+
batch_normalization_39_133091:+
batch_normalization_39_133093:+
batch_normalization_39_133095:+
batch_normalization_39_133097:
output_133101:O
output_133103:
identity??.batch_normalization_39/StatefulPartitionedCall? dense_39/StatefulPartitionedCall?"dense_39/StatefulPartitionedCall_1?"dense_39/StatefulPartitionedCall_2?"dense_39/StatefulPartitionedCall_3?&dense_block_28/StatefulPartitionedCall?&dense_block_29/StatefulPartitionedCall?&dense_block_30/StatefulPartitionedCall?&dense_block_31/StatefulPartitionedCall?output/StatefulPartitionedCall?
&dense_block_28/StatefulPartitionedCallStatefulPartitionedCallinputsdense_block_28_133017dense_block_28_133019dense_block_28_133021dense_block_28_133023dense_block_28_133025dense_block_28_133027*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_28_layer_call_and_return_conditional_losses_132928?
 dense_39/StatefulPartitionedCallStatefulPartitionedCallinputsdense_39_133030dense_39_133032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355o
mulMulinputs)dense_39/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????O
addAddV2mul:z:0inputs*
T0*'
_output_shapes
:??????????
&dense_block_29/StatefulPartitionedCallStatefulPartitionedCall/dense_block_28/StatefulPartitionedCall:output:0dense_block_29_133037dense_block_29_133039dense_block_29_133041dense_block_29_133043dense_block_29_133045dense_block_29_133047*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_29_layer_call_and_return_conditional_losses_132844?
"dense_39/StatefulPartitionedCall_1StatefulPartitionedCalladd:z:0dense_39_133030dense_39_133032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355s
mul_1Mulinputs+dense_39/StatefulPartitionedCall_1:output:0*
T0*'
_output_shapes
:?????????T
add_1AddV2	mul_1:z:0add:z:0*
T0*'
_output_shapes
:??????????
&dense_block_30/StatefulPartitionedCallStatefulPartitionedCall/dense_block_29/StatefulPartitionedCall:output:0dense_block_30_133055dense_block_30_133057dense_block_30_133059dense_block_30_133061dense_block_30_133063dense_block_30_133065*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_30_layer_call_and_return_conditional_losses_132768?
"dense_39/StatefulPartitionedCall_2StatefulPartitionedCall	add_1:z:0dense_39_133030dense_39_133032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355s
mul_2Mulinputs+dense_39/StatefulPartitionedCall_2:output:0*
T0*'
_output_shapes
:?????????V
add_2AddV2	mul_2:z:0	add_1:z:0*
T0*'
_output_shapes
:??????????
&dense_block_31/StatefulPartitionedCallStatefulPartitionedCall/dense_block_30/StatefulPartitionedCall:output:0dense_block_31_133073dense_block_31_133075dense_block_31_133077dense_block_31_133079dense_block_31_133081dense_block_31_133083*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_31_layer_call_and_return_conditional_losses_132692?
"dense_39/StatefulPartitionedCall_3StatefulPartitionedCall	add_2:z:0dense_39_133030dense_39_133032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355s
mul_3Mulinputs+dense_39/StatefulPartitionedCall_3:output:0*
T0*'
_output_shapes
:?????????V
add_3AddV2	mul_3:z:0	add_2:z:0*
T0*'
_output_shapes
:??????????
.batch_normalization_39/StatefulPartitionedCallStatefulPartitionedCall	add_3:z:0batch_normalization_39_133091batch_normalization_39_133093batch_normalization_39_133095batch_normalization_39_133097*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_132285?
concatenate_7/PartitionedCallPartitionedCall/dense_block_31/StatefulPartitionedCall:output:07batch_normalization_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????O* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_7_layer_call_and_return_conditional_losses_132517?
output/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0output_133101output_133103*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_132530v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_39/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall#^dense_39/StatefulPartitionedCall_1#^dense_39/StatefulPartitionedCall_2#^dense_39/StatefulPartitionedCall_3'^dense_block_28/StatefulPartitionedCall'^dense_block_29/StatefulPartitionedCall'^dense_block_30/StatefulPartitionedCall'^dense_block_31/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_39/StatefulPartitionedCall.batch_normalization_39/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2H
"dense_39/StatefulPartitionedCall_1"dense_39/StatefulPartitionedCall_12H
"dense_39/StatefulPartitionedCall_2"dense_39/StatefulPartitionedCall_22H
"dense_39/StatefulPartitionedCall_3"dense_39/StatefulPartitionedCall_32P
&dense_block_28/StatefulPartitionedCall&dense_block_28/StatefulPartitionedCall2P
&dense_block_29/StatefulPartitionedCall&dense_block_29/StatefulPartitionedCall2P
&dense_block_30/StatefulPartitionedCall&dense_block_30/StatefulPartitionedCall2P
&dense_block_31/StatefulPartitionedCall&dense_block_31/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
J__inference_dense_block_31_layer_call_and_return_conditional_losses_132482

inputs:
'dense_38_matmul_readvariableop_resource:	?@6
(dense_38_biasadd_readvariableop_resource:@A
3batch_normalization_38_cast_readvariableop_resource:@C
5batch_normalization_38_cast_1_readvariableop_resource:@C
5batch_normalization_38_cast_2_readvariableop_resource:@C
5batch_normalization_38_cast_3_readvariableop_resource:@
identity??*batch_normalization_38/Cast/ReadVariableOp?,batch_normalization_38/Cast_1/ReadVariableOp?,batch_normalization_38/Cast_2/ReadVariableOp?,batch_normalization_38/Cast_3/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0{
dense_38/MatMulMatMulinputs&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@g
activation_31/SeluSeludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
*batch_normalization_38/Cast/ReadVariableOpReadVariableOp3batch_normalization_38_cast_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_38_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_38_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_38_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0k
&batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_38/batchnorm/addAddV24batch_normalization_38/Cast_1/ReadVariableOp:value:0/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
:@~
&batch_normalization_38/batchnorm/RsqrtRsqrt(batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
:@?
$batch_normalization_38/batchnorm/mulMul*batch_normalization_38/batchnorm/Rsqrt:y:04batch_normalization_38/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
&batch_normalization_38/batchnorm/mul_1Mul activation_31/Selu:activations:0(batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@?
&batch_normalization_38/batchnorm/mul_2Mul2batch_normalization_38/Cast/ReadVariableOp:value:0(batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
:@?
$batch_normalization_38/batchnorm/subSub4batch_normalization_38/Cast_2/ReadVariableOp:value:0*batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@?
&batch_normalization_38/batchnorm/add_1AddV2*batch_normalization_38/batchnorm/mul_1:z:0(batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@y
IdentityIdentity*batch_normalization_38/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp+^batch_normalization_38/Cast/ReadVariableOp-^batch_normalization_38/Cast_1/ReadVariableOp-^batch_normalization_38/Cast_2/ReadVariableOp-^batch_normalization_38/Cast_3/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2X
*batch_normalization_38/Cast/ReadVariableOp*batch_normalization_38/Cast/ReadVariableOp2\
,batch_normalization_38/Cast_1/ReadVariableOp,batch_normalization_38/Cast_1/ReadVariableOp2\
,batch_normalization_38/Cast_2/ReadVariableOp,batch_normalization_38/Cast_2/ReadVariableOp2\
,batch_normalization_38/Cast_3/ReadVariableOp,batch_normalization_38/Cast_3/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_37_layer_call_fn_134739

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_132074p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?>
?
J__inference_dense_block_30_layer_call_and_return_conditional_losses_134464

inputs;
'dense_37_matmul_readvariableop_resource:
??7
(dense_37_biasadd_readvariableop_resource:	?M
>batch_normalization_37_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_37_assignmovingavg_1_readvariableop_resource:	?B
3batch_normalization_37_cast_readvariableop_resource:	?D
5batch_normalization_37_cast_1_readvariableop_resource:	?
identity??&batch_normalization_37/AssignMovingAvg?5batch_normalization_37/AssignMovingAvg/ReadVariableOp?(batch_normalization_37/AssignMovingAvg_1?7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp?*batch_normalization_37/Cast/ReadVariableOp?,batch_normalization_37/Cast_1/ReadVariableOp?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0|
dense_37/MatMulMatMulinputs&dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_30/SeluSeludense_37/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
5batch_normalization_37/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_37/moments/meanMean activation_30/Selu:activations:0>batch_normalization_37/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
+batch_normalization_37/moments/StopGradientStopGradient,batch_normalization_37/moments/mean:output:0*
T0*
_output_shapes
:	??
0batch_normalization_37/moments/SquaredDifferenceSquaredDifference activation_30/Selu:activations:04batch_normalization_37/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
9batch_normalization_37/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_37/moments/varianceMean4batch_normalization_37/moments/SquaredDifference:z:0Bbatch_normalization_37/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
&batch_normalization_37/moments/SqueezeSqueeze,batch_normalization_37/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
(batch_normalization_37/moments/Squeeze_1Squeeze0batch_normalization_37/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 q
,batch_normalization_37/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_37/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_37_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*batch_normalization_37/AssignMovingAvg/subSub=batch_normalization_37/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_37/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
*batch_normalization_37/AssignMovingAvg/mulMul.batch_normalization_37/AssignMovingAvg/sub:z:05batch_normalization_37/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
&batch_normalization_37/AssignMovingAvgAssignSubVariableOp>batch_normalization_37_assignmovingavg_readvariableop_resource.batch_normalization_37/AssignMovingAvg/mul:z:06^batch_normalization_37/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_37/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_37/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_37_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/AssignMovingAvg_1/subSub?batch_normalization_37/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_37/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
,batch_normalization_37/AssignMovingAvg_1/mulMul0batch_normalization_37/AssignMovingAvg_1/sub:z:07batch_normalization_37/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
(batch_normalization_37/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_37_assignmovingavg_1_readvariableop_resource0batch_normalization_37/AssignMovingAvg_1/mul:z:08^batch_normalization_37/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
*batch_normalization_37/Cast/ReadVariableOpReadVariableOp3batch_normalization_37_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_37_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_37/batchnorm/addAddV21batch_normalization_37/moments/Squeeze_1:output:0/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_37/batchnorm/RsqrtRsqrt(batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_37/batchnorm/mulMul*batch_normalization_37/batchnorm/Rsqrt:y:04batch_normalization_37/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_37/batchnorm/mul_1Mul activation_30/Selu:activations:0(batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_37/batchnorm/mul_2Mul/batch_normalization_37/moments/Squeeze:output:0(batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_37/batchnorm/subSub2batch_normalization_37/Cast/ReadVariableOp:value:0*batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_37/batchnorm/add_1AddV2*batch_normalization_37/batchnorm/mul_1:z:0(batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????z
IdentityIdentity*batch_normalization_37/batchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp'^batch_normalization_37/AssignMovingAvg6^batch_normalization_37/AssignMovingAvg/ReadVariableOp)^batch_normalization_37/AssignMovingAvg_18^batch_normalization_37/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_37/Cast/ReadVariableOp-^batch_normalization_37/Cast_1/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2P
&batch_normalization_37/AssignMovingAvg&batch_normalization_37/AssignMovingAvg2n
5batch_normalization_37/AssignMovingAvg/ReadVariableOp5batch_normalization_37/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_37/AssignMovingAvg_1(batch_normalization_37/AssignMovingAvg_12r
7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp7batch_normalization_37/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_37/Cast/ReadVariableOp*batch_normalization_37/Cast/ReadVariableOp2\
,batch_normalization_37/Cast_1/ReadVariableOp,batch_normalization_37/Cast_1/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_134772

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????l
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?n
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_131992

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????l
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?n
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
Z
.__inference_concatenate_7_layer_call_fn_134042
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????O* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_7_layer_call_and_return_conditional_losses_132517`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????O"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????:Q M
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?#
?
J__inference_dense_block_29_layer_call_and_return_conditional_losses_132390

inputs;
'dense_36_matmul_readvariableop_resource:
??7
(dense_36_biasadd_readvariableop_resource:	?B
3batch_normalization_36_cast_readvariableop_resource:	?D
5batch_normalization_36_cast_1_readvariableop_resource:	?D
5batch_normalization_36_cast_2_readvariableop_resource:	?D
5batch_normalization_36_cast_3_readvariableop_resource:	?
identity??*batch_normalization_36/Cast/ReadVariableOp?,batch_normalization_36/Cast_1/ReadVariableOp?,batch_normalization_36/Cast_2/ReadVariableOp?,batch_normalization_36/Cast_3/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0|
dense_36/MatMulMatMulinputs&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_29/SeluSeludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*batch_normalization_36/Cast/ReadVariableOpReadVariableOp3batch_normalization_36_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_36_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_36_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_36_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_36/batchnorm/addAddV24batch_normalization_36/Cast_1/ReadVariableOp:value:0/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_36/batchnorm/RsqrtRsqrt(batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_36/batchnorm/mulMul*batch_normalization_36/batchnorm/Rsqrt:y:04batch_normalization_36/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_36/batchnorm/mul_1Mul activation_29/Selu:activations:0(batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_36/batchnorm/mul_2Mul2batch_normalization_36/Cast/ReadVariableOp:value:0(batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_36/batchnorm/subSub4batch_normalization_36/Cast_2/ReadVariableOp:value:0*batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_36/batchnorm/add_1AddV2*batch_normalization_36/batchnorm/mul_1:z:0(batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????z
IdentityIdentity*batch_normalization_36/batchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp+^batch_normalization_36/Cast/ReadVariableOp-^batch_normalization_36/Cast_1/ReadVariableOp-^batch_normalization_36/Cast_2/ReadVariableOp-^batch_normalization_36/Cast_3/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2X
*batch_normalization_36/Cast/ReadVariableOp*batch_normalization_36/Cast/ReadVariableOp2\
,batch_normalization_36/Cast_1/ReadVariableOp,batch_normalization_36/Cast_1/ReadVariableOp2\
,batch_normalization_36/Cast_2/ReadVariableOp,batch_normalization_36/Cast_2/ReadVariableOp2\
,batch_normalization_36/Cast_3/ReadVariableOp,batch_normalization_36/Cast_3/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_35_layer_call_fn_134592

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_131957p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?F
?
G__inference_cross_net_7_layer_call_and_return_conditional_losses_132537

inputs(
dense_block_28_132332:	?$
dense_block_28_132334:	?$
dense_block_28_132336:	?$
dense_block_28_132338:	?$
dense_block_28_132340:	?$
dense_block_28_132342:	?!
dense_39_132356:
dense_39_132358:)
dense_block_29_132391:
??$
dense_block_29_132393:	?$
dense_block_29_132395:	?$
dense_block_29_132397:	?$
dense_block_29_132399:	?$
dense_block_29_132401:	?)
dense_block_30_132437:
??$
dense_block_30_132439:	?$
dense_block_30_132441:	?$
dense_block_30_132443:	?$
dense_block_30_132445:	?$
dense_block_30_132447:	?(
dense_block_31_132483:	?@#
dense_block_31_132485:@#
dense_block_31_132487:@#
dense_block_31_132489:@#
dense_block_31_132491:@#
dense_block_31_132493:@+
batch_normalization_39_132501:+
batch_normalization_39_132503:+
batch_normalization_39_132505:+
batch_normalization_39_132507:
output_132531:O
output_132533:
identity??.batch_normalization_39/StatefulPartitionedCall? dense_39/StatefulPartitionedCall?"dense_39/StatefulPartitionedCall_1?"dense_39/StatefulPartitionedCall_2?"dense_39/StatefulPartitionedCall_3?&dense_block_28/StatefulPartitionedCall?&dense_block_29/StatefulPartitionedCall?&dense_block_30/StatefulPartitionedCall?&dense_block_31/StatefulPartitionedCall?output/StatefulPartitionedCall?
&dense_block_28/StatefulPartitionedCallStatefulPartitionedCallinputsdense_block_28_132332dense_block_28_132334dense_block_28_132336dense_block_28_132338dense_block_28_132340dense_block_28_132342*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_28_layer_call_and_return_conditional_losses_132331?
 dense_39/StatefulPartitionedCallStatefulPartitionedCallinputsdense_39_132356dense_39_132358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355o
mulMulinputs)dense_39/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????O
addAddV2mul:z:0inputs*
T0*'
_output_shapes
:??????????
&dense_block_29/StatefulPartitionedCallStatefulPartitionedCall/dense_block_28/StatefulPartitionedCall:output:0dense_block_29_132391dense_block_29_132393dense_block_29_132395dense_block_29_132397dense_block_29_132399dense_block_29_132401*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_29_layer_call_and_return_conditional_losses_132390?
"dense_39/StatefulPartitionedCall_1StatefulPartitionedCalladd:z:0dense_39_132356dense_39_132358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355s
mul_1Mulinputs+dense_39/StatefulPartitionedCall_1:output:0*
T0*'
_output_shapes
:?????????T
add_1AddV2	mul_1:z:0add:z:0*
T0*'
_output_shapes
:??????????
&dense_block_30/StatefulPartitionedCallStatefulPartitionedCall/dense_block_29/StatefulPartitionedCall:output:0dense_block_30_132437dense_block_30_132439dense_block_30_132441dense_block_30_132443dense_block_30_132445dense_block_30_132447*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_30_layer_call_and_return_conditional_losses_132436?
"dense_39/StatefulPartitionedCall_2StatefulPartitionedCall	add_1:z:0dense_39_132356dense_39_132358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355s
mul_2Mulinputs+dense_39/StatefulPartitionedCall_2:output:0*
T0*'
_output_shapes
:?????????V
add_2AddV2	mul_2:z:0	add_1:z:0*
T0*'
_output_shapes
:??????????
&dense_block_31/StatefulPartitionedCallStatefulPartitionedCall/dense_block_30/StatefulPartitionedCall:output:0dense_block_31_132483dense_block_31_132485dense_block_31_132487dense_block_31_132489dense_block_31_132491dense_block_31_132493*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_31_layer_call_and_return_conditional_losses_132482?
"dense_39/StatefulPartitionedCall_3StatefulPartitionedCall	add_2:z:0dense_39_132356dense_39_132358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355s
mul_3Mulinputs+dense_39/StatefulPartitionedCall_3:output:0*
T0*'
_output_shapes
:?????????V
add_3AddV2	mul_3:z:0	add_2:z:0*
T0*'
_output_shapes
:??????????
.batch_normalization_39/StatefulPartitionedCallStatefulPartitionedCall	add_3:z:0batch_normalization_39_132501batch_normalization_39_132503batch_normalization_39_132505batch_normalization_39_132507*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_132238?
concatenate_7/PartitionedCallPartitionedCall/dense_block_31/StatefulPartitionedCall:output:07batch_normalization_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????O* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_7_layer_call_and_return_conditional_losses_132517?
output/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0output_132531output_132533*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_132530v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_39/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall#^dense_39/StatefulPartitionedCall_1#^dense_39/StatefulPartitionedCall_2#^dense_39/StatefulPartitionedCall_3'^dense_block_28/StatefulPartitionedCall'^dense_block_29/StatefulPartitionedCall'^dense_block_30/StatefulPartitionedCall'^dense_block_31/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_39/StatefulPartitionedCall.batch_normalization_39/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2H
"dense_39/StatefulPartitionedCall_1"dense_39/StatefulPartitionedCall_12H
"dense_39/StatefulPartitionedCall_2"dense_39/StatefulPartitionedCall_22H
"dense_39/StatefulPartitionedCall_3"dense_39/StatefulPartitionedCall_32P
&dense_block_28/StatefulPartitionedCall&dense_block_28/StatefulPartitionedCall2P
&dense_block_29/StatefulPartitionedCall&dense_block_29/StatefulPartitionedCall2P
&dense_block_30/StatefulPartitionedCall&dense_block_30/StatefulPartitionedCall2P
&dense_block_31/StatefulPartitionedCall&dense_block_31/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?>
?
J__inference_dense_block_29_layer_call_and_return_conditional_losses_132844

inputs;
'dense_36_matmul_readvariableop_resource:
??7
(dense_36_biasadd_readvariableop_resource:	?M
>batch_normalization_36_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_36_assignmovingavg_1_readvariableop_resource:	?B
3batch_normalization_36_cast_readvariableop_resource:	?D
5batch_normalization_36_cast_1_readvariableop_resource:	?
identity??&batch_normalization_36/AssignMovingAvg?5batch_normalization_36/AssignMovingAvg/ReadVariableOp?(batch_normalization_36/AssignMovingAvg_1?7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp?*batch_normalization_36/Cast/ReadVariableOp?,batch_normalization_36/Cast_1/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0|
dense_36/MatMulMatMulinputs&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_29/SeluSeludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
5batch_normalization_36/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_36/moments/meanMean activation_29/Selu:activations:0>batch_normalization_36/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
+batch_normalization_36/moments/StopGradientStopGradient,batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes
:	??
0batch_normalization_36/moments/SquaredDifferenceSquaredDifference activation_29/Selu:activations:04batch_normalization_36/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
9batch_normalization_36/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_36/moments/varianceMean4batch_normalization_36/moments/SquaredDifference:z:0Bbatch_normalization_36/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
&batch_normalization_36/moments/SqueezeSqueeze,batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
(batch_normalization_36/moments/Squeeze_1Squeeze0batch_normalization_36/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 q
,batch_normalization_36/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_36/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_36_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*batch_normalization_36/AssignMovingAvg/subSub=batch_normalization_36/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_36/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
*batch_normalization_36/AssignMovingAvg/mulMul.batch_normalization_36/AssignMovingAvg/sub:z:05batch_normalization_36/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
&batch_normalization_36/AssignMovingAvgAssignSubVariableOp>batch_normalization_36_assignmovingavg_readvariableop_resource.batch_normalization_36/AssignMovingAvg/mul:z:06^batch_normalization_36/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_36/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_36_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/AssignMovingAvg_1/subSub?batch_normalization_36/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_36/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
,batch_normalization_36/AssignMovingAvg_1/mulMul0batch_normalization_36/AssignMovingAvg_1/sub:z:07batch_normalization_36/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
(batch_normalization_36/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_36_assignmovingavg_1_readvariableop_resource0batch_normalization_36/AssignMovingAvg_1/mul:z:08^batch_normalization_36/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
*batch_normalization_36/Cast/ReadVariableOpReadVariableOp3batch_normalization_36_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_36_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_36/batchnorm/addAddV21batch_normalization_36/moments/Squeeze_1:output:0/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_36/batchnorm/RsqrtRsqrt(batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_36/batchnorm/mulMul*batch_normalization_36/batchnorm/Rsqrt:y:04batch_normalization_36/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_36/batchnorm/mul_1Mul activation_29/Selu:activations:0(batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_36/batchnorm/mul_2Mul/batch_normalization_36/moments/Squeeze:output:0(batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_36/batchnorm/subSub2batch_normalization_36/Cast/ReadVariableOp:value:0*batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_36/batchnorm/add_1AddV2*batch_normalization_36/batchnorm/mul_1:z:0(batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????z
IdentityIdentity*batch_normalization_36/batchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp'^batch_normalization_36/AssignMovingAvg6^batch_normalization_36/AssignMovingAvg/ReadVariableOp)^batch_normalization_36/AssignMovingAvg_18^batch_normalization_36/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_36/Cast/ReadVariableOp-^batch_normalization_36/Cast_1/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2P
&batch_normalization_36/AssignMovingAvg&batch_normalization_36/AssignMovingAvg2n
5batch_normalization_36/AssignMovingAvg/ReadVariableOp5batch_normalization_36/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_36/AssignMovingAvg_1(batch_normalization_36/AssignMovingAvg_12r
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_36/Cast/ReadVariableOp*batch_normalization_36/Cast/ReadVariableOp2\
,batch_normalization_36/Cast_1/ReadVariableOp,batch_normalization_36/Cast_1/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?>
?
J__inference_dense_block_31_layer_call_and_return_conditional_losses_134566

inputs:
'dense_38_matmul_readvariableop_resource:	?@6
(dense_38_biasadd_readvariableop_resource:@L
>batch_normalization_38_assignmovingavg_readvariableop_resource:@N
@batch_normalization_38_assignmovingavg_1_readvariableop_resource:@A
3batch_normalization_38_cast_readvariableop_resource:@C
5batch_normalization_38_cast_1_readvariableop_resource:@
identity??&batch_normalization_38/AssignMovingAvg?5batch_normalization_38/AssignMovingAvg/ReadVariableOp?(batch_normalization_38/AssignMovingAvg_1?7batch_normalization_38/AssignMovingAvg_1/ReadVariableOp?*batch_normalization_38/Cast/ReadVariableOp?,batch_normalization_38/Cast_1/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0{
dense_38/MatMulMatMulinputs&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@g
activation_31/SeluSeludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@
5batch_normalization_38/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_38/moments/meanMean activation_31/Selu:activations:0>batch_normalization_38/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(?
+batch_normalization_38/moments/StopGradientStopGradient,batch_normalization_38/moments/mean:output:0*
T0*
_output_shapes

:@?
0batch_normalization_38/moments/SquaredDifferenceSquaredDifference activation_31/Selu:activations:04batch_normalization_38/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@?
9batch_normalization_38/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_38/moments/varianceMean4batch_normalization_38/moments/SquaredDifference:z:0Bbatch_normalization_38/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(?
&batch_normalization_38/moments/SqueezeSqueeze,batch_normalization_38/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 ?
(batch_normalization_38/moments/Squeeze_1Squeeze0batch_normalization_38/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 q
,batch_normalization_38/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_38/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_38_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0?
*batch_normalization_38/AssignMovingAvg/subSub=batch_normalization_38/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_38/moments/Squeeze:output:0*
T0*
_output_shapes
:@?
*batch_normalization_38/AssignMovingAvg/mulMul.batch_normalization_38/AssignMovingAvg/sub:z:05batch_normalization_38/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@?
&batch_normalization_38/AssignMovingAvgAssignSubVariableOp>batch_normalization_38_assignmovingavg_readvariableop_resource.batch_normalization_38/AssignMovingAvg/mul:z:06^batch_normalization_38/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_38/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_38/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_38_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/AssignMovingAvg_1/subSub?batch_normalization_38/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_38/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@?
,batch_normalization_38/AssignMovingAvg_1/mulMul0batch_normalization_38/AssignMovingAvg_1/sub:z:07batch_normalization_38/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@?
(batch_normalization_38/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_38_assignmovingavg_1_readvariableop_resource0batch_normalization_38/AssignMovingAvg_1/mul:z:08^batch_normalization_38/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
*batch_normalization_38/Cast/ReadVariableOpReadVariableOp3batch_normalization_38_cast_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_38_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0k
&batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_38/batchnorm/addAddV21batch_normalization_38/moments/Squeeze_1:output:0/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
:@~
&batch_normalization_38/batchnorm/RsqrtRsqrt(batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
:@?
$batch_normalization_38/batchnorm/mulMul*batch_normalization_38/batchnorm/Rsqrt:y:04batch_normalization_38/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
&batch_normalization_38/batchnorm/mul_1Mul activation_31/Selu:activations:0(batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@?
&batch_normalization_38/batchnorm/mul_2Mul/batch_normalization_38/moments/Squeeze:output:0(batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
:@?
$batch_normalization_38/batchnorm/subSub2batch_normalization_38/Cast/ReadVariableOp:value:0*batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@?
&batch_normalization_38/batchnorm/add_1AddV2*batch_normalization_38/batchnorm/mul_1:z:0(batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@y
IdentityIdentity*batch_normalization_38/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp'^batch_normalization_38/AssignMovingAvg6^batch_normalization_38/AssignMovingAvg/ReadVariableOp)^batch_normalization_38/AssignMovingAvg_18^batch_normalization_38/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_38/Cast/ReadVariableOp-^batch_normalization_38/Cast_1/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2P
&batch_normalization_38/AssignMovingAvg&batch_normalization_38/AssignMovingAvg2n
5batch_normalization_38/AssignMovingAvg/ReadVariableOp5batch_normalization_38/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_38/AssignMovingAvg_1(batch_normalization_38/AssignMovingAvg_12r
7batch_normalization_38/AssignMovingAvg_1/ReadVariableOp7batch_normalization_38/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_38/Cast/ReadVariableOp*batch_normalization_38/Cast/ReadVariableOp2\
,batch_normalization_38/Cast_1/ReadVariableOp,batch_normalization_38/Cast_1/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_dense_block_30_layer_call_fn_134379

inputs
unknown:
??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_30_layer_call_and_return_conditional_losses_132436p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_cross_net_7_layer_call_fn_133243
input_1
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
	unknown_6:
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:	?@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:O

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133107o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?G
?
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133336
input_1(
dense_block_28_133246:	?$
dense_block_28_133248:	?$
dense_block_28_133250:	?$
dense_block_28_133252:	?$
dense_block_28_133254:	?$
dense_block_28_133256:	?!
dense_39_133259:
dense_39_133261:)
dense_block_29_133266:
??$
dense_block_29_133268:	?$
dense_block_29_133270:	?$
dense_block_29_133272:	?$
dense_block_29_133274:	?$
dense_block_29_133276:	?)
dense_block_30_133284:
??$
dense_block_30_133286:	?$
dense_block_30_133288:	?$
dense_block_30_133290:	?$
dense_block_30_133292:	?$
dense_block_30_133294:	?(
dense_block_31_133302:	?@#
dense_block_31_133304:@#
dense_block_31_133306:@#
dense_block_31_133308:@#
dense_block_31_133310:@#
dense_block_31_133312:@+
batch_normalization_39_133320:+
batch_normalization_39_133322:+
batch_normalization_39_133324:+
batch_normalization_39_133326:
output_133330:O
output_133332:
identity??.batch_normalization_39/StatefulPartitionedCall? dense_39/StatefulPartitionedCall?"dense_39/StatefulPartitionedCall_1?"dense_39/StatefulPartitionedCall_2?"dense_39/StatefulPartitionedCall_3?&dense_block_28/StatefulPartitionedCall?&dense_block_29/StatefulPartitionedCall?&dense_block_30/StatefulPartitionedCall?&dense_block_31/StatefulPartitionedCall?output/StatefulPartitionedCall?
&dense_block_28/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_block_28_133246dense_block_28_133248dense_block_28_133250dense_block_28_133252dense_block_28_133254dense_block_28_133256*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_28_layer_call_and_return_conditional_losses_132331?
 dense_39/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_39_133259dense_39_133261*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355p
mulMulinput_1)dense_39/StatefulPartitionedCall:output:0*
T0*'
_output_shapes
:?????????P
addAddV2mul:z:0input_1*
T0*'
_output_shapes
:??????????
&dense_block_29/StatefulPartitionedCallStatefulPartitionedCall/dense_block_28/StatefulPartitionedCall:output:0dense_block_29_133266dense_block_29_133268dense_block_29_133270dense_block_29_133272dense_block_29_133274dense_block_29_133276*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_29_layer_call_and_return_conditional_losses_132390?
"dense_39/StatefulPartitionedCall_1StatefulPartitionedCalladd:z:0dense_39_133259dense_39_133261*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355t
mul_1Mulinput_1+dense_39/StatefulPartitionedCall_1:output:0*
T0*'
_output_shapes
:?????????T
add_1AddV2	mul_1:z:0add:z:0*
T0*'
_output_shapes
:??????????
&dense_block_30/StatefulPartitionedCallStatefulPartitionedCall/dense_block_29/StatefulPartitionedCall:output:0dense_block_30_133284dense_block_30_133286dense_block_30_133288dense_block_30_133290dense_block_30_133292dense_block_30_133294*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_30_layer_call_and_return_conditional_losses_132436?
"dense_39/StatefulPartitionedCall_2StatefulPartitionedCall	add_1:z:0dense_39_133259dense_39_133261*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355t
mul_2Mulinput_1+dense_39/StatefulPartitionedCall_2:output:0*
T0*'
_output_shapes
:?????????V
add_2AddV2	mul_2:z:0	add_1:z:0*
T0*'
_output_shapes
:??????????
&dense_block_31/StatefulPartitionedCallStatefulPartitionedCall/dense_block_30/StatefulPartitionedCall:output:0dense_block_31_133302dense_block_31_133304dense_block_31_133306dense_block_31_133308dense_block_31_133310dense_block_31_133312*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_31_layer_call_and_return_conditional_losses_132482?
"dense_39/StatefulPartitionedCall_3StatefulPartitionedCall	add_2:z:0dense_39_133259dense_39_133261*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355t
mul_3Mulinput_1+dense_39/StatefulPartitionedCall_3:output:0*
T0*'
_output_shapes
:?????????V
add_3AddV2	mul_3:z:0	add_2:z:0*
T0*'
_output_shapes
:??????????
.batch_normalization_39/StatefulPartitionedCallStatefulPartitionedCall	add_3:z:0batch_normalization_39_133320batch_normalization_39_133322batch_normalization_39_133324batch_normalization_39_133326*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_132238?
concatenate_7/PartitionedCallPartitionedCall/dense_block_31/StatefulPartitionedCall:output:07batch_normalization_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????O* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_concatenate_7_layer_call_and_return_conditional_losses_132517?
output/StatefulPartitionedCallStatefulPartitionedCall&concatenate_7/PartitionedCall:output:0output_133330output_133332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_132530v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_39/StatefulPartitionedCall!^dense_39/StatefulPartitionedCall#^dense_39/StatefulPartitionedCall_1#^dense_39/StatefulPartitionedCall_2#^dense_39/StatefulPartitionedCall_3'^dense_block_28/StatefulPartitionedCall'^dense_block_29/StatefulPartitionedCall'^dense_block_30/StatefulPartitionedCall'^dense_block_31/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_39/StatefulPartitionedCall.batch_normalization_39/StatefulPartitionedCall2D
 dense_39/StatefulPartitionedCall dense_39/StatefulPartitionedCall2H
"dense_39/StatefulPartitionedCall_1"dense_39/StatefulPartitionedCall_12H
"dense_39/StatefulPartitionedCall_2"dense_39/StatefulPartitionedCall_22H
"dense_39/StatefulPartitionedCall_3"dense_39/StatefulPartitionedCall_32P
&dense_block_28/StatefulPartitionedCall&dense_block_28/StatefulPartitionedCall2P
&dense_block_29/StatefulPartitionedCall&dense_block_29/StatefulPartitionedCall2P
&dense_block_30/StatefulPartitionedCall&dense_block_30/StatefulPartitionedCall2P
&dense_block_31/StatefulPartitionedCall&dense_block_31/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_134095

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_132121

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?l
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_134726

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?l
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
B__inference_output_layer_call_and_return_conditional_losses_134149

inputs0
matmul_readvariableop_resource:O-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:O*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????O: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????O
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_134852

inputs*
cast_readvariableop_resource:@,
cast_1_readvariableop_resource:@,
cast_2_readvariableop_resource:@,
cast_3_readvariableop_resource:@
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:@*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:@*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:@*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?#
?
J__inference_dense_block_30_layer_call_and_return_conditional_losses_132436

inputs;
'dense_37_matmul_readvariableop_resource:
??7
(dense_37_biasadd_readvariableop_resource:	?B
3batch_normalization_37_cast_readvariableop_resource:	?D
5batch_normalization_37_cast_1_readvariableop_resource:	?D
5batch_normalization_37_cast_2_readvariableop_resource:	?D
5batch_normalization_37_cast_3_readvariableop_resource:	?
identity??*batch_normalization_37/Cast/ReadVariableOp?,batch_normalization_37/Cast_1/ReadVariableOp?,batch_normalization_37/Cast_2/ReadVariableOp?,batch_normalization_37/Cast_3/ReadVariableOp?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0|
dense_37/MatMulMatMulinputs&dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_30/SeluSeludense_37/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*batch_normalization_37/Cast/ReadVariableOpReadVariableOp3batch_normalization_37_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_37_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_37_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_37_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_37/batchnorm/addAddV24batch_normalization_37/Cast_1/ReadVariableOp:value:0/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_37/batchnorm/RsqrtRsqrt(batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_37/batchnorm/mulMul*batch_normalization_37/batchnorm/Rsqrt:y:04batch_normalization_37/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_37/batchnorm/mul_1Mul activation_30/Selu:activations:0(batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_37/batchnorm/mul_2Mul2batch_normalization_37/Cast/ReadVariableOp:value:0(batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_37/batchnorm/subSub4batch_normalization_37/Cast_2/ReadVariableOp:value:0*batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_37/batchnorm/add_1AddV2*batch_normalization_37/batchnorm/mul_1:z:0(batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????z
IdentityIdentity*batch_normalization_37/batchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp+^batch_normalization_37/Cast/ReadVariableOp-^batch_normalization_37/Cast_1/ReadVariableOp-^batch_normalization_37/Cast_2/ReadVariableOp-^batch_normalization_37/Cast_3/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2X
*batch_normalization_37/Cast/ReadVariableOp*batch_normalization_37/Cast/ReadVariableOp2\
,batch_normalization_37/Cast_1/ReadVariableOp,batch_normalization_37/Cast_1/ReadVariableOp2\
,batch_normalization_37/Cast_2/ReadVariableOp,batch_normalization_37/Cast_2/ReadVariableOp2\
,batch_normalization_37/Cast_3/ReadVariableOp,batch_normalization_37/Cast_3/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
D__inference_dense_39_layer_call_and_return_conditional_losses_132355

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_133506
input_1
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
	unknown_6:
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:	?@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:O

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_131886o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_131910

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????l
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?n
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?F
?
J__inference_dense_block_28_layer_call_and_return_conditional_losses_134260

inputs:
'dense_35_matmul_readvariableop_resource:	?7
(dense_35_biasadd_readvariableop_resource:	?M
>batch_normalization_35_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_35_assignmovingavg_1_readvariableop_resource:	?B
3batch_normalization_35_cast_readvariableop_resource:	?D
5batch_normalization_35_cast_1_readvariableop_resource:	?
identity??&batch_normalization_35/AssignMovingAvg?5batch_normalization_35/AssignMovingAvg/ReadVariableOp?(batch_normalization_35/AssignMovingAvg_1?7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp?*batch_normalization_35/Cast/ReadVariableOp?,batch_normalization_35/Cast_1/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0|
dense_35/MatMulMatMulinputs&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_28/SeluSeludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
5batch_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_35/moments/meanMean activation_28/Selu:activations:0>batch_normalization_35/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
+batch_normalization_35/moments/StopGradientStopGradient,batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes
:	??
0batch_normalization_35/moments/SquaredDifferenceSquaredDifference activation_28/Selu:activations:04batch_normalization_35/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
9batch_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_35/moments/varianceMean4batch_normalization_35/moments/SquaredDifference:z:0Bbatch_normalization_35/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
&batch_normalization_35/moments/SqueezeSqueeze,batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
(batch_normalization_35/moments/Squeeze_1Squeeze0batch_normalization_35/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 q
,batch_normalization_35/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_35/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*batch_normalization_35/AssignMovingAvg/subSub=batch_normalization_35/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_35/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
*batch_normalization_35/AssignMovingAvg/mulMul.batch_normalization_35/AssignMovingAvg/sub:z:05batch_normalization_35/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
&batch_normalization_35/AssignMovingAvgAssignSubVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource.batch_normalization_35/AssignMovingAvg/mul:z:06^batch_normalization_35/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_35/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/AssignMovingAvg_1/subSub?batch_normalization_35/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_35/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
,batch_normalization_35/AssignMovingAvg_1/mulMul0batch_normalization_35/AssignMovingAvg_1/sub:z:07batch_normalization_35/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
(batch_normalization_35/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource0batch_normalization_35/AssignMovingAvg_1/mul:z:08^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
*batch_normalization_35/Cast/ReadVariableOpReadVariableOp3batch_normalization_35_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_35_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_35/batchnorm/addAddV21batch_normalization_35/moments/Squeeze_1:output:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:04batch_normalization_35/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/mul_1Mul activation_28/Selu:activations:0(batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_35/batchnorm/mul_2Mul/batch_normalization_35/moments/Squeeze:output:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_35/batchnorm/subSub2batch_normalization_35/Cast/ReadVariableOp:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_7/dropout/MulMul*batch_normalization_35/batchnorm/add_1:z:0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????q
dropout_7/dropout/ShapeShape*batch_normalization_35/batchnorm/add_1:z:0*
T0*
_output_shapes
:?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????k
IdentityIdentitydropout_7/dropout/Mul_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp'^batch_normalization_35/AssignMovingAvg6^batch_normalization_35/AssignMovingAvg/ReadVariableOp)^batch_normalization_35/AssignMovingAvg_18^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_35/Cast/ReadVariableOp-^batch_normalization_35/Cast_1/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2P
&batch_normalization_35/AssignMovingAvg&batch_normalization_35/AssignMovingAvg2n
5batch_normalization_35/AssignMovingAvg/ReadVariableOp5batch_normalization_35/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_35/AssignMovingAvg_1(batch_normalization_35/AssignMovingAvg_12r
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_35/Cast/ReadVariableOp*batch_normalization_35/Cast/ReadVariableOp2\
,batch_normalization_35/Cast_1/ReadVariableOp,batch_normalization_35/Cast_1/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
ǒ
?(
!__inference__wrapped_model_131886
input_1U
Bcross_net_7_dense_block_28_dense_35_matmul_readvariableop_resource:	?R
Ccross_net_7_dense_block_28_dense_35_biasadd_readvariableop_resource:	?]
Ncross_net_7_dense_block_28_batch_normalization_35_cast_readvariableop_resource:	?_
Pcross_net_7_dense_block_28_batch_normalization_35_cast_1_readvariableop_resource:	?_
Pcross_net_7_dense_block_28_batch_normalization_35_cast_2_readvariableop_resource:	?_
Pcross_net_7_dense_block_28_batch_normalization_35_cast_3_readvariableop_resource:	?E
3cross_net_7_dense_39_matmul_readvariableop_resource:B
4cross_net_7_dense_39_biasadd_readvariableop_resource:V
Bcross_net_7_dense_block_29_dense_36_matmul_readvariableop_resource:
??R
Ccross_net_7_dense_block_29_dense_36_biasadd_readvariableop_resource:	?]
Ncross_net_7_dense_block_29_batch_normalization_36_cast_readvariableop_resource:	?_
Pcross_net_7_dense_block_29_batch_normalization_36_cast_1_readvariableop_resource:	?_
Pcross_net_7_dense_block_29_batch_normalization_36_cast_2_readvariableop_resource:	?_
Pcross_net_7_dense_block_29_batch_normalization_36_cast_3_readvariableop_resource:	?V
Bcross_net_7_dense_block_30_dense_37_matmul_readvariableop_resource:
??R
Ccross_net_7_dense_block_30_dense_37_biasadd_readvariableop_resource:	?]
Ncross_net_7_dense_block_30_batch_normalization_37_cast_readvariableop_resource:	?_
Pcross_net_7_dense_block_30_batch_normalization_37_cast_1_readvariableop_resource:	?_
Pcross_net_7_dense_block_30_batch_normalization_37_cast_2_readvariableop_resource:	?_
Pcross_net_7_dense_block_30_batch_normalization_37_cast_3_readvariableop_resource:	?U
Bcross_net_7_dense_block_31_dense_38_matmul_readvariableop_resource:	?@Q
Ccross_net_7_dense_block_31_dense_38_biasadd_readvariableop_resource:@\
Ncross_net_7_dense_block_31_batch_normalization_38_cast_readvariableop_resource:@^
Pcross_net_7_dense_block_31_batch_normalization_38_cast_1_readvariableop_resource:@^
Pcross_net_7_dense_block_31_batch_normalization_38_cast_2_readvariableop_resource:@^
Pcross_net_7_dense_block_31_batch_normalization_38_cast_3_readvariableop_resource:@M
?cross_net_7_batch_normalization_39_cast_readvariableop_resource:O
Across_net_7_batch_normalization_39_cast_1_readvariableop_resource:O
Across_net_7_batch_normalization_39_cast_2_readvariableop_resource:O
Across_net_7_batch_normalization_39_cast_3_readvariableop_resource:C
1cross_net_7_output_matmul_readvariableop_resource:O@
2cross_net_7_output_biasadd_readvariableop_resource:
identity??6cross_net_7/batch_normalization_39/Cast/ReadVariableOp?8cross_net_7/batch_normalization_39/Cast_1/ReadVariableOp?8cross_net_7/batch_normalization_39/Cast_2/ReadVariableOp?8cross_net_7/batch_normalization_39/Cast_3/ReadVariableOp?+cross_net_7/dense_39/BiasAdd/ReadVariableOp?-cross_net_7/dense_39/BiasAdd_1/ReadVariableOp?-cross_net_7/dense_39/BiasAdd_2/ReadVariableOp?-cross_net_7/dense_39/BiasAdd_3/ReadVariableOp?*cross_net_7/dense_39/MatMul/ReadVariableOp?,cross_net_7/dense_39/MatMul_1/ReadVariableOp?,cross_net_7/dense_39/MatMul_2/ReadVariableOp?,cross_net_7/dense_39/MatMul_3/ReadVariableOp?Ecross_net_7/dense_block_28/batch_normalization_35/Cast/ReadVariableOp?Gcross_net_7/dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp?Gcross_net_7/dense_block_28/batch_normalization_35/Cast_2/ReadVariableOp?Gcross_net_7/dense_block_28/batch_normalization_35/Cast_3/ReadVariableOp?:cross_net_7/dense_block_28/dense_35/BiasAdd/ReadVariableOp?9cross_net_7/dense_block_28/dense_35/MatMul/ReadVariableOp?Ecross_net_7/dense_block_29/batch_normalization_36/Cast/ReadVariableOp?Gcross_net_7/dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp?Gcross_net_7/dense_block_29/batch_normalization_36/Cast_2/ReadVariableOp?Gcross_net_7/dense_block_29/batch_normalization_36/Cast_3/ReadVariableOp?:cross_net_7/dense_block_29/dense_36/BiasAdd/ReadVariableOp?9cross_net_7/dense_block_29/dense_36/MatMul/ReadVariableOp?Ecross_net_7/dense_block_30/batch_normalization_37/Cast/ReadVariableOp?Gcross_net_7/dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp?Gcross_net_7/dense_block_30/batch_normalization_37/Cast_2/ReadVariableOp?Gcross_net_7/dense_block_30/batch_normalization_37/Cast_3/ReadVariableOp?:cross_net_7/dense_block_30/dense_37/BiasAdd/ReadVariableOp?9cross_net_7/dense_block_30/dense_37/MatMul/ReadVariableOp?Ecross_net_7/dense_block_31/batch_normalization_38/Cast/ReadVariableOp?Gcross_net_7/dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp?Gcross_net_7/dense_block_31/batch_normalization_38/Cast_2/ReadVariableOp?Gcross_net_7/dense_block_31/batch_normalization_38/Cast_3/ReadVariableOp?:cross_net_7/dense_block_31/dense_38/BiasAdd/ReadVariableOp?9cross_net_7/dense_block_31/dense_38/MatMul/ReadVariableOp?)cross_net_7/output/BiasAdd/ReadVariableOp?(cross_net_7/output/MatMul/ReadVariableOp?
9cross_net_7/dense_block_28/dense_35/MatMul/ReadVariableOpReadVariableOpBcross_net_7_dense_block_28_dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
*cross_net_7/dense_block_28/dense_35/MatMulMatMulinput_1Across_net_7/dense_block_28/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:cross_net_7/dense_block_28/dense_35/BiasAdd/ReadVariableOpReadVariableOpCcross_net_7_dense_block_28_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+cross_net_7/dense_block_28/dense_35/BiasAddBiasAdd4cross_net_7/dense_block_28/dense_35/MatMul:product:0Bcross_net_7/dense_block_28/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-cross_net_7/dense_block_28/activation_28/SeluSelu4cross_net_7/dense_block_28/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
Ecross_net_7/dense_block_28/batch_normalization_35/Cast/ReadVariableOpReadVariableOpNcross_net_7_dense_block_28_batch_normalization_35_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gcross_net_7/dense_block_28/batch_normalization_35/Cast_1/ReadVariableOpReadVariableOpPcross_net_7_dense_block_28_batch_normalization_35_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gcross_net_7/dense_block_28/batch_normalization_35/Cast_2/ReadVariableOpReadVariableOpPcross_net_7_dense_block_28_batch_normalization_35_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gcross_net_7/dense_block_28/batch_normalization_35/Cast_3/ReadVariableOpReadVariableOpPcross_net_7_dense_block_28_batch_normalization_35_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Across_net_7/dense_block_28/batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
?cross_net_7/dense_block_28/batch_normalization_35/batchnorm/addAddV2Ocross_net_7/dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp:value:0Jcross_net_7/dense_block_28/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
Across_net_7/dense_block_28/batch_normalization_35/batchnorm/RsqrtRsqrtCcross_net_7/dense_block_28/batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
?cross_net_7/dense_block_28/batch_normalization_35/batchnorm/mulMulEcross_net_7/dense_block_28/batch_normalization_35/batchnorm/Rsqrt:y:0Ocross_net_7/dense_block_28/batch_normalization_35/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
Across_net_7/dense_block_28/batch_normalization_35/batchnorm/mul_1Mul;cross_net_7/dense_block_28/activation_28/Selu:activations:0Ccross_net_7/dense_block_28/batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
Across_net_7/dense_block_28/batch_normalization_35/batchnorm/mul_2MulMcross_net_7/dense_block_28/batch_normalization_35/Cast/ReadVariableOp:value:0Ccross_net_7/dense_block_28/batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
?cross_net_7/dense_block_28/batch_normalization_35/batchnorm/subSubOcross_net_7/dense_block_28/batch_normalization_35/Cast_2/ReadVariableOp:value:0Ecross_net_7/dense_block_28/batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
Across_net_7/dense_block_28/batch_normalization_35/batchnorm/add_1AddV2Ecross_net_7/dense_block_28/batch_normalization_35/batchnorm/mul_1:z:0Ccross_net_7/dense_block_28/batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
-cross_net_7/dense_block_28/dropout_7/IdentityIdentityEcross_net_7/dense_block_28/batch_normalization_35/batchnorm/add_1:z:0*
T0*(
_output_shapes
:???????????
*cross_net_7/dense_39/MatMul/ReadVariableOpReadVariableOp3cross_net_7_dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
cross_net_7/dense_39/MatMulMatMulinput_12cross_net_7/dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
+cross_net_7/dense_39/BiasAdd/ReadVariableOpReadVariableOp4cross_net_7_dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cross_net_7/dense_39/BiasAddBiasAdd%cross_net_7/dense_39/MatMul:product:03cross_net_7/dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
cross_net_7/mulMulinput_1%cross_net_7/dense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
cross_net_7/addAddV2cross_net_7/mul:z:0input_1*
T0*'
_output_shapes
:??????????
9cross_net_7/dense_block_29/dense_36/MatMul/ReadVariableOpReadVariableOpBcross_net_7_dense_block_29_dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
*cross_net_7/dense_block_29/dense_36/MatMulMatMul6cross_net_7/dense_block_28/dropout_7/Identity:output:0Across_net_7/dense_block_29/dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:cross_net_7/dense_block_29/dense_36/BiasAdd/ReadVariableOpReadVariableOpCcross_net_7_dense_block_29_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+cross_net_7/dense_block_29/dense_36/BiasAddBiasAdd4cross_net_7/dense_block_29/dense_36/MatMul:product:0Bcross_net_7/dense_block_29/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-cross_net_7/dense_block_29/activation_29/SeluSelu4cross_net_7/dense_block_29/dense_36/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
Ecross_net_7/dense_block_29/batch_normalization_36/Cast/ReadVariableOpReadVariableOpNcross_net_7_dense_block_29_batch_normalization_36_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gcross_net_7/dense_block_29/batch_normalization_36/Cast_1/ReadVariableOpReadVariableOpPcross_net_7_dense_block_29_batch_normalization_36_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gcross_net_7/dense_block_29/batch_normalization_36/Cast_2/ReadVariableOpReadVariableOpPcross_net_7_dense_block_29_batch_normalization_36_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gcross_net_7/dense_block_29/batch_normalization_36/Cast_3/ReadVariableOpReadVariableOpPcross_net_7_dense_block_29_batch_normalization_36_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Across_net_7/dense_block_29/batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
?cross_net_7/dense_block_29/batch_normalization_36/batchnorm/addAddV2Ocross_net_7/dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp:value:0Jcross_net_7/dense_block_29/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
Across_net_7/dense_block_29/batch_normalization_36/batchnorm/RsqrtRsqrtCcross_net_7/dense_block_29/batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:??
?cross_net_7/dense_block_29/batch_normalization_36/batchnorm/mulMulEcross_net_7/dense_block_29/batch_normalization_36/batchnorm/Rsqrt:y:0Ocross_net_7/dense_block_29/batch_normalization_36/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
Across_net_7/dense_block_29/batch_normalization_36/batchnorm/mul_1Mul;cross_net_7/dense_block_29/activation_29/Selu:activations:0Ccross_net_7/dense_block_29/batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
Across_net_7/dense_block_29/batch_normalization_36/batchnorm/mul_2MulMcross_net_7/dense_block_29/batch_normalization_36/Cast/ReadVariableOp:value:0Ccross_net_7/dense_block_29/batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
?cross_net_7/dense_block_29/batch_normalization_36/batchnorm/subSubOcross_net_7/dense_block_29/batch_normalization_36/Cast_2/ReadVariableOp:value:0Ecross_net_7/dense_block_29/batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
Across_net_7/dense_block_29/batch_normalization_36/batchnorm/add_1AddV2Ecross_net_7/dense_block_29/batch_normalization_36/batchnorm/mul_1:z:0Ccross_net_7/dense_block_29/batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
,cross_net_7/dense_39/MatMul_1/ReadVariableOpReadVariableOp3cross_net_7_dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
cross_net_7/dense_39/MatMul_1MatMulcross_net_7/add:z:04cross_net_7/dense_39/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-cross_net_7/dense_39/BiasAdd_1/ReadVariableOpReadVariableOp4cross_net_7_dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cross_net_7/dense_39/BiasAdd_1BiasAdd'cross_net_7/dense_39/MatMul_1:product:05cross_net_7/dense_39/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
cross_net_7/mul_1Mulinput_1'cross_net_7/dense_39/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????x
cross_net_7/add_1AddV2cross_net_7/mul_1:z:0cross_net_7/add:z:0*
T0*'
_output_shapes
:??????????
9cross_net_7/dense_block_30/dense_37/MatMul/ReadVariableOpReadVariableOpBcross_net_7_dense_block_30_dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
*cross_net_7/dense_block_30/dense_37/MatMulMatMulEcross_net_7/dense_block_29/batch_normalization_36/batchnorm/add_1:z:0Across_net_7/dense_block_30/dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
:cross_net_7/dense_block_30/dense_37/BiasAdd/ReadVariableOpReadVariableOpCcross_net_7_dense_block_30_dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+cross_net_7/dense_block_30/dense_37/BiasAddBiasAdd4cross_net_7/dense_block_30/dense_37/MatMul:product:0Bcross_net_7/dense_block_30/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
-cross_net_7/dense_block_30/activation_30/SeluSelu4cross_net_7/dense_block_30/dense_37/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
Ecross_net_7/dense_block_30/batch_normalization_37/Cast/ReadVariableOpReadVariableOpNcross_net_7_dense_block_30_batch_normalization_37_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gcross_net_7/dense_block_30/batch_normalization_37/Cast_1/ReadVariableOpReadVariableOpPcross_net_7_dense_block_30_batch_normalization_37_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gcross_net_7/dense_block_30/batch_normalization_37/Cast_2/ReadVariableOpReadVariableOpPcross_net_7_dense_block_30_batch_normalization_37_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Gcross_net_7/dense_block_30/batch_normalization_37/Cast_3/ReadVariableOpReadVariableOpPcross_net_7_dense_block_30_batch_normalization_37_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Across_net_7/dense_block_30/batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
?cross_net_7/dense_block_30/batch_normalization_37/batchnorm/addAddV2Ocross_net_7/dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp:value:0Jcross_net_7/dense_block_30/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
Across_net_7/dense_block_30/batch_normalization_37/batchnorm/RsqrtRsqrtCcross_net_7/dense_block_30/batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:??
?cross_net_7/dense_block_30/batch_normalization_37/batchnorm/mulMulEcross_net_7/dense_block_30/batch_normalization_37/batchnorm/Rsqrt:y:0Ocross_net_7/dense_block_30/batch_normalization_37/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
Across_net_7/dense_block_30/batch_normalization_37/batchnorm/mul_1Mul;cross_net_7/dense_block_30/activation_30/Selu:activations:0Ccross_net_7/dense_block_30/batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
Across_net_7/dense_block_30/batch_normalization_37/batchnorm/mul_2MulMcross_net_7/dense_block_30/batch_normalization_37/Cast/ReadVariableOp:value:0Ccross_net_7/dense_block_30/batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
?cross_net_7/dense_block_30/batch_normalization_37/batchnorm/subSubOcross_net_7/dense_block_30/batch_normalization_37/Cast_2/ReadVariableOp:value:0Ecross_net_7/dense_block_30/batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
Across_net_7/dense_block_30/batch_normalization_37/batchnorm/add_1AddV2Ecross_net_7/dense_block_30/batch_normalization_37/batchnorm/mul_1:z:0Ccross_net_7/dense_block_30/batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
,cross_net_7/dense_39/MatMul_2/ReadVariableOpReadVariableOp3cross_net_7_dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
cross_net_7/dense_39/MatMul_2MatMulcross_net_7/add_1:z:04cross_net_7/dense_39/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-cross_net_7/dense_39/BiasAdd_2/ReadVariableOpReadVariableOp4cross_net_7_dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cross_net_7/dense_39/BiasAdd_2BiasAdd'cross_net_7/dense_39/MatMul_2:product:05cross_net_7/dense_39/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
cross_net_7/mul_2Mulinput_1'cross_net_7/dense_39/BiasAdd_2:output:0*
T0*'
_output_shapes
:?????????z
cross_net_7/add_2AddV2cross_net_7/mul_2:z:0cross_net_7/add_1:z:0*
T0*'
_output_shapes
:??????????
9cross_net_7/dense_block_31/dense_38/MatMul/ReadVariableOpReadVariableOpBcross_net_7_dense_block_31_dense_38_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
*cross_net_7/dense_block_31/dense_38/MatMulMatMulEcross_net_7/dense_block_30/batch_normalization_37/batchnorm/add_1:z:0Across_net_7/dense_block_31/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
:cross_net_7/dense_block_31/dense_38/BiasAdd/ReadVariableOpReadVariableOpCcross_net_7_dense_block_31_dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
+cross_net_7/dense_block_31/dense_38/BiasAddBiasAdd4cross_net_7/dense_block_31/dense_38/MatMul:product:0Bcross_net_7/dense_block_31/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
-cross_net_7/dense_block_31/activation_31/SeluSelu4cross_net_7/dense_block_31/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Ecross_net_7/dense_block_31/batch_normalization_38/Cast/ReadVariableOpReadVariableOpNcross_net_7_dense_block_31_batch_normalization_38_cast_readvariableop_resource*
_output_shapes
:@*
dtype0?
Gcross_net_7/dense_block_31/batch_normalization_38/Cast_1/ReadVariableOpReadVariableOpPcross_net_7_dense_block_31_batch_normalization_38_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0?
Gcross_net_7/dense_block_31/batch_normalization_38/Cast_2/ReadVariableOpReadVariableOpPcross_net_7_dense_block_31_batch_normalization_38_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0?
Gcross_net_7/dense_block_31/batch_normalization_38/Cast_3/ReadVariableOpReadVariableOpPcross_net_7_dense_block_31_batch_normalization_38_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0?
Across_net_7/dense_block_31/batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
?cross_net_7/dense_block_31/batch_normalization_38/batchnorm/addAddV2Ocross_net_7/dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp:value:0Jcross_net_7/dense_block_31/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
:@?
Across_net_7/dense_block_31/batch_normalization_38/batchnorm/RsqrtRsqrtCcross_net_7/dense_block_31/batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
:@?
?cross_net_7/dense_block_31/batch_normalization_38/batchnorm/mulMulEcross_net_7/dense_block_31/batch_normalization_38/batchnorm/Rsqrt:y:0Ocross_net_7/dense_block_31/batch_normalization_38/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
Across_net_7/dense_block_31/batch_normalization_38/batchnorm/mul_1Mul;cross_net_7/dense_block_31/activation_31/Selu:activations:0Ccross_net_7/dense_block_31/batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@?
Across_net_7/dense_block_31/batch_normalization_38/batchnorm/mul_2MulMcross_net_7/dense_block_31/batch_normalization_38/Cast/ReadVariableOp:value:0Ccross_net_7/dense_block_31/batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
:@?
?cross_net_7/dense_block_31/batch_normalization_38/batchnorm/subSubOcross_net_7/dense_block_31/batch_normalization_38/Cast_2/ReadVariableOp:value:0Ecross_net_7/dense_block_31/batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@?
Across_net_7/dense_block_31/batch_normalization_38/batchnorm/add_1AddV2Ecross_net_7/dense_block_31/batch_normalization_38/batchnorm/mul_1:z:0Ccross_net_7/dense_block_31/batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@?
,cross_net_7/dense_39/MatMul_3/ReadVariableOpReadVariableOp3cross_net_7_dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
cross_net_7/dense_39/MatMul_3MatMulcross_net_7/add_2:z:04cross_net_7/dense_39/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-cross_net_7/dense_39/BiasAdd_3/ReadVariableOpReadVariableOp4cross_net_7_dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cross_net_7/dense_39/BiasAdd_3BiasAdd'cross_net_7/dense_39/MatMul_3:product:05cross_net_7/dense_39/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
cross_net_7/mul_3Mulinput_1'cross_net_7/dense_39/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????z
cross_net_7/add_3AddV2cross_net_7/mul_3:z:0cross_net_7/add_2:z:0*
T0*'
_output_shapes
:??????????
6cross_net_7/batch_normalization_39/Cast/ReadVariableOpReadVariableOp?cross_net_7_batch_normalization_39_cast_readvariableop_resource*
_output_shapes
:*
dtype0?
8cross_net_7/batch_normalization_39/Cast_1/ReadVariableOpReadVariableOpAcross_net_7_batch_normalization_39_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0?
8cross_net_7/batch_normalization_39/Cast_2/ReadVariableOpReadVariableOpAcross_net_7_batch_normalization_39_cast_2_readvariableop_resource*
_output_shapes
:*
dtype0?
8cross_net_7/batch_normalization_39/Cast_3/ReadVariableOpReadVariableOpAcross_net_7_batch_normalization_39_cast_3_readvariableop_resource*
_output_shapes
:*
dtype0w
2cross_net_7/batch_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
0cross_net_7/batch_normalization_39/batchnorm/addAddV2@cross_net_7/batch_normalization_39/Cast_1/ReadVariableOp:value:0;cross_net_7/batch_normalization_39/batchnorm/add/y:output:0*
T0*
_output_shapes
:?
2cross_net_7/batch_normalization_39/batchnorm/RsqrtRsqrt4cross_net_7/batch_normalization_39/batchnorm/add:z:0*
T0*
_output_shapes
:?
0cross_net_7/batch_normalization_39/batchnorm/mulMul6cross_net_7/batch_normalization_39/batchnorm/Rsqrt:y:0@cross_net_7/batch_normalization_39/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:?
2cross_net_7/batch_normalization_39/batchnorm/mul_1Mulcross_net_7/add_3:z:04cross_net_7/batch_normalization_39/batchnorm/mul:z:0*
T0*'
_output_shapes
:??????????
2cross_net_7/batch_normalization_39/batchnorm/mul_2Mul>cross_net_7/batch_normalization_39/Cast/ReadVariableOp:value:04cross_net_7/batch_normalization_39/batchnorm/mul:z:0*
T0*
_output_shapes
:?
0cross_net_7/batch_normalization_39/batchnorm/subSub@cross_net_7/batch_normalization_39/Cast_2/ReadVariableOp:value:06cross_net_7/batch_normalization_39/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
2cross_net_7/batch_normalization_39/batchnorm/add_1AddV26cross_net_7/batch_normalization_39/batchnorm/mul_1:z:04cross_net_7/batch_normalization_39/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????g
%cross_net_7/concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
 cross_net_7/concatenate_7/concatConcatV2Ecross_net_7/dense_block_31/batch_normalization_38/batchnorm/add_1:z:06cross_net_7/batch_normalization_39/batchnorm/add_1:z:0.cross_net_7/concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????O?
(cross_net_7/output/MatMul/ReadVariableOpReadVariableOp1cross_net_7_output_matmul_readvariableop_resource*
_output_shapes

:O*
dtype0?
cross_net_7/output/MatMulMatMul)cross_net_7/concatenate_7/concat:output:00cross_net_7/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)cross_net_7/output/BiasAdd/ReadVariableOpReadVariableOp2cross_net_7_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
cross_net_7/output/BiasAddBiasAdd#cross_net_7/output/MatMul:product:01cross_net_7/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
cross_net_7/output/SoftmaxSoftmax#cross_net_7/output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????s
IdentityIdentity$cross_net_7/output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp7^cross_net_7/batch_normalization_39/Cast/ReadVariableOp9^cross_net_7/batch_normalization_39/Cast_1/ReadVariableOp9^cross_net_7/batch_normalization_39/Cast_2/ReadVariableOp9^cross_net_7/batch_normalization_39/Cast_3/ReadVariableOp,^cross_net_7/dense_39/BiasAdd/ReadVariableOp.^cross_net_7/dense_39/BiasAdd_1/ReadVariableOp.^cross_net_7/dense_39/BiasAdd_2/ReadVariableOp.^cross_net_7/dense_39/BiasAdd_3/ReadVariableOp+^cross_net_7/dense_39/MatMul/ReadVariableOp-^cross_net_7/dense_39/MatMul_1/ReadVariableOp-^cross_net_7/dense_39/MatMul_2/ReadVariableOp-^cross_net_7/dense_39/MatMul_3/ReadVariableOpF^cross_net_7/dense_block_28/batch_normalization_35/Cast/ReadVariableOpH^cross_net_7/dense_block_28/batch_normalization_35/Cast_1/ReadVariableOpH^cross_net_7/dense_block_28/batch_normalization_35/Cast_2/ReadVariableOpH^cross_net_7/dense_block_28/batch_normalization_35/Cast_3/ReadVariableOp;^cross_net_7/dense_block_28/dense_35/BiasAdd/ReadVariableOp:^cross_net_7/dense_block_28/dense_35/MatMul/ReadVariableOpF^cross_net_7/dense_block_29/batch_normalization_36/Cast/ReadVariableOpH^cross_net_7/dense_block_29/batch_normalization_36/Cast_1/ReadVariableOpH^cross_net_7/dense_block_29/batch_normalization_36/Cast_2/ReadVariableOpH^cross_net_7/dense_block_29/batch_normalization_36/Cast_3/ReadVariableOp;^cross_net_7/dense_block_29/dense_36/BiasAdd/ReadVariableOp:^cross_net_7/dense_block_29/dense_36/MatMul/ReadVariableOpF^cross_net_7/dense_block_30/batch_normalization_37/Cast/ReadVariableOpH^cross_net_7/dense_block_30/batch_normalization_37/Cast_1/ReadVariableOpH^cross_net_7/dense_block_30/batch_normalization_37/Cast_2/ReadVariableOpH^cross_net_7/dense_block_30/batch_normalization_37/Cast_3/ReadVariableOp;^cross_net_7/dense_block_30/dense_37/BiasAdd/ReadVariableOp:^cross_net_7/dense_block_30/dense_37/MatMul/ReadVariableOpF^cross_net_7/dense_block_31/batch_normalization_38/Cast/ReadVariableOpH^cross_net_7/dense_block_31/batch_normalization_38/Cast_1/ReadVariableOpH^cross_net_7/dense_block_31/batch_normalization_38/Cast_2/ReadVariableOpH^cross_net_7/dense_block_31/batch_normalization_38/Cast_3/ReadVariableOp;^cross_net_7/dense_block_31/dense_38/BiasAdd/ReadVariableOp:^cross_net_7/dense_block_31/dense_38/MatMul/ReadVariableOp*^cross_net_7/output/BiasAdd/ReadVariableOp)^cross_net_7/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6cross_net_7/batch_normalization_39/Cast/ReadVariableOp6cross_net_7/batch_normalization_39/Cast/ReadVariableOp2t
8cross_net_7/batch_normalization_39/Cast_1/ReadVariableOp8cross_net_7/batch_normalization_39/Cast_1/ReadVariableOp2t
8cross_net_7/batch_normalization_39/Cast_2/ReadVariableOp8cross_net_7/batch_normalization_39/Cast_2/ReadVariableOp2t
8cross_net_7/batch_normalization_39/Cast_3/ReadVariableOp8cross_net_7/batch_normalization_39/Cast_3/ReadVariableOp2Z
+cross_net_7/dense_39/BiasAdd/ReadVariableOp+cross_net_7/dense_39/BiasAdd/ReadVariableOp2^
-cross_net_7/dense_39/BiasAdd_1/ReadVariableOp-cross_net_7/dense_39/BiasAdd_1/ReadVariableOp2^
-cross_net_7/dense_39/BiasAdd_2/ReadVariableOp-cross_net_7/dense_39/BiasAdd_2/ReadVariableOp2^
-cross_net_7/dense_39/BiasAdd_3/ReadVariableOp-cross_net_7/dense_39/BiasAdd_3/ReadVariableOp2X
*cross_net_7/dense_39/MatMul/ReadVariableOp*cross_net_7/dense_39/MatMul/ReadVariableOp2\
,cross_net_7/dense_39/MatMul_1/ReadVariableOp,cross_net_7/dense_39/MatMul_1/ReadVariableOp2\
,cross_net_7/dense_39/MatMul_2/ReadVariableOp,cross_net_7/dense_39/MatMul_2/ReadVariableOp2\
,cross_net_7/dense_39/MatMul_3/ReadVariableOp,cross_net_7/dense_39/MatMul_3/ReadVariableOp2?
Ecross_net_7/dense_block_28/batch_normalization_35/Cast/ReadVariableOpEcross_net_7/dense_block_28/batch_normalization_35/Cast/ReadVariableOp2?
Gcross_net_7/dense_block_28/batch_normalization_35/Cast_1/ReadVariableOpGcross_net_7/dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp2?
Gcross_net_7/dense_block_28/batch_normalization_35/Cast_2/ReadVariableOpGcross_net_7/dense_block_28/batch_normalization_35/Cast_2/ReadVariableOp2?
Gcross_net_7/dense_block_28/batch_normalization_35/Cast_3/ReadVariableOpGcross_net_7/dense_block_28/batch_normalization_35/Cast_3/ReadVariableOp2x
:cross_net_7/dense_block_28/dense_35/BiasAdd/ReadVariableOp:cross_net_7/dense_block_28/dense_35/BiasAdd/ReadVariableOp2v
9cross_net_7/dense_block_28/dense_35/MatMul/ReadVariableOp9cross_net_7/dense_block_28/dense_35/MatMul/ReadVariableOp2?
Ecross_net_7/dense_block_29/batch_normalization_36/Cast/ReadVariableOpEcross_net_7/dense_block_29/batch_normalization_36/Cast/ReadVariableOp2?
Gcross_net_7/dense_block_29/batch_normalization_36/Cast_1/ReadVariableOpGcross_net_7/dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp2?
Gcross_net_7/dense_block_29/batch_normalization_36/Cast_2/ReadVariableOpGcross_net_7/dense_block_29/batch_normalization_36/Cast_2/ReadVariableOp2?
Gcross_net_7/dense_block_29/batch_normalization_36/Cast_3/ReadVariableOpGcross_net_7/dense_block_29/batch_normalization_36/Cast_3/ReadVariableOp2x
:cross_net_7/dense_block_29/dense_36/BiasAdd/ReadVariableOp:cross_net_7/dense_block_29/dense_36/BiasAdd/ReadVariableOp2v
9cross_net_7/dense_block_29/dense_36/MatMul/ReadVariableOp9cross_net_7/dense_block_29/dense_36/MatMul/ReadVariableOp2?
Ecross_net_7/dense_block_30/batch_normalization_37/Cast/ReadVariableOpEcross_net_7/dense_block_30/batch_normalization_37/Cast/ReadVariableOp2?
Gcross_net_7/dense_block_30/batch_normalization_37/Cast_1/ReadVariableOpGcross_net_7/dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp2?
Gcross_net_7/dense_block_30/batch_normalization_37/Cast_2/ReadVariableOpGcross_net_7/dense_block_30/batch_normalization_37/Cast_2/ReadVariableOp2?
Gcross_net_7/dense_block_30/batch_normalization_37/Cast_3/ReadVariableOpGcross_net_7/dense_block_30/batch_normalization_37/Cast_3/ReadVariableOp2x
:cross_net_7/dense_block_30/dense_37/BiasAdd/ReadVariableOp:cross_net_7/dense_block_30/dense_37/BiasAdd/ReadVariableOp2v
9cross_net_7/dense_block_30/dense_37/MatMul/ReadVariableOp9cross_net_7/dense_block_30/dense_37/MatMul/ReadVariableOp2?
Ecross_net_7/dense_block_31/batch_normalization_38/Cast/ReadVariableOpEcross_net_7/dense_block_31/batch_normalization_38/Cast/ReadVariableOp2?
Gcross_net_7/dense_block_31/batch_normalization_38/Cast_1/ReadVariableOpGcross_net_7/dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp2?
Gcross_net_7/dense_block_31/batch_normalization_38/Cast_2/ReadVariableOpGcross_net_7/dense_block_31/batch_normalization_38/Cast_2/ReadVariableOp2?
Gcross_net_7/dense_block_31/batch_normalization_38/Cast_3/ReadVariableOpGcross_net_7/dense_block_31/batch_normalization_38/Cast_3/ReadVariableOp2x
:cross_net_7/dense_block_31/dense_38/BiasAdd/ReadVariableOp:cross_net_7/dense_block_31/dense_38/BiasAdd/ReadVariableOp2v
9cross_net_7/dense_block_31/dense_38/MatMul/ReadVariableOp9cross_net_7/dense_block_31/dense_38/MatMul/ReadVariableOp2V
)cross_net_7/output/BiasAdd/ReadVariableOp)cross_net_7/output/BiasAdd/ReadVariableOp2T
(cross_net_7/output/MatMul/ReadVariableOp(cross_net_7/output/MatMul/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
u
I__inference_concatenate_7_layer_call_and_return_conditional_losses_134049
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :w
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????OW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????O"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????:Q M
'
_output_shapes
:?????????@
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
??
?E
"__inference__traced_restore_135429
file_prefix>
,assignvariableop_cross_net_7_dense_39_kernel::
,assignvariableop_1_cross_net_7_dense_39_bias:I
;assignvariableop_2_cross_net_7_batch_normalization_39_gamma:H
:assignvariableop_3_cross_net_7_batch_normalization_39_beta:O
Aassignvariableop_4_cross_net_7_batch_normalization_39_moving_mean:S
Eassignvariableop_5_cross_net_7_batch_normalization_39_moving_variance:>
,assignvariableop_6_cross_net_7_output_kernel:O8
*assignvariableop_7_cross_net_7_output_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: Q
>assignvariableop_13_cross_net_7_dense_block_28_dense_35_kernel:	?K
<assignvariableop_14_cross_net_7_dense_block_28_dense_35_bias:	?Z
Kassignvariableop_15_cross_net_7_dense_block_28_batch_normalization_35_gamma:	?Y
Jassignvariableop_16_cross_net_7_dense_block_28_batch_normalization_35_beta:	?R
>assignvariableop_17_cross_net_7_dense_block_29_dense_36_kernel:
??K
<assignvariableop_18_cross_net_7_dense_block_29_dense_36_bias:	?Z
Kassignvariableop_19_cross_net_7_dense_block_29_batch_normalization_36_gamma:	?Y
Jassignvariableop_20_cross_net_7_dense_block_29_batch_normalization_36_beta:	?R
>assignvariableop_21_cross_net_7_dense_block_30_dense_37_kernel:
??K
<assignvariableop_22_cross_net_7_dense_block_30_dense_37_bias:	?Z
Kassignvariableop_23_cross_net_7_dense_block_30_batch_normalization_37_gamma:	?Y
Jassignvariableop_24_cross_net_7_dense_block_30_batch_normalization_37_beta:	?Q
>assignvariableop_25_cross_net_7_dense_block_31_dense_38_kernel:	?@J
<assignvariableop_26_cross_net_7_dense_block_31_dense_38_bias:@Y
Kassignvariableop_27_cross_net_7_dense_block_31_batch_normalization_38_gamma:@X
Jassignvariableop_28_cross_net_7_dense_block_31_batch_normalization_38_beta:@`
Qassignvariableop_29_cross_net_7_dense_block_28_batch_normalization_35_moving_mean:	?d
Uassignvariableop_30_cross_net_7_dense_block_28_batch_normalization_35_moving_variance:	?`
Qassignvariableop_31_cross_net_7_dense_block_29_batch_normalization_36_moving_mean:	?d
Uassignvariableop_32_cross_net_7_dense_block_29_batch_normalization_36_moving_variance:	?`
Qassignvariableop_33_cross_net_7_dense_block_30_batch_normalization_37_moving_mean:	?d
Uassignvariableop_34_cross_net_7_dense_block_30_batch_normalization_37_moving_variance:	?_
Qassignvariableop_35_cross_net_7_dense_block_31_batch_normalization_38_moving_mean:@c
Uassignvariableop_36_cross_net_7_dense_block_31_batch_normalization_38_moving_variance:@#
assignvariableop_37_total: #
assignvariableop_38_count: %
assignvariableop_39_total_1: %
assignvariableop_40_count_1: H
6assignvariableop_41_adam_cross_net_7_dense_39_kernel_m:B
4assignvariableop_42_adam_cross_net_7_dense_39_bias_m:Q
Cassignvariableop_43_adam_cross_net_7_batch_normalization_39_gamma_m:P
Bassignvariableop_44_adam_cross_net_7_batch_normalization_39_beta_m:F
4assignvariableop_45_adam_cross_net_7_output_kernel_m:O@
2assignvariableop_46_adam_cross_net_7_output_bias_m:X
Eassignvariableop_47_adam_cross_net_7_dense_block_28_dense_35_kernel_m:	?R
Cassignvariableop_48_adam_cross_net_7_dense_block_28_dense_35_bias_m:	?a
Rassignvariableop_49_adam_cross_net_7_dense_block_28_batch_normalization_35_gamma_m:	?`
Qassignvariableop_50_adam_cross_net_7_dense_block_28_batch_normalization_35_beta_m:	?Y
Eassignvariableop_51_adam_cross_net_7_dense_block_29_dense_36_kernel_m:
??R
Cassignvariableop_52_adam_cross_net_7_dense_block_29_dense_36_bias_m:	?a
Rassignvariableop_53_adam_cross_net_7_dense_block_29_batch_normalization_36_gamma_m:	?`
Qassignvariableop_54_adam_cross_net_7_dense_block_29_batch_normalization_36_beta_m:	?Y
Eassignvariableop_55_adam_cross_net_7_dense_block_30_dense_37_kernel_m:
??R
Cassignvariableop_56_adam_cross_net_7_dense_block_30_dense_37_bias_m:	?a
Rassignvariableop_57_adam_cross_net_7_dense_block_30_batch_normalization_37_gamma_m:	?`
Qassignvariableop_58_adam_cross_net_7_dense_block_30_batch_normalization_37_beta_m:	?X
Eassignvariableop_59_adam_cross_net_7_dense_block_31_dense_38_kernel_m:	?@Q
Cassignvariableop_60_adam_cross_net_7_dense_block_31_dense_38_bias_m:@`
Rassignvariableop_61_adam_cross_net_7_dense_block_31_batch_normalization_38_gamma_m:@_
Qassignvariableop_62_adam_cross_net_7_dense_block_31_batch_normalization_38_beta_m:@H
6assignvariableop_63_adam_cross_net_7_dense_39_kernel_v:B
4assignvariableop_64_adam_cross_net_7_dense_39_bias_v:Q
Cassignvariableop_65_adam_cross_net_7_batch_normalization_39_gamma_v:P
Bassignvariableop_66_adam_cross_net_7_batch_normalization_39_beta_v:F
4assignvariableop_67_adam_cross_net_7_output_kernel_v:O@
2assignvariableop_68_adam_cross_net_7_output_bias_v:X
Eassignvariableop_69_adam_cross_net_7_dense_block_28_dense_35_kernel_v:	?R
Cassignvariableop_70_adam_cross_net_7_dense_block_28_dense_35_bias_v:	?a
Rassignvariableop_71_adam_cross_net_7_dense_block_28_batch_normalization_35_gamma_v:	?`
Qassignvariableop_72_adam_cross_net_7_dense_block_28_batch_normalization_35_beta_v:	?Y
Eassignvariableop_73_adam_cross_net_7_dense_block_29_dense_36_kernel_v:
??R
Cassignvariableop_74_adam_cross_net_7_dense_block_29_dense_36_bias_v:	?a
Rassignvariableop_75_adam_cross_net_7_dense_block_29_batch_normalization_36_gamma_v:	?`
Qassignvariableop_76_adam_cross_net_7_dense_block_29_batch_normalization_36_beta_v:	?Y
Eassignvariableop_77_adam_cross_net_7_dense_block_30_dense_37_kernel_v:
??R
Cassignvariableop_78_adam_cross_net_7_dense_block_30_dense_37_bias_v:	?a
Rassignvariableop_79_adam_cross_net_7_dense_block_30_batch_normalization_37_gamma_v:	?`
Qassignvariableop_80_adam_cross_net_7_dense_block_30_batch_normalization_37_beta_v:	?X
Eassignvariableop_81_adam_cross_net_7_dense_block_31_dense_38_kernel_v:	?@Q
Cassignvariableop_82_adam_cross_net_7_dense_block_31_dense_38_bias_v:@`
Rassignvariableop_83_adam_cross_net_7_dense_block_31_batch_normalization_38_gamma_v:@_
Qassignvariableop_84_adam_cross_net_7_dense_block_31_batch_normalization_38_beta_v:@
identity_86??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_9?&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?%
value?%B?%VB'dense/kernel/.ATTRIBUTES/VARIABLE_VALUEB%dense/bias/.ATTRIBUTES/VARIABLE_VALUEB'batchn/gamma/.ATTRIBUTES/VARIABLE_VALUEB&batchn/beta/.ATTRIBUTES/VARIABLE_VALUEB-batchn/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB1batchn/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB)softmax/kernel/.ATTRIBUTES/VARIABLE_VALUEB'softmax/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCbatchn/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBbatchn/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBEsoftmax/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCsoftmax/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCdense/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBAdense/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCbatchn/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBbatchn/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBEsoftmax/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCsoftmax/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:V*
dtype0*?
value?B?VB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*d
dtypesZ
X2V	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp,assignvariableop_cross_net_7_dense_39_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp,assignvariableop_1_cross_net_7_dense_39_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp;assignvariableop_2_cross_net_7_batch_normalization_39_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp:assignvariableop_3_cross_net_7_batch_normalization_39_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpAassignvariableop_4_cross_net_7_batch_normalization_39_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpEassignvariableop_5_cross_net_7_batch_normalization_39_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp,assignvariableop_6_cross_net_7_output_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp*assignvariableop_7_cross_net_7_output_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp>assignvariableop_13_cross_net_7_dense_block_28_dense_35_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp<assignvariableop_14_cross_net_7_dense_block_28_dense_35_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpKassignvariableop_15_cross_net_7_dense_block_28_batch_normalization_35_gammaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpJassignvariableop_16_cross_net_7_dense_block_28_batch_normalization_35_betaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp>assignvariableop_17_cross_net_7_dense_block_29_dense_36_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp<assignvariableop_18_cross_net_7_dense_block_29_dense_36_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpKassignvariableop_19_cross_net_7_dense_block_29_batch_normalization_36_gammaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpJassignvariableop_20_cross_net_7_dense_block_29_batch_normalization_36_betaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp>assignvariableop_21_cross_net_7_dense_block_30_dense_37_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp<assignvariableop_22_cross_net_7_dense_block_30_dense_37_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpKassignvariableop_23_cross_net_7_dense_block_30_batch_normalization_37_gammaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpJassignvariableop_24_cross_net_7_dense_block_30_batch_normalization_37_betaIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp>assignvariableop_25_cross_net_7_dense_block_31_dense_38_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp<assignvariableop_26_cross_net_7_dense_block_31_dense_38_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpKassignvariableop_27_cross_net_7_dense_block_31_batch_normalization_38_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpJassignvariableop_28_cross_net_7_dense_block_31_batch_normalization_38_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpQassignvariableop_29_cross_net_7_dense_block_28_batch_normalization_35_moving_meanIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpUassignvariableop_30_cross_net_7_dense_block_28_batch_normalization_35_moving_varianceIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpQassignvariableop_31_cross_net_7_dense_block_29_batch_normalization_36_moving_meanIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpUassignvariableop_32_cross_net_7_dense_block_29_batch_normalization_36_moving_varianceIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpQassignvariableop_33_cross_net_7_dense_block_30_batch_normalization_37_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOpUassignvariableop_34_cross_net_7_dense_block_30_batch_normalization_37_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpQassignvariableop_35_cross_net_7_dense_block_31_batch_normalization_38_moving_meanIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpUassignvariableop_36_cross_net_7_dense_block_31_batch_normalization_38_moving_varianceIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_1Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_cross_net_7_dense_39_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp4assignvariableop_42_adam_cross_net_7_dense_39_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpCassignvariableop_43_adam_cross_net_7_batch_normalization_39_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpBassignvariableop_44_adam_cross_net_7_batch_normalization_39_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp4assignvariableop_45_adam_cross_net_7_output_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp2assignvariableop_46_adam_cross_net_7_output_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOpEassignvariableop_47_adam_cross_net_7_dense_block_28_dense_35_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOpCassignvariableop_48_adam_cross_net_7_dense_block_28_dense_35_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOpRassignvariableop_49_adam_cross_net_7_dense_block_28_batch_normalization_35_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOpQassignvariableop_50_adam_cross_net_7_dense_block_28_batch_normalization_35_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOpEassignvariableop_51_adam_cross_net_7_dense_block_29_dense_36_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOpCassignvariableop_52_adam_cross_net_7_dense_block_29_dense_36_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOpRassignvariableop_53_adam_cross_net_7_dense_block_29_batch_normalization_36_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOpQassignvariableop_54_adam_cross_net_7_dense_block_29_batch_normalization_36_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOpEassignvariableop_55_adam_cross_net_7_dense_block_30_dense_37_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOpCassignvariableop_56_adam_cross_net_7_dense_block_30_dense_37_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOpRassignvariableop_57_adam_cross_net_7_dense_block_30_batch_normalization_37_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOpQassignvariableop_58_adam_cross_net_7_dense_block_30_batch_normalization_37_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOpEassignvariableop_59_adam_cross_net_7_dense_block_31_dense_38_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOpCassignvariableop_60_adam_cross_net_7_dense_block_31_dense_38_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOpRassignvariableop_61_adam_cross_net_7_dense_block_31_batch_normalization_38_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOpQassignvariableop_62_adam_cross_net_7_dense_block_31_batch_normalization_38_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp6assignvariableop_63_adam_cross_net_7_dense_39_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp4assignvariableop_64_adam_cross_net_7_dense_39_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOpCassignvariableop_65_adam_cross_net_7_batch_normalization_39_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOpBassignvariableop_66_adam_cross_net_7_batch_normalization_39_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp4assignvariableop_67_adam_cross_net_7_output_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp2assignvariableop_68_adam_cross_net_7_output_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOpEassignvariableop_69_adam_cross_net_7_dense_block_28_dense_35_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOpCassignvariableop_70_adam_cross_net_7_dense_block_28_dense_35_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOpRassignvariableop_71_adam_cross_net_7_dense_block_28_batch_normalization_35_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOpQassignvariableop_72_adam_cross_net_7_dense_block_28_batch_normalization_35_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOpEassignvariableop_73_adam_cross_net_7_dense_block_29_dense_36_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOpCassignvariableop_74_adam_cross_net_7_dense_block_29_dense_36_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_75AssignVariableOpRassignvariableop_75_adam_cross_net_7_dense_block_29_batch_normalization_36_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_76AssignVariableOpQassignvariableop_76_adam_cross_net_7_dense_block_29_batch_normalization_36_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOpEassignvariableop_77_adam_cross_net_7_dense_block_30_dense_37_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOpCassignvariableop_78_adam_cross_net_7_dense_block_30_dense_37_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_79AssignVariableOpRassignvariableop_79_adam_cross_net_7_dense_block_30_batch_normalization_37_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_80AssignVariableOpQassignvariableop_80_adam_cross_net_7_dense_block_30_batch_normalization_37_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOpEassignvariableop_81_adam_cross_net_7_dense_block_31_dense_38_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_82AssignVariableOpCassignvariableop_82_adam_cross_net_7_dense_block_31_dense_38_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_83AssignVariableOpRassignvariableop_83_adam_cross_net_7_dense_block_31_batch_normalization_38_gamma_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_84AssignVariableOpQassignvariableop_84_adam_cross_net_7_dense_block_31_batch_normalization_38_beta_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_85Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_86IdentityIdentity_85:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_86Identity_86:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?>
?
J__inference_dense_block_29_layer_call_and_return_conditional_losses_134362

inputs;
'dense_36_matmul_readvariableop_resource:
??7
(dense_36_biasadd_readvariableop_resource:	?M
>batch_normalization_36_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_36_assignmovingavg_1_readvariableop_resource:	?B
3batch_normalization_36_cast_readvariableop_resource:	?D
5batch_normalization_36_cast_1_readvariableop_resource:	?
identity??&batch_normalization_36/AssignMovingAvg?5batch_normalization_36/AssignMovingAvg/ReadVariableOp?(batch_normalization_36/AssignMovingAvg_1?7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp?*batch_normalization_36/Cast/ReadVariableOp?,batch_normalization_36/Cast_1/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0|
dense_36/MatMulMatMulinputs&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_29/SeluSeludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
5batch_normalization_36/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_36/moments/meanMean activation_29/Selu:activations:0>batch_normalization_36/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
+batch_normalization_36/moments/StopGradientStopGradient,batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes
:	??
0batch_normalization_36/moments/SquaredDifferenceSquaredDifference activation_29/Selu:activations:04batch_normalization_36/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
9batch_normalization_36/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_36/moments/varianceMean4batch_normalization_36/moments/SquaredDifference:z:0Bbatch_normalization_36/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
&batch_normalization_36/moments/SqueezeSqueeze,batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
(batch_normalization_36/moments/Squeeze_1Squeeze0batch_normalization_36/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 q
,batch_normalization_36/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_36/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_36_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*batch_normalization_36/AssignMovingAvg/subSub=batch_normalization_36/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_36/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
*batch_normalization_36/AssignMovingAvg/mulMul.batch_normalization_36/AssignMovingAvg/sub:z:05batch_normalization_36/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
&batch_normalization_36/AssignMovingAvgAssignSubVariableOp>batch_normalization_36_assignmovingavg_readvariableop_resource.batch_normalization_36/AssignMovingAvg/mul:z:06^batch_normalization_36/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_36/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_36_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/AssignMovingAvg_1/subSub?batch_normalization_36/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_36/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
,batch_normalization_36/AssignMovingAvg_1/mulMul0batch_normalization_36/AssignMovingAvg_1/sub:z:07batch_normalization_36/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
(batch_normalization_36/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_36_assignmovingavg_1_readvariableop_resource0batch_normalization_36/AssignMovingAvg_1/mul:z:08^batch_normalization_36/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
*batch_normalization_36/Cast/ReadVariableOpReadVariableOp3batch_normalization_36_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_36_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_36/batchnorm/addAddV21batch_normalization_36/moments/Squeeze_1:output:0/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_36/batchnorm/RsqrtRsqrt(batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_36/batchnorm/mulMul*batch_normalization_36/batchnorm/Rsqrt:y:04batch_normalization_36/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_36/batchnorm/mul_1Mul activation_29/Selu:activations:0(batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_36/batchnorm/mul_2Mul/batch_normalization_36/moments/Squeeze:output:0(batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_36/batchnorm/subSub2batch_normalization_36/Cast/ReadVariableOp:value:0*batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_36/batchnorm/add_1AddV2*batch_normalization_36/batchnorm/mul_1:z:0(batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????z
IdentityIdentity*batch_normalization_36/batchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp'^batch_normalization_36/AssignMovingAvg6^batch_normalization_36/AssignMovingAvg/ReadVariableOp)^batch_normalization_36/AssignMovingAvg_18^batch_normalization_36/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_36/Cast/ReadVariableOp-^batch_normalization_36/Cast_1/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2P
&batch_normalization_36/AssignMovingAvg&batch_normalization_36/AssignMovingAvg2n
5batch_normalization_36/AssignMovingAvg/ReadVariableOp5batch_normalization_36/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_36/AssignMovingAvg_1(batch_normalization_36/AssignMovingAvg_12r
7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp7batch_normalization_36/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_36/Cast/ReadVariableOp*batch_normalization_36/Cast/ReadVariableOp2\
,batch_normalization_36/Cast_1/ReadVariableOp,batch_normalization_36/Cast_1/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?F
?
J__inference_dense_block_28_layer_call_and_return_conditional_losses_132928

inputs:
'dense_35_matmul_readvariableop_resource:	?7
(dense_35_biasadd_readvariableop_resource:	?M
>batch_normalization_35_assignmovingavg_readvariableop_resource:	?O
@batch_normalization_35_assignmovingavg_1_readvariableop_resource:	?B
3batch_normalization_35_cast_readvariableop_resource:	?D
5batch_normalization_35_cast_1_readvariableop_resource:	?
identity??&batch_normalization_35/AssignMovingAvg?5batch_normalization_35/AssignMovingAvg/ReadVariableOp?(batch_normalization_35/AssignMovingAvg_1?7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp?*batch_normalization_35/Cast/ReadVariableOp?,batch_normalization_35/Cast_1/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0|
dense_35/MatMulMatMulinputs&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_28/SeluSeludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
5batch_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_35/moments/meanMean activation_28/Selu:activations:0>batch_normalization_35/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
+batch_normalization_35/moments/StopGradientStopGradient,batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes
:	??
0batch_normalization_35/moments/SquaredDifferenceSquaredDifference activation_28/Selu:activations:04batch_normalization_35/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
9batch_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_35/moments/varianceMean4batch_normalization_35/moments/SquaredDifference:z:0Bbatch_normalization_35/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
&batch_normalization_35/moments/SqueezeSqueeze,batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
(batch_normalization_35/moments/Squeeze_1Squeeze0batch_normalization_35/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 q
,batch_normalization_35/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_35/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
*batch_normalization_35/AssignMovingAvg/subSub=batch_normalization_35/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_35/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
*batch_normalization_35/AssignMovingAvg/mulMul.batch_normalization_35/AssignMovingAvg/sub:z:05batch_normalization_35/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
&batch_normalization_35/AssignMovingAvgAssignSubVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource.batch_normalization_35/AssignMovingAvg/mul:z:06^batch_normalization_35/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_35/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/AssignMovingAvg_1/subSub?batch_normalization_35/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_35/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
,batch_normalization_35/AssignMovingAvg_1/mulMul0batch_normalization_35/AssignMovingAvg_1/sub:z:07batch_normalization_35/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
(batch_normalization_35/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource0batch_normalization_35/AssignMovingAvg_1/mul:z:08^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
*batch_normalization_35/Cast/ReadVariableOpReadVariableOp3batch_normalization_35_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_35_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_35/batchnorm/addAddV21batch_normalization_35/moments/Squeeze_1:output:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:04batch_normalization_35/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/mul_1Mul activation_28/Selu:activations:0(batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_35/batchnorm/mul_2Mul/batch_normalization_35/moments/Squeeze:output:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_35/batchnorm/subSub2batch_normalization_35/Cast/ReadVariableOp:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????\
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
dropout_7/dropout/MulMul*batch_normalization_35/batchnorm/add_1:z:0 dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:??????????q
dropout_7/dropout/ShapeShape*batch_normalization_35/batchnorm/add_1:z:0*
T0*
_output_shapes
:?
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????k
IdentityIdentitydropout_7/dropout/Mul_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp'^batch_normalization_35/AssignMovingAvg6^batch_normalization_35/AssignMovingAvg/ReadVariableOp)^batch_normalization_35/AssignMovingAvg_18^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_35/Cast/ReadVariableOp-^batch_normalization_35/Cast_1/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2P
&batch_normalization_35/AssignMovingAvg&batch_normalization_35/AssignMovingAvg2n
5batch_normalization_35/AssignMovingAvg/ReadVariableOp5batch_normalization_35/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_35/AssignMovingAvg_1(batch_normalization_35/AssignMovingAvg_12r
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_35/Cast/ReadVariableOp*batch_normalization_35/Cast/ReadVariableOp2\
,batch_normalization_35/Cast_1/ReadVariableOp,batch_normalization_35/Cast_1/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_134806

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?l
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_134129

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_dense_block_31_layer_call_fn_134481

inputs
unknown:	?@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_31_layer_call_and_return_conditional_losses_132482o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_dense_block_28_layer_call_fn_134166

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_28_layer_call_and_return_conditional_losses_132331p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_132285

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_134886

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@*
cast_readvariableop_resource:@,
cast_1_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:@*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
/__inference_dense_block_28_layer_call_fn_134183

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_28_layer_call_and_return_conditional_losses_132928p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_132238

inputs*
cast_readvariableop_resource:,
cast_1_readvariableop_resource:,
cast_2_readvariableop_resource:,
cast_3_readvariableop_resource:
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpl
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes
:*
dtype0p
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:t
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????k
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:m
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_dense_block_29_layer_call_fn_134294

inputs
unknown:
??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_29_layer_call_and_return_conditional_losses_132844p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_134692

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????l
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?n
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_cross_net_7_layer_call_fn_132604
input_1
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
	unknown_6:
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:	?@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:O

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_cross_net_7_layer_call_and_return_conditional_losses_132537o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1
?
?
7__inference_batch_normalization_39_layer_call_fn_134062

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_132238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
J__inference_dense_block_30_layer_call_and_return_conditional_losses_134423

inputs;
'dense_37_matmul_readvariableop_resource:
??7
(dense_37_biasadd_readvariableop_resource:	?B
3batch_normalization_37_cast_readvariableop_resource:	?D
5batch_normalization_37_cast_1_readvariableop_resource:	?D
5batch_normalization_37_cast_2_readvariableop_resource:	?D
5batch_normalization_37_cast_3_readvariableop_resource:	?
identity??*batch_normalization_37/Cast/ReadVariableOp?,batch_normalization_37/Cast_1/ReadVariableOp?,batch_normalization_37/Cast_2/ReadVariableOp?,batch_normalization_37/Cast_3/ReadVariableOp?dense_37/BiasAdd/ReadVariableOp?dense_37/MatMul/ReadVariableOp?
dense_37/MatMul/ReadVariableOpReadVariableOp'dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0|
dense_37/MatMulMatMulinputs&dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_37/BiasAdd/ReadVariableOpReadVariableOp(dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_37/BiasAddBiasAdddense_37/MatMul:product:0'dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_30/SeluSeludense_37/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*batch_normalization_37/Cast/ReadVariableOpReadVariableOp3batch_normalization_37_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_37_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_37_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_37/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_37_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_37/batchnorm/addAddV24batch_normalization_37/Cast_1/ReadVariableOp:value:0/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_37/batchnorm/RsqrtRsqrt(batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_37/batchnorm/mulMul*batch_normalization_37/batchnorm/Rsqrt:y:04batch_normalization_37/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_37/batchnorm/mul_1Mul activation_30/Selu:activations:0(batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_37/batchnorm/mul_2Mul2batch_normalization_37/Cast/ReadVariableOp:value:0(batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_37/batchnorm/subSub4batch_normalization_37/Cast_2/ReadVariableOp:value:0*batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_37/batchnorm/add_1AddV2*batch_normalization_37/batchnorm/mul_1:z:0(batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????z
IdentityIdentity*batch_normalization_37/batchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp+^batch_normalization_37/Cast/ReadVariableOp-^batch_normalization_37/Cast_1/ReadVariableOp-^batch_normalization_37/Cast_2/ReadVariableOp-^batch_normalization_37/Cast_3/ReadVariableOp ^dense_37/BiasAdd/ReadVariableOp^dense_37/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2X
*batch_normalization_37/Cast/ReadVariableOp*batch_normalization_37/Cast/ReadVariableOp2\
,batch_normalization_37/Cast_1/ReadVariableOp,batch_normalization_37/Cast_1/ReadVariableOp2\
,batch_normalization_37/Cast_2/ReadVariableOp,batch_normalization_37/Cast_2/ReadVariableOp2\
,batch_normalization_37/Cast_3/ReadVariableOp,batch_normalization_37/Cast_3/ReadVariableOp2B
dense_37/BiasAdd/ReadVariableOpdense_37/BiasAdd/ReadVariableOp2@
dense_37/MatMul/ReadVariableOpdense_37/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
J__inference_dense_block_28_layer_call_and_return_conditional_losses_132331

inputs:
'dense_35_matmul_readvariableop_resource:	?7
(dense_35_biasadd_readvariableop_resource:	?B
3batch_normalization_35_cast_readvariableop_resource:	?D
5batch_normalization_35_cast_1_readvariableop_resource:	?D
5batch_normalization_35_cast_2_readvariableop_resource:	?D
5batch_normalization_35_cast_3_readvariableop_resource:	?
identity??*batch_normalization_35/Cast/ReadVariableOp?,batch_normalization_35/Cast_1/ReadVariableOp?,batch_normalization_35/Cast_2/ReadVariableOp?,batch_normalization_35/Cast_3/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0|
dense_35/MatMulMatMulinputs&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_28/SeluSeludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*batch_normalization_35/Cast/ReadVariableOpReadVariableOp3batch_normalization_35_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_35_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_35_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_35_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_35/batchnorm/addAddV24batch_normalization_35/Cast_1/ReadVariableOp:value:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:04batch_normalization_35/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/mul_1Mul activation_28/Selu:activations:0(batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_35/batchnorm/mul_2Mul2batch_normalization_35/Cast/ReadVariableOp:value:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_35/batchnorm/subSub4batch_normalization_35/Cast_2/ReadVariableOp:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????}
dropout_7/IdentityIdentity*batch_normalization_35/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????k
IdentityIdentitydropout_7/Identity:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp+^batch_normalization_35/Cast/ReadVariableOp-^batch_normalization_35/Cast_1/ReadVariableOp-^batch_normalization_35/Cast_2/ReadVariableOp-^batch_normalization_35/Cast_3/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2X
*batch_normalization_35/Cast/ReadVariableOp*batch_normalization_35/Cast/ReadVariableOp2\
,batch_normalization_35/Cast_1/ReadVariableOp,batch_normalization_35/Cast_1/ReadVariableOp2\
,batch_normalization_35/Cast_2/ReadVariableOp,batch_normalization_35/Cast_2/ReadVariableOp2\
,batch_normalization_35/Cast_3/ReadVariableOp,batch_normalization_35/Cast_3/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
B__inference_output_layer_call_and_return_conditional_losses_132530

inputs0
matmul_readvariableop_resource:O-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:O*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????O: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????O
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_132074

inputs+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?-
cast_2_readvariableop_resource:	?-
cast_3_readvariableop_resource:	?
identity??Cast/ReadVariableOp?Cast_1/ReadVariableOp?Cast_2/ReadVariableOp?Cast_3/ReadVariableOpm
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_2/ReadVariableOpReadVariableOpcast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_3/ReadVariableOpReadVariableOpcast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:u
batchnorm/addAddV2Cast_1/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????l
batchnorm/mul_2MulCast/ReadVariableOp:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?n
batchnorm/subSubCast_2/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp^Cast_2/ReadVariableOp^Cast_3/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp2.
Cast_2/ReadVariableOpCast_2/ReadVariableOp2.
Cast_3/ReadVariableOpCast_3/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_dense_block_31_layer_call_fn_134498

inputs
unknown:	?@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_31_layer_call_and_return_conditional_losses_132692o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?$
?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_131957

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?+
cast_readvariableop_resource:	?-
cast_1_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	??
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes	
:?*
dtype0q
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?n
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:?d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?l
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_38_layer_call_fn_134832

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_132203o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
,__inference_cross_net_7_layer_call_fn_133644

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:
	unknown_6:
	unknown_7:
??
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:	?

unknown_12:	?

unknown_13:
??

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:	?

unknown_18:	?

unknown_19:	?@

unknown_20:@

unknown_21:@

unknown_22:@

unknown_23:@

unknown_24:@

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:O

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133107o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
/__inference_dense_block_30_layer_call_fn_134396

inputs
unknown:
??
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_block_30_layer_call_and_return_conditional_losses_132768p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_39_layer_call_fn_134026

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_39_layer_call_and_return_conditional_losses_132355o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
J__inference_dense_block_28_layer_call_and_return_conditional_losses_134211

inputs:
'dense_35_matmul_readvariableop_resource:	?7
(dense_35_biasadd_readvariableop_resource:	?B
3batch_normalization_35_cast_readvariableop_resource:	?D
5batch_normalization_35_cast_1_readvariableop_resource:	?D
5batch_normalization_35_cast_2_readvariableop_resource:	?D
5batch_normalization_35_cast_3_readvariableop_resource:	?
identity??*batch_normalization_35/Cast/ReadVariableOp?,batch_normalization_35/Cast_1/ReadVariableOp?,batch_normalization_35/Cast_2/ReadVariableOp?,batch_normalization_35/Cast_3/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0|
dense_35/MatMulMatMulinputs&dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_28/SeluSeludense_35/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*batch_normalization_35/Cast/ReadVariableOpReadVariableOp3batch_normalization_35_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_35_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_35_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_35/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_35_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_35/batchnorm/addAddV24batch_normalization_35/Cast_1/ReadVariableOp:value:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:04batch_normalization_35/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/mul_1Mul activation_28/Selu:activations:0(batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_35/batchnorm/mul_2Mul2batch_normalization_35/Cast/ReadVariableOp:value:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_35/batchnorm/subSub4batch_normalization_35/Cast_2/ReadVariableOp:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????}
dropout_7/IdentityIdentity*batch_normalization_35/batchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????k
IdentityIdentitydropout_7/Identity:output:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp+^batch_normalization_35/Cast/ReadVariableOp-^batch_normalization_35/Cast_1/ReadVariableOp-^batch_normalization_35/Cast_2/ReadVariableOp-^batch_normalization_35/Cast_3/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : 2X
*batch_normalization_35/Cast/ReadVariableOp*batch_normalization_35/Cast/ReadVariableOp2\
,batch_normalization_35/Cast_1/ReadVariableOp,batch_normalization_35/Cast_1/ReadVariableOp2\
,batch_normalization_35/Cast_2/ReadVariableOp,batch_normalization_35/Cast_2/ReadVariableOp2\
,batch_normalization_35/Cast_3/ReadVariableOp,batch_normalization_35/Cast_3/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
7__inference_batch_normalization_36_layer_call_fn_134672

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *[
fVRT
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_132039p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
J__inference_dense_block_29_layer_call_and_return_conditional_losses_134321

inputs;
'dense_36_matmul_readvariableop_resource:
??7
(dense_36_biasadd_readvariableop_resource:	?B
3batch_normalization_36_cast_readvariableop_resource:	?D
5batch_normalization_36_cast_1_readvariableop_resource:	?D
5batch_normalization_36_cast_2_readvariableop_resource:	?D
5batch_normalization_36_cast_3_readvariableop_resource:	?
identity??*batch_normalization_36/Cast/ReadVariableOp?,batch_normalization_36/Cast_1/ReadVariableOp?,batch_normalization_36/Cast_2/ReadVariableOp?,batch_normalization_36/Cast_3/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0|
dense_36/MatMulMatMulinputs&dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????h
activation_29/SeluSeludense_36/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
*batch_normalization_36/Cast/ReadVariableOpReadVariableOp3batch_normalization_36_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_36_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_36_cast_2_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,batch_normalization_36/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_36_cast_3_readvariableop_resource*
_output_shapes	
:?*
dtype0k
&batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_36/batchnorm/addAddV24batch_normalization_36/Cast_1/ReadVariableOp:value:0/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?
&batch_normalization_36/batchnorm/RsqrtRsqrt(batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:??
$batch_normalization_36/batchnorm/mulMul*batch_normalization_36/batchnorm/Rsqrt:y:04batch_normalization_36/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
&batch_normalization_36/batchnorm/mul_1Mul activation_29/Selu:activations:0(batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
&batch_normalization_36/batchnorm/mul_2Mul2batch_normalization_36/Cast/ReadVariableOp:value:0(batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
$batch_normalization_36/batchnorm/subSub4batch_normalization_36/Cast_2/ReadVariableOp:value:0*batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
&batch_normalization_36/batchnorm/add_1AddV2*batch_normalization_36/batchnorm/mul_1:z:0(batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????z
IdentityIdentity*batch_normalization_36/batchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp+^batch_normalization_36/Cast/ReadVariableOp-^batch_normalization_36/Cast_1/ReadVariableOp-^batch_normalization_36/Cast_2/ReadVariableOp-^batch_normalization_36/Cast_3/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2X
*batch_normalization_36/Cast/ReadVariableOp*batch_normalization_36/Cast/ReadVariableOp2\
,batch_normalization_36/Cast_1/ReadVariableOp,batch_normalization_36/Cast_1/ReadVariableOp2\
,batch_normalization_36/Cast_2/ReadVariableOp,batch_normalization_36/Cast_2/ReadVariableOp2\
,batch_normalization_36/Cast_3/ReadVariableOp,batch_normalization_36/Cast_3/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
J__inference_dense_block_31_layer_call_and_return_conditional_losses_134525

inputs:
'dense_38_matmul_readvariableop_resource:	?@6
(dense_38_biasadd_readvariableop_resource:@A
3batch_normalization_38_cast_readvariableop_resource:@C
5batch_normalization_38_cast_1_readvariableop_resource:@C
5batch_normalization_38_cast_2_readvariableop_resource:@C
5batch_normalization_38_cast_3_readvariableop_resource:@
identity??*batch_normalization_38/Cast/ReadVariableOp?,batch_normalization_38/Cast_1/ReadVariableOp?,batch_normalization_38/Cast_2/ReadVariableOp?,batch_normalization_38/Cast_3/ReadVariableOp?dense_38/BiasAdd/ReadVariableOp?dense_38/MatMul/ReadVariableOp?
dense_38/MatMul/ReadVariableOpReadVariableOp'dense_38_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0{
dense_38/MatMulMatMulinputs&dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
dense_38/BiasAdd/ReadVariableOpReadVariableOp(dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_38/BiasAddBiasAdddense_38/MatMul:product:0'dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@g
activation_31/SeluSeludense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
*batch_normalization_38/Cast/ReadVariableOpReadVariableOp3batch_normalization_38_cast_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_38_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/Cast_2/ReadVariableOpReadVariableOp5batch_normalization_38_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0?
,batch_normalization_38/Cast_3/ReadVariableOpReadVariableOp5batch_normalization_38_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0k
&batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_38/batchnorm/addAddV24batch_normalization_38/Cast_1/ReadVariableOp:value:0/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
:@~
&batch_normalization_38/batchnorm/RsqrtRsqrt(batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
:@?
$batch_normalization_38/batchnorm/mulMul*batch_normalization_38/batchnorm/Rsqrt:y:04batch_normalization_38/Cast_3/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
&batch_normalization_38/batchnorm/mul_1Mul activation_31/Selu:activations:0(batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@?
&batch_normalization_38/batchnorm/mul_2Mul2batch_normalization_38/Cast/ReadVariableOp:value:0(batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
:@?
$batch_normalization_38/batchnorm/subSub4batch_normalization_38/Cast_2/ReadVariableOp:value:0*batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@?
&batch_normalization_38/batchnorm/add_1AddV2*batch_normalization_38/batchnorm/mul_1:z:0(batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@y
IdentityIdentity*batch_normalization_38/batchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp+^batch_normalization_38/Cast/ReadVariableOp-^batch_normalization_38/Cast_1/ReadVariableOp-^batch_normalization_38/Cast_2/ReadVariableOp-^batch_normalization_38/Cast_3/ReadVariableOp ^dense_38/BiasAdd/ReadVariableOp^dense_38/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2X
*batch_normalization_38/Cast/ReadVariableOp*batch_normalization_38/Cast/ReadVariableOp2\
,batch_normalization_38/Cast_1/ReadVariableOp,batch_normalization_38/Cast_1/ReadVariableOp2\
,batch_normalization_38/Cast_2/ReadVariableOp,batch_normalization_38/Cast_2/ReadVariableOp2\
,batch_normalization_38/Cast_3/ReadVariableOp,batch_normalization_38/Cast_3/ReadVariableOp2B
dense_38/BiasAdd/ReadVariableOpdense_38/BiasAdd/ReadVariableOp2@
dense_38/MatMul/ReadVariableOpdense_38/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
s
I__inference_concatenate_7_layer_call_and_return_conditional_losses_132517

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :u
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????OW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:?????????O"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????@:?????????:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_132203

inputs5
'assignmovingavg_readvariableop_resource:@7
)assignmovingavg_1_readvariableop_resource:@*
cast_readvariableop_resource:@,
cast_1_readvariableop_resource:@
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?Cast/ReadVariableOp?Cast_1/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0l
Cast/ReadVariableOpReadVariableOpcast_readvariableop_resource*
_output_shapes
:@*
dtype0p
Cast_1/ReadVariableOpReadVariableOpcast_1_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@m
batchnorm/mulMulbatchnorm/Rsqrt:y:0Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@k
batchnorm/subSubCast/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:?????????@?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^Cast/ReadVariableOp^Cast_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2*
Cast/ReadVariableOpCast/ReadVariableOp2.
Cast_1/ReadVariableOpCast_1/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?(
G__inference_cross_net_7_layer_call_and_return_conditional_losses_134017

inputsI
6dense_block_28_dense_35_matmul_readvariableop_resource:	?F
7dense_block_28_dense_35_biasadd_readvariableop_resource:	?\
Mdense_block_28_batch_normalization_35_assignmovingavg_readvariableop_resource:	?^
Odense_block_28_batch_normalization_35_assignmovingavg_1_readvariableop_resource:	?Q
Bdense_block_28_batch_normalization_35_cast_readvariableop_resource:	?S
Ddense_block_28_batch_normalization_35_cast_1_readvariableop_resource:	?9
'dense_39_matmul_readvariableop_resource:6
(dense_39_biasadd_readvariableop_resource:J
6dense_block_29_dense_36_matmul_readvariableop_resource:
??F
7dense_block_29_dense_36_biasadd_readvariableop_resource:	?\
Mdense_block_29_batch_normalization_36_assignmovingavg_readvariableop_resource:	?^
Odense_block_29_batch_normalization_36_assignmovingavg_1_readvariableop_resource:	?Q
Bdense_block_29_batch_normalization_36_cast_readvariableop_resource:	?S
Ddense_block_29_batch_normalization_36_cast_1_readvariableop_resource:	?J
6dense_block_30_dense_37_matmul_readvariableop_resource:
??F
7dense_block_30_dense_37_biasadd_readvariableop_resource:	?\
Mdense_block_30_batch_normalization_37_assignmovingavg_readvariableop_resource:	?^
Odense_block_30_batch_normalization_37_assignmovingavg_1_readvariableop_resource:	?Q
Bdense_block_30_batch_normalization_37_cast_readvariableop_resource:	?S
Ddense_block_30_batch_normalization_37_cast_1_readvariableop_resource:	?I
6dense_block_31_dense_38_matmul_readvariableop_resource:	?@E
7dense_block_31_dense_38_biasadd_readvariableop_resource:@[
Mdense_block_31_batch_normalization_38_assignmovingavg_readvariableop_resource:@]
Odense_block_31_batch_normalization_38_assignmovingavg_1_readvariableop_resource:@P
Bdense_block_31_batch_normalization_38_cast_readvariableop_resource:@R
Ddense_block_31_batch_normalization_38_cast_1_readvariableop_resource:@L
>batch_normalization_39_assignmovingavg_readvariableop_resource:N
@batch_normalization_39_assignmovingavg_1_readvariableop_resource:A
3batch_normalization_39_cast_readvariableop_resource:C
5batch_normalization_39_cast_1_readvariableop_resource:7
%output_matmul_readvariableop_resource:O4
&output_biasadd_readvariableop_resource:
identity??&batch_normalization_39/AssignMovingAvg?5batch_normalization_39/AssignMovingAvg/ReadVariableOp?(batch_normalization_39/AssignMovingAvg_1?7batch_normalization_39/AssignMovingAvg_1/ReadVariableOp?*batch_normalization_39/Cast/ReadVariableOp?,batch_normalization_39/Cast_1/ReadVariableOp?dense_39/BiasAdd/ReadVariableOp?!dense_39/BiasAdd_1/ReadVariableOp?!dense_39/BiasAdd_2/ReadVariableOp?!dense_39/BiasAdd_3/ReadVariableOp?dense_39/MatMul/ReadVariableOp? dense_39/MatMul_1/ReadVariableOp? dense_39/MatMul_2/ReadVariableOp? dense_39/MatMul_3/ReadVariableOp?5dense_block_28/batch_normalization_35/AssignMovingAvg?Ddense_block_28/batch_normalization_35/AssignMovingAvg/ReadVariableOp?7dense_block_28/batch_normalization_35/AssignMovingAvg_1?Fdense_block_28/batch_normalization_35/AssignMovingAvg_1/ReadVariableOp?9dense_block_28/batch_normalization_35/Cast/ReadVariableOp?;dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp?.dense_block_28/dense_35/BiasAdd/ReadVariableOp?-dense_block_28/dense_35/MatMul/ReadVariableOp?5dense_block_29/batch_normalization_36/AssignMovingAvg?Ddense_block_29/batch_normalization_36/AssignMovingAvg/ReadVariableOp?7dense_block_29/batch_normalization_36/AssignMovingAvg_1?Fdense_block_29/batch_normalization_36/AssignMovingAvg_1/ReadVariableOp?9dense_block_29/batch_normalization_36/Cast/ReadVariableOp?;dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp?.dense_block_29/dense_36/BiasAdd/ReadVariableOp?-dense_block_29/dense_36/MatMul/ReadVariableOp?5dense_block_30/batch_normalization_37/AssignMovingAvg?Ddense_block_30/batch_normalization_37/AssignMovingAvg/ReadVariableOp?7dense_block_30/batch_normalization_37/AssignMovingAvg_1?Fdense_block_30/batch_normalization_37/AssignMovingAvg_1/ReadVariableOp?9dense_block_30/batch_normalization_37/Cast/ReadVariableOp?;dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp?.dense_block_30/dense_37/BiasAdd/ReadVariableOp?-dense_block_30/dense_37/MatMul/ReadVariableOp?5dense_block_31/batch_normalization_38/AssignMovingAvg?Ddense_block_31/batch_normalization_38/AssignMovingAvg/ReadVariableOp?7dense_block_31/batch_normalization_38/AssignMovingAvg_1?Fdense_block_31/batch_normalization_38/AssignMovingAvg_1/ReadVariableOp?9dense_block_31/batch_normalization_38/Cast/ReadVariableOp?;dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp?.dense_block_31/dense_38/BiasAdd/ReadVariableOp?-dense_block_31/dense_38/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOp?
-dense_block_28/dense_35/MatMul/ReadVariableOpReadVariableOp6dense_block_28_dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_block_28/dense_35/MatMulMatMulinputs5dense_block_28/dense_35/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.dense_block_28/dense_35/BiasAdd/ReadVariableOpReadVariableOp7dense_block_28_dense_35_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_block_28/dense_35/BiasAddBiasAdd(dense_block_28/dense_35/MatMul:product:06dense_block_28/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!dense_block_28/activation_28/SeluSelu(dense_block_28/dense_35/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
Ddense_block_28/batch_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
2dense_block_28/batch_normalization_35/moments/meanMean/dense_block_28/activation_28/Selu:activations:0Mdense_block_28/batch_normalization_35/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
:dense_block_28/batch_normalization_35/moments/StopGradientStopGradient;dense_block_28/batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes
:	??
?dense_block_28/batch_normalization_35/moments/SquaredDifferenceSquaredDifference/dense_block_28/activation_28/Selu:activations:0Cdense_block_28/batch_normalization_35/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
Hdense_block_28/batch_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
6dense_block_28/batch_normalization_35/moments/varianceMeanCdense_block_28/batch_normalization_35/moments/SquaredDifference:z:0Qdense_block_28/batch_normalization_35/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
5dense_block_28/batch_normalization_35/moments/SqueezeSqueeze;dense_block_28/batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
7dense_block_28/batch_normalization_35/moments/Squeeze_1Squeeze?dense_block_28/batch_normalization_35/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
;dense_block_28/batch_normalization_35/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
Ddense_block_28/batch_normalization_35/AssignMovingAvg/ReadVariableOpReadVariableOpMdense_block_28_batch_normalization_35_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9dense_block_28/batch_normalization_35/AssignMovingAvg/subSubLdense_block_28/batch_normalization_35/AssignMovingAvg/ReadVariableOp:value:0>dense_block_28/batch_normalization_35/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
9dense_block_28/batch_normalization_35/AssignMovingAvg/mulMul=dense_block_28/batch_normalization_35/AssignMovingAvg/sub:z:0Ddense_block_28/batch_normalization_35/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
5dense_block_28/batch_normalization_35/AssignMovingAvgAssignSubVariableOpMdense_block_28_batch_normalization_35_assignmovingavg_readvariableop_resource=dense_block_28/batch_normalization_35/AssignMovingAvg/mul:z:0E^dense_block_28/batch_normalization_35/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0?
=dense_block_28/batch_normalization_35/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
Fdense_block_28/batch_normalization_35/AssignMovingAvg_1/ReadVariableOpReadVariableOpOdense_block_28_batch_normalization_35_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_28/batch_normalization_35/AssignMovingAvg_1/subSubNdense_block_28/batch_normalization_35/AssignMovingAvg_1/ReadVariableOp:value:0@dense_block_28/batch_normalization_35/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
;dense_block_28/batch_normalization_35/AssignMovingAvg_1/mulMul?dense_block_28/batch_normalization_35/AssignMovingAvg_1/sub:z:0Fdense_block_28/batch_normalization_35/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
7dense_block_28/batch_normalization_35/AssignMovingAvg_1AssignSubVariableOpOdense_block_28_batch_normalization_35_assignmovingavg_1_readvariableop_resource?dense_block_28/batch_normalization_35/AssignMovingAvg_1/mul:z:0G^dense_block_28/batch_normalization_35/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
9dense_block_28/batch_normalization_35/Cast/ReadVariableOpReadVariableOpBdense_block_28_batch_normalization_35_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_28/batch_normalization_35/Cast_1/ReadVariableOpReadVariableOpDdense_block_28_batch_normalization_35_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0z
5dense_block_28/batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3dense_block_28/batch_normalization_35/batchnorm/addAddV2@dense_block_28/batch_normalization_35/moments/Squeeze_1:output:0>dense_block_28/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
5dense_block_28/batch_normalization_35/batchnorm/RsqrtRsqrt7dense_block_28/batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3dense_block_28/batch_normalization_35/batchnorm/mulMul9dense_block_28/batch_normalization_35/batchnorm/Rsqrt:y:0Cdense_block_28/batch_normalization_35/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
5dense_block_28/batch_normalization_35/batchnorm/mul_1Mul/dense_block_28/activation_28/Selu:activations:07dense_block_28/batch_normalization_35/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
5dense_block_28/batch_normalization_35/batchnorm/mul_2Mul>dense_block_28/batch_normalization_35/moments/Squeeze:output:07dense_block_28/batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
3dense_block_28/batch_normalization_35/batchnorm/subSubAdense_block_28/batch_normalization_35/Cast/ReadVariableOp:value:09dense_block_28/batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
5dense_block_28/batch_normalization_35/batchnorm/add_1AddV29dense_block_28/batch_normalization_35/batchnorm/mul_1:z:07dense_block_28/batch_normalization_35/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????k
&dense_block_28/dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8???
$dense_block_28/dropout_7/dropout/MulMul9dense_block_28/batch_normalization_35/batchnorm/add_1:z:0/dense_block_28/dropout_7/dropout/Const:output:0*
T0*(
_output_shapes
:???????????
&dense_block_28/dropout_7/dropout/ShapeShape9dense_block_28/batch_normalization_35/batchnorm/add_1:z:0*
T0*
_output_shapes
:?
=dense_block_28/dropout_7/dropout/random_uniform/RandomUniformRandomUniform/dense_block_28/dropout_7/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0t
/dense_block_28/dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=?
-dense_block_28/dropout_7/dropout/GreaterEqualGreaterEqualFdense_block_28/dropout_7/dropout/random_uniform/RandomUniform:output:08dense_block_28/dropout_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
%dense_block_28/dropout_7/dropout/CastCast1dense_block_28/dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
&dense_block_28/dropout_7/dropout/Mul_1Mul(dense_block_28/dropout_7/dropout/Mul:z:0)dense_block_28/dropout_7/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_39/MatMul/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0{
dense_39/MatMulMatMulinputs&dense_39/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_39/BiasAdd/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_39/BiasAddBiasAdddense_39/MatMul:product:0'dense_39/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
mulMulinputsdense_39/BiasAdd:output:0*
T0*'
_output_shapes
:?????????O
addAddV2mul:z:0inputs*
T0*'
_output_shapes
:??????????
-dense_block_29/dense_36/MatMul/ReadVariableOpReadVariableOp6dense_block_29_dense_36_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_block_29/dense_36/MatMulMatMul*dense_block_28/dropout_7/dropout/Mul_1:z:05dense_block_29/dense_36/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.dense_block_29/dense_36/BiasAdd/ReadVariableOpReadVariableOp7dense_block_29_dense_36_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_block_29/dense_36/BiasAddBiasAdd(dense_block_29/dense_36/MatMul:product:06dense_block_29/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!dense_block_29/activation_29/SeluSelu(dense_block_29/dense_36/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
Ddense_block_29/batch_normalization_36/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
2dense_block_29/batch_normalization_36/moments/meanMean/dense_block_29/activation_29/Selu:activations:0Mdense_block_29/batch_normalization_36/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
:dense_block_29/batch_normalization_36/moments/StopGradientStopGradient;dense_block_29/batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes
:	??
?dense_block_29/batch_normalization_36/moments/SquaredDifferenceSquaredDifference/dense_block_29/activation_29/Selu:activations:0Cdense_block_29/batch_normalization_36/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
Hdense_block_29/batch_normalization_36/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
6dense_block_29/batch_normalization_36/moments/varianceMeanCdense_block_29/batch_normalization_36/moments/SquaredDifference:z:0Qdense_block_29/batch_normalization_36/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
5dense_block_29/batch_normalization_36/moments/SqueezeSqueeze;dense_block_29/batch_normalization_36/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
7dense_block_29/batch_normalization_36/moments/Squeeze_1Squeeze?dense_block_29/batch_normalization_36/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
;dense_block_29/batch_normalization_36/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
Ddense_block_29/batch_normalization_36/AssignMovingAvg/ReadVariableOpReadVariableOpMdense_block_29_batch_normalization_36_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9dense_block_29/batch_normalization_36/AssignMovingAvg/subSubLdense_block_29/batch_normalization_36/AssignMovingAvg/ReadVariableOp:value:0>dense_block_29/batch_normalization_36/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
9dense_block_29/batch_normalization_36/AssignMovingAvg/mulMul=dense_block_29/batch_normalization_36/AssignMovingAvg/sub:z:0Ddense_block_29/batch_normalization_36/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
5dense_block_29/batch_normalization_36/AssignMovingAvgAssignSubVariableOpMdense_block_29_batch_normalization_36_assignmovingavg_readvariableop_resource=dense_block_29/batch_normalization_36/AssignMovingAvg/mul:z:0E^dense_block_29/batch_normalization_36/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0?
=dense_block_29/batch_normalization_36/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
Fdense_block_29/batch_normalization_36/AssignMovingAvg_1/ReadVariableOpReadVariableOpOdense_block_29_batch_normalization_36_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_29/batch_normalization_36/AssignMovingAvg_1/subSubNdense_block_29/batch_normalization_36/AssignMovingAvg_1/ReadVariableOp:value:0@dense_block_29/batch_normalization_36/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
;dense_block_29/batch_normalization_36/AssignMovingAvg_1/mulMul?dense_block_29/batch_normalization_36/AssignMovingAvg_1/sub:z:0Fdense_block_29/batch_normalization_36/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
7dense_block_29/batch_normalization_36/AssignMovingAvg_1AssignSubVariableOpOdense_block_29_batch_normalization_36_assignmovingavg_1_readvariableop_resource?dense_block_29/batch_normalization_36/AssignMovingAvg_1/mul:z:0G^dense_block_29/batch_normalization_36/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
9dense_block_29/batch_normalization_36/Cast/ReadVariableOpReadVariableOpBdense_block_29_batch_normalization_36_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_29/batch_normalization_36/Cast_1/ReadVariableOpReadVariableOpDdense_block_29_batch_normalization_36_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0z
5dense_block_29/batch_normalization_36/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3dense_block_29/batch_normalization_36/batchnorm/addAddV2@dense_block_29/batch_normalization_36/moments/Squeeze_1:output:0>dense_block_29/batch_normalization_36/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
5dense_block_29/batch_normalization_36/batchnorm/RsqrtRsqrt7dense_block_29/batch_normalization_36/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3dense_block_29/batch_normalization_36/batchnorm/mulMul9dense_block_29/batch_normalization_36/batchnorm/Rsqrt:y:0Cdense_block_29/batch_normalization_36/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
5dense_block_29/batch_normalization_36/batchnorm/mul_1Mul/dense_block_29/activation_29/Selu:activations:07dense_block_29/batch_normalization_36/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
5dense_block_29/batch_normalization_36/batchnorm/mul_2Mul>dense_block_29/batch_normalization_36/moments/Squeeze:output:07dense_block_29/batch_normalization_36/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
3dense_block_29/batch_normalization_36/batchnorm/subSubAdense_block_29/batch_normalization_36/Cast/ReadVariableOp:value:09dense_block_29/batch_normalization_36/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
5dense_block_29/batch_normalization_36/batchnorm/add_1AddV29dense_block_29/batch_normalization_36/batchnorm/mul_1:z:07dense_block_29/batch_normalization_36/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
 dense_39/MatMul_1/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_39/MatMul_1MatMuladd:z:0(dense_39/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_39/BiasAdd_1/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_39/BiasAdd_1BiasAdddense_39/MatMul_1:product:0)dense_39/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
mul_1Mulinputsdense_39/BiasAdd_1:output:0*
T0*'
_output_shapes
:?????????T
add_1AddV2	mul_1:z:0add:z:0*
T0*'
_output_shapes
:??????????
-dense_block_30/dense_37/MatMul/ReadVariableOpReadVariableOp6dense_block_30_dense_37_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype0?
dense_block_30/dense_37/MatMulMatMul9dense_block_29/batch_normalization_36/batchnorm/add_1:z:05dense_block_30/dense_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
.dense_block_30/dense_37/BiasAdd/ReadVariableOpReadVariableOp7dense_block_30_dense_37_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_block_30/dense_37/BiasAddBiasAdd(dense_block_30/dense_37/MatMul:product:06dense_block_30/dense_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
!dense_block_30/activation_30/SeluSelu(dense_block_30/dense_37/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
Ddense_block_30/batch_normalization_37/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
2dense_block_30/batch_normalization_37/moments/meanMean/dense_block_30/activation_30/Selu:activations:0Mdense_block_30/batch_normalization_37/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
:dense_block_30/batch_normalization_37/moments/StopGradientStopGradient;dense_block_30/batch_normalization_37/moments/mean:output:0*
T0*
_output_shapes
:	??
?dense_block_30/batch_normalization_37/moments/SquaredDifferenceSquaredDifference/dense_block_30/activation_30/Selu:activations:0Cdense_block_30/batch_normalization_37/moments/StopGradient:output:0*
T0*(
_output_shapes
:???????????
Hdense_block_30/batch_normalization_37/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
6dense_block_30/batch_normalization_37/moments/varianceMeanCdense_block_30/batch_normalization_37/moments/SquaredDifference:z:0Qdense_block_30/batch_normalization_37/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(?
5dense_block_30/batch_normalization_37/moments/SqueezeSqueeze;dense_block_30/batch_normalization_37/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
7dense_block_30/batch_normalization_37/moments/Squeeze_1Squeeze?dense_block_30/batch_normalization_37/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
;dense_block_30/batch_normalization_37/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
Ddense_block_30/batch_normalization_37/AssignMovingAvg/ReadVariableOpReadVariableOpMdense_block_30_batch_normalization_37_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
9dense_block_30/batch_normalization_37/AssignMovingAvg/subSubLdense_block_30/batch_normalization_37/AssignMovingAvg/ReadVariableOp:value:0>dense_block_30/batch_normalization_37/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
9dense_block_30/batch_normalization_37/AssignMovingAvg/mulMul=dense_block_30/batch_normalization_37/AssignMovingAvg/sub:z:0Ddense_block_30/batch_normalization_37/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
5dense_block_30/batch_normalization_37/AssignMovingAvgAssignSubVariableOpMdense_block_30_batch_normalization_37_assignmovingavg_readvariableop_resource=dense_block_30/batch_normalization_37/AssignMovingAvg/mul:z:0E^dense_block_30/batch_normalization_37/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0?
=dense_block_30/batch_normalization_37/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
Fdense_block_30/batch_normalization_37/AssignMovingAvg_1/ReadVariableOpReadVariableOpOdense_block_30_batch_normalization_37_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_30/batch_normalization_37/AssignMovingAvg_1/subSubNdense_block_30/batch_normalization_37/AssignMovingAvg_1/ReadVariableOp:value:0@dense_block_30/batch_normalization_37/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
;dense_block_30/batch_normalization_37/AssignMovingAvg_1/mulMul?dense_block_30/batch_normalization_37/AssignMovingAvg_1/sub:z:0Fdense_block_30/batch_normalization_37/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
7dense_block_30/batch_normalization_37/AssignMovingAvg_1AssignSubVariableOpOdense_block_30_batch_normalization_37_assignmovingavg_1_readvariableop_resource?dense_block_30/batch_normalization_37/AssignMovingAvg_1/mul:z:0G^dense_block_30/batch_normalization_37/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
9dense_block_30/batch_normalization_37/Cast/ReadVariableOpReadVariableOpBdense_block_30_batch_normalization_37_cast_readvariableop_resource*
_output_shapes	
:?*
dtype0?
;dense_block_30/batch_normalization_37/Cast_1/ReadVariableOpReadVariableOpDdense_block_30_batch_normalization_37_cast_1_readvariableop_resource*
_output_shapes	
:?*
dtype0z
5dense_block_30/batch_normalization_37/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3dense_block_30/batch_normalization_37/batchnorm/addAddV2@dense_block_30/batch_normalization_37/moments/Squeeze_1:output:0>dense_block_30/batch_normalization_37/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
5dense_block_30/batch_normalization_37/batchnorm/RsqrtRsqrt7dense_block_30/batch_normalization_37/batchnorm/add:z:0*
T0*
_output_shapes	
:??
3dense_block_30/batch_normalization_37/batchnorm/mulMul9dense_block_30/batch_normalization_37/batchnorm/Rsqrt:y:0Cdense_block_30/batch_normalization_37/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
5dense_block_30/batch_normalization_37/batchnorm/mul_1Mul/dense_block_30/activation_30/Selu:activations:07dense_block_30/batch_normalization_37/batchnorm/mul:z:0*
T0*(
_output_shapes
:???????????
5dense_block_30/batch_normalization_37/batchnorm/mul_2Mul>dense_block_30/batch_normalization_37/moments/Squeeze:output:07dense_block_30/batch_normalization_37/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
3dense_block_30/batch_normalization_37/batchnorm/subSubAdense_block_30/batch_normalization_37/Cast/ReadVariableOp:value:09dense_block_30/batch_normalization_37/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
5dense_block_30/batch_normalization_37/batchnorm/add_1AddV29dense_block_30/batch_normalization_37/batchnorm/mul_1:z:07dense_block_30/batch_normalization_37/batchnorm/sub:z:0*
T0*(
_output_shapes
:???????????
 dense_39/MatMul_2/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_39/MatMul_2MatMul	add_1:z:0(dense_39/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_39/BiasAdd_2/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_39/BiasAdd_2BiasAdddense_39/MatMul_2:product:0)dense_39/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
mul_2Mulinputsdense_39/BiasAdd_2:output:0*
T0*'
_output_shapes
:?????????V
add_2AddV2	mul_2:z:0	add_1:z:0*
T0*'
_output_shapes
:??????????
-dense_block_31/dense_38/MatMul/ReadVariableOpReadVariableOp6dense_block_31_dense_38_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
dense_block_31/dense_38/MatMulMatMul9dense_block_30/batch_normalization_37/batchnorm/add_1:z:05dense_block_31/dense_38/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
.dense_block_31/dense_38/BiasAdd/ReadVariableOpReadVariableOp7dense_block_31_dense_38_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
dense_block_31/dense_38/BiasAddBiasAdd(dense_block_31/dense_38/MatMul:product:06dense_block_31/dense_38/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
!dense_block_31/activation_31/SeluSelu(dense_block_31/dense_38/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
Ddense_block_31/batch_normalization_38/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
2dense_block_31/batch_normalization_38/moments/meanMean/dense_block_31/activation_31/Selu:activations:0Mdense_block_31/batch_normalization_38/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(?
:dense_block_31/batch_normalization_38/moments/StopGradientStopGradient;dense_block_31/batch_normalization_38/moments/mean:output:0*
T0*
_output_shapes

:@?
?dense_block_31/batch_normalization_38/moments/SquaredDifferenceSquaredDifference/dense_block_31/activation_31/Selu:activations:0Cdense_block_31/batch_normalization_38/moments/StopGradient:output:0*
T0*'
_output_shapes
:?????????@?
Hdense_block_31/batch_normalization_38/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
6dense_block_31/batch_normalization_38/moments/varianceMeanCdense_block_31/batch_normalization_38/moments/SquaredDifference:z:0Qdense_block_31/batch_normalization_38/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(?
5dense_block_31/batch_normalization_38/moments/SqueezeSqueeze;dense_block_31/batch_normalization_38/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 ?
7dense_block_31/batch_normalization_38/moments/Squeeze_1Squeeze?dense_block_31/batch_normalization_38/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 ?
;dense_block_31/batch_normalization_38/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
Ddense_block_31/batch_normalization_38/AssignMovingAvg/ReadVariableOpReadVariableOpMdense_block_31_batch_normalization_38_assignmovingavg_readvariableop_resource*
_output_shapes
:@*
dtype0?
9dense_block_31/batch_normalization_38/AssignMovingAvg/subSubLdense_block_31/batch_normalization_38/AssignMovingAvg/ReadVariableOp:value:0>dense_block_31/batch_normalization_38/moments/Squeeze:output:0*
T0*
_output_shapes
:@?
9dense_block_31/batch_normalization_38/AssignMovingAvg/mulMul=dense_block_31/batch_normalization_38/AssignMovingAvg/sub:z:0Ddense_block_31/batch_normalization_38/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@?
5dense_block_31/batch_normalization_38/AssignMovingAvgAssignSubVariableOpMdense_block_31_batch_normalization_38_assignmovingavg_readvariableop_resource=dense_block_31/batch_normalization_38/AssignMovingAvg/mul:z:0E^dense_block_31/batch_normalization_38/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0?
=dense_block_31/batch_normalization_38/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
Fdense_block_31/batch_normalization_38/AssignMovingAvg_1/ReadVariableOpReadVariableOpOdense_block_31_batch_normalization_38_assignmovingavg_1_readvariableop_resource*
_output_shapes
:@*
dtype0?
;dense_block_31/batch_normalization_38/AssignMovingAvg_1/subSubNdense_block_31/batch_normalization_38/AssignMovingAvg_1/ReadVariableOp:value:0@dense_block_31/batch_normalization_38/moments/Squeeze_1:output:0*
T0*
_output_shapes
:@?
;dense_block_31/batch_normalization_38/AssignMovingAvg_1/mulMul?dense_block_31/batch_normalization_38/AssignMovingAvg_1/sub:z:0Fdense_block_31/batch_normalization_38/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@?
7dense_block_31/batch_normalization_38/AssignMovingAvg_1AssignSubVariableOpOdense_block_31_batch_normalization_38_assignmovingavg_1_readvariableop_resource?dense_block_31/batch_normalization_38/AssignMovingAvg_1/mul:z:0G^dense_block_31/batch_normalization_38/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
9dense_block_31/batch_normalization_38/Cast/ReadVariableOpReadVariableOpBdense_block_31_batch_normalization_38_cast_readvariableop_resource*
_output_shapes
:@*
dtype0?
;dense_block_31/batch_normalization_38/Cast_1/ReadVariableOpReadVariableOpDdense_block_31_batch_normalization_38_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0z
5dense_block_31/batch_normalization_38/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3dense_block_31/batch_normalization_38/batchnorm/addAddV2@dense_block_31/batch_normalization_38/moments/Squeeze_1:output:0>dense_block_31/batch_normalization_38/batchnorm/add/y:output:0*
T0*
_output_shapes
:@?
5dense_block_31/batch_normalization_38/batchnorm/RsqrtRsqrt7dense_block_31/batch_normalization_38/batchnorm/add:z:0*
T0*
_output_shapes
:@?
3dense_block_31/batch_normalization_38/batchnorm/mulMul9dense_block_31/batch_normalization_38/batchnorm/Rsqrt:y:0Cdense_block_31/batch_normalization_38/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@?
5dense_block_31/batch_normalization_38/batchnorm/mul_1Mul/dense_block_31/activation_31/Selu:activations:07dense_block_31/batch_normalization_38/batchnorm/mul:z:0*
T0*'
_output_shapes
:?????????@?
5dense_block_31/batch_normalization_38/batchnorm/mul_2Mul>dense_block_31/batch_normalization_38/moments/Squeeze:output:07dense_block_31/batch_normalization_38/batchnorm/mul:z:0*
T0*
_output_shapes
:@?
3dense_block_31/batch_normalization_38/batchnorm/subSubAdense_block_31/batch_normalization_38/Cast/ReadVariableOp:value:09dense_block_31/batch_normalization_38/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@?
5dense_block_31/batch_normalization_38/batchnorm/add_1AddV29dense_block_31/batch_normalization_38/batchnorm/mul_1:z:07dense_block_31/batch_normalization_38/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????@?
 dense_39/MatMul_3/ReadVariableOpReadVariableOp'dense_39_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_39/MatMul_3MatMul	add_2:z:0(dense_39/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!dense_39/BiasAdd_3/ReadVariableOpReadVariableOp(dense_39_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_39/BiasAdd_3BiasAdddense_39/MatMul_3:product:0)dense_39/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
mul_3Mulinputsdense_39/BiasAdd_3:output:0*
T0*'
_output_shapes
:?????????V
add_3AddV2	mul_3:z:0	add_2:z:0*
T0*'
_output_shapes
:?????????
5batch_normalization_39/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
#batch_normalization_39/moments/meanMean	add_3:z:0>batch_normalization_39/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(?
+batch_normalization_39/moments/StopGradientStopGradient,batch_normalization_39/moments/mean:output:0*
T0*
_output_shapes

:?
0batch_normalization_39/moments/SquaredDifferenceSquaredDifference	add_3:z:04batch_normalization_39/moments/StopGradient:output:0*
T0*'
_output_shapes
:??????????
9batch_normalization_39/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
'batch_normalization_39/moments/varianceMean4batch_normalization_39/moments/SquaredDifference:z:0Bbatch_normalization_39/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(?
&batch_normalization_39/moments/SqueezeSqueeze,batch_normalization_39/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ?
(batch_normalization_39/moments/Squeeze_1Squeeze0batch_normalization_39/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_39/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
5batch_normalization_39/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_39_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
*batch_normalization_39/AssignMovingAvg/subSub=batch_normalization_39/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_39/moments/Squeeze:output:0*
T0*
_output_shapes
:?
*batch_normalization_39/AssignMovingAvg/mulMul.batch_normalization_39/AssignMovingAvg/sub:z:05batch_normalization_39/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
&batch_normalization_39/AssignMovingAvgAssignSubVariableOp>batch_normalization_39_assignmovingavg_readvariableop_resource.batch_normalization_39/AssignMovingAvg/mul:z:06^batch_normalization_39/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_39/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7batch_normalization_39/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_39_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
,batch_normalization_39/AssignMovingAvg_1/subSub?batch_normalization_39/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_39/moments/Squeeze_1:output:0*
T0*
_output_shapes
:?
,batch_normalization_39/AssignMovingAvg_1/mulMul0batch_normalization_39/AssignMovingAvg_1/sub:z:07batch_normalization_39/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
(batch_normalization_39/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_39_assignmovingavg_1_readvariableop_resource0batch_normalization_39/AssignMovingAvg_1/mul:z:08^batch_normalization_39/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0?
*batch_normalization_39/Cast/ReadVariableOpReadVariableOp3batch_normalization_39_cast_readvariableop_resource*
_output_shapes
:*
dtype0?
,batch_normalization_39/Cast_1/ReadVariableOpReadVariableOp5batch_normalization_39_cast_1_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_39/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
$batch_normalization_39/batchnorm/addAddV21batch_normalization_39/moments/Squeeze_1:output:0/batch_normalization_39/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_39/batchnorm/RsqrtRsqrt(batch_normalization_39/batchnorm/add:z:0*
T0*
_output_shapes
:?
$batch_normalization_39/batchnorm/mulMul*batch_normalization_39/batchnorm/Rsqrt:y:04batch_normalization_39/Cast_1/ReadVariableOp:value:0*
T0*
_output_shapes
:?
&batch_normalization_39/batchnorm/mul_1Mul	add_3:z:0(batch_normalization_39/batchnorm/mul:z:0*
T0*'
_output_shapes
:??????????
&batch_normalization_39/batchnorm/mul_2Mul/batch_normalization_39/moments/Squeeze:output:0(batch_normalization_39/batchnorm/mul:z:0*
T0*
_output_shapes
:?
$batch_normalization_39/batchnorm/subSub2batch_normalization_39/Cast/ReadVariableOp:value:0*batch_normalization_39/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
&batch_normalization_39/batchnorm/add_1AddV2*batch_normalization_39/batchnorm/mul_1:z:0(batch_normalization_39/batchnorm/sub:z:0*
T0*'
_output_shapes
:?????????[
concatenate_7/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
concatenate_7/concatConcatV29dense_block_31/batch_normalization_38/batchnorm/add_1:z:0*batch_normalization_39/batchnorm/add_1:z:0"concatenate_7/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????O?
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:O*
dtype0?
output/MatMulMatMulconcatenate_7/concat:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
output/SoftmaxSoftmaxoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????g
IdentityIdentityoutput/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp'^batch_normalization_39/AssignMovingAvg6^batch_normalization_39/AssignMovingAvg/ReadVariableOp)^batch_normalization_39/AssignMovingAvg_18^batch_normalization_39/AssignMovingAvg_1/ReadVariableOp+^batch_normalization_39/Cast/ReadVariableOp-^batch_normalization_39/Cast_1/ReadVariableOp ^dense_39/BiasAdd/ReadVariableOp"^dense_39/BiasAdd_1/ReadVariableOp"^dense_39/BiasAdd_2/ReadVariableOp"^dense_39/BiasAdd_3/ReadVariableOp^dense_39/MatMul/ReadVariableOp!^dense_39/MatMul_1/ReadVariableOp!^dense_39/MatMul_2/ReadVariableOp!^dense_39/MatMul_3/ReadVariableOp6^dense_block_28/batch_normalization_35/AssignMovingAvgE^dense_block_28/batch_normalization_35/AssignMovingAvg/ReadVariableOp8^dense_block_28/batch_normalization_35/AssignMovingAvg_1G^dense_block_28/batch_normalization_35/AssignMovingAvg_1/ReadVariableOp:^dense_block_28/batch_normalization_35/Cast/ReadVariableOp<^dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp/^dense_block_28/dense_35/BiasAdd/ReadVariableOp.^dense_block_28/dense_35/MatMul/ReadVariableOp6^dense_block_29/batch_normalization_36/AssignMovingAvgE^dense_block_29/batch_normalization_36/AssignMovingAvg/ReadVariableOp8^dense_block_29/batch_normalization_36/AssignMovingAvg_1G^dense_block_29/batch_normalization_36/AssignMovingAvg_1/ReadVariableOp:^dense_block_29/batch_normalization_36/Cast/ReadVariableOp<^dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp/^dense_block_29/dense_36/BiasAdd/ReadVariableOp.^dense_block_29/dense_36/MatMul/ReadVariableOp6^dense_block_30/batch_normalization_37/AssignMovingAvgE^dense_block_30/batch_normalization_37/AssignMovingAvg/ReadVariableOp8^dense_block_30/batch_normalization_37/AssignMovingAvg_1G^dense_block_30/batch_normalization_37/AssignMovingAvg_1/ReadVariableOp:^dense_block_30/batch_normalization_37/Cast/ReadVariableOp<^dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp/^dense_block_30/dense_37/BiasAdd/ReadVariableOp.^dense_block_30/dense_37/MatMul/ReadVariableOp6^dense_block_31/batch_normalization_38/AssignMovingAvgE^dense_block_31/batch_normalization_38/AssignMovingAvg/ReadVariableOp8^dense_block_31/batch_normalization_38/AssignMovingAvg_1G^dense_block_31/batch_normalization_38/AssignMovingAvg_1/ReadVariableOp:^dense_block_31/batch_normalization_38/Cast/ReadVariableOp<^dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp/^dense_block_31/dense_38/BiasAdd/ReadVariableOp.^dense_block_31/dense_38/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S:?????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_39/AssignMovingAvg&batch_normalization_39/AssignMovingAvg2n
5batch_normalization_39/AssignMovingAvg/ReadVariableOp5batch_normalization_39/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_39/AssignMovingAvg_1(batch_normalization_39/AssignMovingAvg_12r
7batch_normalization_39/AssignMovingAvg_1/ReadVariableOp7batch_normalization_39/AssignMovingAvg_1/ReadVariableOp2X
*batch_normalization_39/Cast/ReadVariableOp*batch_normalization_39/Cast/ReadVariableOp2\
,batch_normalization_39/Cast_1/ReadVariableOp,batch_normalization_39/Cast_1/ReadVariableOp2B
dense_39/BiasAdd/ReadVariableOpdense_39/BiasAdd/ReadVariableOp2F
!dense_39/BiasAdd_1/ReadVariableOp!dense_39/BiasAdd_1/ReadVariableOp2F
!dense_39/BiasAdd_2/ReadVariableOp!dense_39/BiasAdd_2/ReadVariableOp2F
!dense_39/BiasAdd_3/ReadVariableOp!dense_39/BiasAdd_3/ReadVariableOp2@
dense_39/MatMul/ReadVariableOpdense_39/MatMul/ReadVariableOp2D
 dense_39/MatMul_1/ReadVariableOp dense_39/MatMul_1/ReadVariableOp2D
 dense_39/MatMul_2/ReadVariableOp dense_39/MatMul_2/ReadVariableOp2D
 dense_39/MatMul_3/ReadVariableOp dense_39/MatMul_3/ReadVariableOp2n
5dense_block_28/batch_normalization_35/AssignMovingAvg5dense_block_28/batch_normalization_35/AssignMovingAvg2?
Ddense_block_28/batch_normalization_35/AssignMovingAvg/ReadVariableOpDdense_block_28/batch_normalization_35/AssignMovingAvg/ReadVariableOp2r
7dense_block_28/batch_normalization_35/AssignMovingAvg_17dense_block_28/batch_normalization_35/AssignMovingAvg_12?
Fdense_block_28/batch_normalization_35/AssignMovingAvg_1/ReadVariableOpFdense_block_28/batch_normalization_35/AssignMovingAvg_1/ReadVariableOp2v
9dense_block_28/batch_normalization_35/Cast/ReadVariableOp9dense_block_28/batch_normalization_35/Cast/ReadVariableOp2z
;dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp;dense_block_28/batch_normalization_35/Cast_1/ReadVariableOp2`
.dense_block_28/dense_35/BiasAdd/ReadVariableOp.dense_block_28/dense_35/BiasAdd/ReadVariableOp2^
-dense_block_28/dense_35/MatMul/ReadVariableOp-dense_block_28/dense_35/MatMul/ReadVariableOp2n
5dense_block_29/batch_normalization_36/AssignMovingAvg5dense_block_29/batch_normalization_36/AssignMovingAvg2?
Ddense_block_29/batch_normalization_36/AssignMovingAvg/ReadVariableOpDdense_block_29/batch_normalization_36/AssignMovingAvg/ReadVariableOp2r
7dense_block_29/batch_normalization_36/AssignMovingAvg_17dense_block_29/batch_normalization_36/AssignMovingAvg_12?
Fdense_block_29/batch_normalization_36/AssignMovingAvg_1/ReadVariableOpFdense_block_29/batch_normalization_36/AssignMovingAvg_1/ReadVariableOp2v
9dense_block_29/batch_normalization_36/Cast/ReadVariableOp9dense_block_29/batch_normalization_36/Cast/ReadVariableOp2z
;dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp;dense_block_29/batch_normalization_36/Cast_1/ReadVariableOp2`
.dense_block_29/dense_36/BiasAdd/ReadVariableOp.dense_block_29/dense_36/BiasAdd/ReadVariableOp2^
-dense_block_29/dense_36/MatMul/ReadVariableOp-dense_block_29/dense_36/MatMul/ReadVariableOp2n
5dense_block_30/batch_normalization_37/AssignMovingAvg5dense_block_30/batch_normalization_37/AssignMovingAvg2?
Ddense_block_30/batch_normalization_37/AssignMovingAvg/ReadVariableOpDdense_block_30/batch_normalization_37/AssignMovingAvg/ReadVariableOp2r
7dense_block_30/batch_normalization_37/AssignMovingAvg_17dense_block_30/batch_normalization_37/AssignMovingAvg_12?
Fdense_block_30/batch_normalization_37/AssignMovingAvg_1/ReadVariableOpFdense_block_30/batch_normalization_37/AssignMovingAvg_1/ReadVariableOp2v
9dense_block_30/batch_normalization_37/Cast/ReadVariableOp9dense_block_30/batch_normalization_37/Cast/ReadVariableOp2z
;dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp;dense_block_30/batch_normalization_37/Cast_1/ReadVariableOp2`
.dense_block_30/dense_37/BiasAdd/ReadVariableOp.dense_block_30/dense_37/BiasAdd/ReadVariableOp2^
-dense_block_30/dense_37/MatMul/ReadVariableOp-dense_block_30/dense_37/MatMul/ReadVariableOp2n
5dense_block_31/batch_normalization_38/AssignMovingAvg5dense_block_31/batch_normalization_38/AssignMovingAvg2?
Ddense_block_31/batch_normalization_38/AssignMovingAvg/ReadVariableOpDdense_block_31/batch_normalization_38/AssignMovingAvg/ReadVariableOp2r
7dense_block_31/batch_normalization_38/AssignMovingAvg_17dense_block_31/batch_normalization_38/AssignMovingAvg_12?
Fdense_block_31/batch_normalization_38/AssignMovingAvg_1/ReadVariableOpFdense_block_31/batch_normalization_38/AssignMovingAvg_1/ReadVariableOp2v
9dense_block_31/batch_normalization_38/Cast/ReadVariableOp9dense_block_31/batch_normalization_38/Cast/ReadVariableOp2z
;dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp;dense_block_31/batch_normalization_38/Cast_1/ReadVariableOp2`
.dense_block_31/dense_38/BiasAdd/ReadVariableOp.dense_block_31/dense_38/BiasAdd/ReadVariableOp2^
-dense_block_31/dense_38/MatMul/ReadVariableOp-dense_block_31/dense_38/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
;
input_10
serving_default_input_1:0?????????<
output_10
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
dense_layers
	dense

concat

batchn
softmax
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_model
<
0
1
2
3"
trackable_list_wrapper
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
axis
	gamma
beta
moving_mean
moving_variance
	variables
 trainable_variables
!regularization_losses
"	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

#kernel
$bias
%	variables
&trainable_variables
'regularization_losses
(	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
)iter

*beta_1

+beta_2
	,decay
-learning_ratem?m?m?m?#m?$m?.m?/m?0m?1m?2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?<m?=m?v?v?v?v?#v?$v?.v?/v?0v?1v?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?<v?=v?"
	optimizer
?
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
>16
?17
@18
A19
B20
C21
D22
E23
24
25
26
27
28
29
#30
$31"
trackable_list_wrapper
?
.0
/1
02
13
24
35
46
57
68
79
810
911
:12
;13
<14
=15
16
17
18
19
#20
$21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
	regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?
	Kdense

Lbatchn
M
activation
Ndropout
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	Sdense

Tbatchn
U
activation
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	Zdense

[batchn
\
activation
]	variables
^trainable_variables
_regularization_losses
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	adense

bbatchn
c
activation
d	variables
etrainable_variables
fregularization_losses
g	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
-:+2cross_net_7/dense_39/kernel
':%2cross_net_7/dense_39/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
6:42(cross_net_7/batch_normalization_39/gamma
5:32'cross_net_7/batch_normalization_39/beta
>:< (2.cross_net_7/batch_normalization_39/moving_mean
B:@ (22cross_net_7/batch_normalization_39/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
 trainable_variables
!regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:)O2cross_net_7/output/kernel
%:#2cross_net_7/output/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
%	variables
&trainable_variables
'regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
=:;	?2*cross_net_7/dense_block_28/dense_35/kernel
7:5?2(cross_net_7/dense_block_28/dense_35/bias
F:D?27cross_net_7/dense_block_28/batch_normalization_35/gamma
E:C?26cross_net_7/dense_block_28/batch_normalization_35/beta
>:<
??2*cross_net_7/dense_block_29/dense_36/kernel
7:5?2(cross_net_7/dense_block_29/dense_36/bias
F:D?27cross_net_7/dense_block_29/batch_normalization_36/gamma
E:C?26cross_net_7/dense_block_29/batch_normalization_36/beta
>:<
??2*cross_net_7/dense_block_30/dense_37/kernel
7:5?2(cross_net_7/dense_block_30/dense_37/bias
F:D?27cross_net_7/dense_block_30/batch_normalization_37/gamma
E:C?26cross_net_7/dense_block_30/batch_normalization_37/beta
=:;	?@2*cross_net_7/dense_block_31/dense_38/kernel
6:4@2(cross_net_7/dense_block_31/dense_38/bias
E:C@27cross_net_7/dense_block_31/batch_normalization_38/gamma
D:B@26cross_net_7/dense_block_31/batch_normalization_38/beta
N:L? (2=cross_net_7/dense_block_28/batch_normalization_35/moving_mean
R:P? (2Across_net_7/dense_block_28/batch_normalization_35/moving_variance
N:L? (2=cross_net_7/dense_block_29/batch_normalization_36/moving_mean
R:P? (2Across_net_7/dense_block_29/batch_normalization_36/moving_variance
N:L? (2=cross_net_7/dense_block_30/batch_normalization_37/moving_mean
R:P? (2Across_net_7/dense_block_30/batch_normalization_37/moving_variance
M:K@ (2=cross_net_7/dense_block_31/batch_normalization_38/moving_mean
Q:O@ (2Across_net_7/dense_block_31/batch_normalization_38/moving_variance
f
>0
?1
@2
A3
B4
C5
D6
E7
8
9"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?

.kernel
/bias
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	0gamma
1beta
>moving_mean
?moving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
J
.0
/1
02
13
>4
?5"
trackable_list_wrapper
<
.0
/1
02
13"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

2kernel
3bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	4gamma
5beta
@moving_mean
Amoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
J
20
31
42
53
@4
A5"
trackable_list_wrapper
<
20
31
42
53"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

6kernel
7bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	8gamma
9beta
Bmoving_mean
Cmoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
J
60
71
82
93
B4
C5"
trackable_list_wrapper
<
60
71
82
93"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?

:kernel
;bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?axis
	<gamma
=beta
Dmoving_mean
Emoving_variance
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
J
:0
;1
<2
=3
D4
E5"
trackable_list_wrapper
<
:0
;1
<2
=3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
d	variables
etrainable_variables
fregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
00
11
>2
?3"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
>0
?1"
trackable_list_wrapper
<
K0
L1
M2
N3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
40
51
@2
A3"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
@0
A1"
trackable_list_wrapper
5
S0
T1
U2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
80
91
B2
C3"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
B0
C1"
trackable_list_wrapper
5
Z0
[1
\2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
<0
=1
D2
E3"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
D0
E1"
trackable_list_wrapper
5
a0
b1
c2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
2:02"Adam/cross_net_7/dense_39/kernel/m
,:*2 Adam/cross_net_7/dense_39/bias/m
;:92/Adam/cross_net_7/batch_normalization_39/gamma/m
::82.Adam/cross_net_7/batch_normalization_39/beta/m
0:.O2 Adam/cross_net_7/output/kernel/m
*:(2Adam/cross_net_7/output/bias/m
B:@	?21Adam/cross_net_7/dense_block_28/dense_35/kernel/m
<::?2/Adam/cross_net_7/dense_block_28/dense_35/bias/m
K:I?2>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/m
J:H?2=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/m
C:A
??21Adam/cross_net_7/dense_block_29/dense_36/kernel/m
<::?2/Adam/cross_net_7/dense_block_29/dense_36/bias/m
K:I?2>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/m
J:H?2=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/m
C:A
??21Adam/cross_net_7/dense_block_30/dense_37/kernel/m
<::?2/Adam/cross_net_7/dense_block_30/dense_37/bias/m
K:I?2>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/m
J:H?2=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/m
B:@	?@21Adam/cross_net_7/dense_block_31/dense_38/kernel/m
;:9@2/Adam/cross_net_7/dense_block_31/dense_38/bias/m
J:H@2>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/m
I:G@2=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/m
2:02"Adam/cross_net_7/dense_39/kernel/v
,:*2 Adam/cross_net_7/dense_39/bias/v
;:92/Adam/cross_net_7/batch_normalization_39/gamma/v
::82.Adam/cross_net_7/batch_normalization_39/beta/v
0:.O2 Adam/cross_net_7/output/kernel/v
*:(2Adam/cross_net_7/output/bias/v
B:@	?21Adam/cross_net_7/dense_block_28/dense_35/kernel/v
<::?2/Adam/cross_net_7/dense_block_28/dense_35/bias/v
K:I?2>Adam/cross_net_7/dense_block_28/batch_normalization_35/gamma/v
J:H?2=Adam/cross_net_7/dense_block_28/batch_normalization_35/beta/v
C:A
??21Adam/cross_net_7/dense_block_29/dense_36/kernel/v
<::?2/Adam/cross_net_7/dense_block_29/dense_36/bias/v
K:I?2>Adam/cross_net_7/dense_block_29/batch_normalization_36/gamma/v
J:H?2=Adam/cross_net_7/dense_block_29/batch_normalization_36/beta/v
C:A
??21Adam/cross_net_7/dense_block_30/dense_37/kernel/v
<::?2/Adam/cross_net_7/dense_block_30/dense_37/bias/v
K:I?2>Adam/cross_net_7/dense_block_30/batch_normalization_37/gamma/v
J:H?2=Adam/cross_net_7/dense_block_30/batch_normalization_37/beta/v
B:@	?@21Adam/cross_net_7/dense_block_31/dense_38/kernel/v
;:9@2/Adam/cross_net_7/dense_block_31/dense_38/bias/v
J:H@2>Adam/cross_net_7/dense_block_31/batch_normalization_38/gamma/v
I:G@2=Adam/cross_net_7/dense_block_31/batch_normalization_38/beta/v
?2?
,__inference_cross_net_7_layer_call_fn_132604
,__inference_cross_net_7_layer_call_fn_133575
,__inference_cross_net_7_layer_call_fn_133644
,__inference_cross_net_7_layer_call_fn_133243?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133792
G__inference_cross_net_7_layer_call_and_return_conditional_losses_134017
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133336
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133429?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
!__inference__wrapped_model_131886input_1"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_39_layer_call_fn_134026?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_39_layer_call_and_return_conditional_losses_134036?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
.__inference_concatenate_7_layer_call_fn_134042?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
I__inference_concatenate_7_layer_call_and_return_conditional_losses_134049?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_batch_normalization_39_layer_call_fn_134062
7__inference_batch_normalization_39_layer_call_fn_134075?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_134095
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_134129?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_output_layer_call_fn_134138?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_output_layer_call_and_return_conditional_losses_134149?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
$__inference_signature_wrapper_133506input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_dense_block_28_layer_call_fn_134166
/__inference_dense_block_28_layer_call_fn_134183?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_dense_block_28_layer_call_and_return_conditional_losses_134211
J__inference_dense_block_28_layer_call_and_return_conditional_losses_134260?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_dense_block_29_layer_call_fn_134277
/__inference_dense_block_29_layer_call_fn_134294?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_dense_block_29_layer_call_and_return_conditional_losses_134321
J__inference_dense_block_29_layer_call_and_return_conditional_losses_134362?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_dense_block_30_layer_call_fn_134379
/__inference_dense_block_30_layer_call_fn_134396?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_dense_block_30_layer_call_and_return_conditional_losses_134423
J__inference_dense_block_30_layer_call_and_return_conditional_losses_134464?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_dense_block_31_layer_call_fn_134481
/__inference_dense_block_31_layer_call_fn_134498?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_dense_block_31_layer_call_and_return_conditional_losses_134525
J__inference_dense_block_31_layer_call_and_return_conditional_losses_134566?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_batch_normalization_35_layer_call_fn_134579
7__inference_batch_normalization_35_layer_call_fn_134592?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_134612
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_134646?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_batch_normalization_36_layer_call_fn_134659
7__inference_batch_normalization_36_layer_call_fn_134672?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_134692
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_134726?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_batch_normalization_37_layer_call_fn_134739
7__inference_batch_normalization_37_layer_call_fn_134752?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_134772
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_134806?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
7__inference_batch_normalization_38_layer_call_fn_134819
7__inference_batch_normalization_38_layer_call_fn_134832?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_134852
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_134886?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_131886? ./>?1023@A5467BC98:;DE=<#$0?-
&?#
!?
input_1?????????
? "3?0
.
output_1"?
output_1??????????
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_134612d>?104?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_35_layer_call_and_return_conditional_losses_134646d>?104?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_35_layer_call_fn_134579W>?104?1
*?'
!?
inputs??????????
p 
? "????????????
7__inference_batch_normalization_35_layer_call_fn_134592W>?104?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_134692d@A544?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_36_layer_call_and_return_conditional_losses_134726d@A544?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_36_layer_call_fn_134659W@A544?1
*?'
!?
inputs??????????
p 
? "????????????
7__inference_batch_normalization_36_layer_call_fn_134672W@A544?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_134772dBC984?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
R__inference_batch_normalization_37_layer_call_and_return_conditional_losses_134806dBC984?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
7__inference_batch_normalization_37_layer_call_fn_134739WBC984?1
*?'
!?
inputs??????????
p 
? "????????????
7__inference_batch_normalization_37_layer_call_fn_134752WBC984?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_134852bDE=<3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
R__inference_batch_normalization_38_layer_call_and_return_conditional_losses_134886bDE=<3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
7__inference_batch_normalization_38_layer_call_fn_134819UDE=<3?0
)?&
 ?
inputs?????????@
p 
? "??????????@?
7__inference_batch_normalization_38_layer_call_fn_134832UDE=<3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_134095b3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
R__inference_batch_normalization_39_layer_call_and_return_conditional_losses_134129b3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
7__inference_batch_normalization_39_layer_call_fn_134062U3?0
)?&
 ?
inputs?????????
p 
? "???????????
7__inference_batch_normalization_39_layer_call_fn_134075U3?0
)?&
 ?
inputs?????????
p
? "???????????
I__inference_concatenate_7_layer_call_and_return_conditional_losses_134049?Z?W
P?M
K?H
"?
inputs/0?????????@
"?
inputs/1?????????
? "%?"
?
0?????????O
? ?
.__inference_concatenate_7_layer_call_fn_134042vZ?W
P?M
K?H
"?
inputs/0?????????@
"?
inputs/1?????????
? "??????????O?
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133336 ./>?1023@A5467BC98:;DE=<#$4?1
*?'
!?
input_1?????????
p 
? "%?"
?
0?????????
? ?
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133429 ./>?1023@A5467BC98:;DE=<#$4?1
*?'
!?
input_1?????????
p
? "%?"
?
0?????????
? ?
G__inference_cross_net_7_layer_call_and_return_conditional_losses_133792~ ./>?1023@A5467BC98:;DE=<#$3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
G__inference_cross_net_7_layer_call_and_return_conditional_losses_134017~ ./>?1023@A5467BC98:;DE=<#$3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? ?
,__inference_cross_net_7_layer_call_fn_132604r ./>?1023@A5467BC98:;DE=<#$4?1
*?'
!?
input_1?????????
p 
? "???????????
,__inference_cross_net_7_layer_call_fn_133243r ./>?1023@A5467BC98:;DE=<#$4?1
*?'
!?
input_1?????????
p
? "???????????
,__inference_cross_net_7_layer_call_fn_133575q ./>?1023@A5467BC98:;DE=<#$3?0
)?&
 ?
inputs?????????
p 
? "???????????
,__inference_cross_net_7_layer_call_fn_133644q ./>?1023@A5467BC98:;DE=<#$3?0
)?&
 ?
inputs?????????
p
? "???????????
D__inference_dense_39_layer_call_and_return_conditional_losses_134036\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? |
)__inference_dense_39_layer_call_fn_134026O/?,
%?"
 ?
inputs?????????
? "???????????
J__inference_dense_block_28_layer_call_and_return_conditional_losses_134211e./>?103?0
)?&
 ?
inputs?????????
p 
? "&?#
?
0??????????
? ?
J__inference_dense_block_28_layer_call_and_return_conditional_losses_134260e./>?103?0
)?&
 ?
inputs?????????
p
? "&?#
?
0??????????
? ?
/__inference_dense_block_28_layer_call_fn_134166X./>?103?0
)?&
 ?
inputs?????????
p 
? "????????????
/__inference_dense_block_28_layer_call_fn_134183X./>?103?0
)?&
 ?
inputs?????????
p
? "????????????
J__inference_dense_block_29_layer_call_and_return_conditional_losses_134321f23@A544?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
J__inference_dense_block_29_layer_call_and_return_conditional_losses_134362f23@A544?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
/__inference_dense_block_29_layer_call_fn_134277Y23@A544?1
*?'
!?
inputs??????????
p 
? "????????????
/__inference_dense_block_29_layer_call_fn_134294Y23@A544?1
*?'
!?
inputs??????????
p
? "????????????
J__inference_dense_block_30_layer_call_and_return_conditional_losses_134423f67BC984?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
J__inference_dense_block_30_layer_call_and_return_conditional_losses_134464f67BC984?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
/__inference_dense_block_30_layer_call_fn_134379Y67BC984?1
*?'
!?
inputs??????????
p 
? "????????????
/__inference_dense_block_30_layer_call_fn_134396Y67BC984?1
*?'
!?
inputs??????????
p
? "????????????
J__inference_dense_block_31_layer_call_and_return_conditional_losses_134525e:;DE=<4?1
*?'
!?
inputs??????????
p 
? "%?"
?
0?????????@
? ?
J__inference_dense_block_31_layer_call_and_return_conditional_losses_134566e:;DE=<4?1
*?'
!?
inputs??????????
p
? "%?"
?
0?????????@
? ?
/__inference_dense_block_31_layer_call_fn_134481X:;DE=<4?1
*?'
!?
inputs??????????
p 
? "??????????@?
/__inference_dense_block_31_layer_call_fn_134498X:;DE=<4?1
*?'
!?
inputs??????????
p
? "??????????@?
B__inference_output_layer_call_and_return_conditional_losses_134149\#$/?,
%?"
 ?
inputs?????????O
? "%?"
?
0?????????
? z
'__inference_output_layer_call_fn_134138O#$/?,
%?"
 ?
inputs?????????O
? "???????????
$__inference_signature_wrapper_133506? ./>?1023@A5467BC98:;DE=<#$;?8
? 
1?.
,
input_1!?
input_1?????????"3?0
.
output_1"?
output_1?????????