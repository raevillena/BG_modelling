��
�!�!
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resource�
A
EnsureShape

input"T
output"T"
shapeshape"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
�
ImageProjectiveTransformV3
images"dtype

transforms
output_shape

fill_value
transformed_images"dtype"
dtypetype:

2	"
interpolationstring"
	fill_modestring
CONSTANT
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
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
�
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
executor_typestring ��
^
StatelessRandomGetKeyCounter
seed"Tseed
key
counter"
Tseedtype0	:
2	
�
StatelessRandomUniformV2
shape"Tshape
key
counter
alg
output"dtype"
dtypetype0:
2"
Tshapetype0:
2	
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��
�
&seed_generator_25/seed_generator_stateVarHandleOp*
_output_shapes
: *7

debug_name)'seed_generator_25/seed_generator_state/*
dtype0*
shape:*7
shared_name(&seed_generator_25/seed_generator_state
�
:seed_generator_25/seed_generator_state/Read/ReadVariableOpReadVariableOp&seed_generator_25/seed_generator_state*
_output_shapes
:*
dtype0
�
&seed_generator_24/seed_generator_stateVarHandleOp*
_output_shapes
: *7

debug_name)'seed_generator_24/seed_generator_state/*
dtype0*
shape:*7
shared_name(&seed_generator_24/seed_generator_state
�
:seed_generator_24/seed_generator_state/Read/ReadVariableOpReadVariableOp&seed_generator_24/seed_generator_state*
_output_shapes
:*
dtype0
�
block3_conv2/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock3_conv2/bias/*
dtype0*
shape:�*"
shared_nameblock3_conv2/bias
t
%block3_conv2/bias/Read/ReadVariableOpReadVariableOpblock3_conv2/bias*
_output_shapes	
:�*
dtype0
�
block1_conv2/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock1_conv2/kernel/*
dtype0*
shape:@@*$
shared_nameblock1_conv2/kernel
�
'block1_conv2/kernel/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel*&
_output_shapes
:@@*
dtype0
�
block1_conv1/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock1_conv1/bias/*
dtype0*
shape:@*"
shared_nameblock1_conv1/bias
s
%block1_conv1/bias/Read/ReadVariableOpReadVariableOpblock1_conv1/bias*
_output_shapes
:@*
dtype0
�
block5_conv3/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock5_conv3/bias/*
dtype0*
shape:�*"
shared_nameblock5_conv3/bias
t
%block5_conv3/bias/Read/ReadVariableOpReadVariableOpblock5_conv3/bias*
_output_shapes	
:�*
dtype0
�
block5_conv2/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock5_conv2/kernel/*
dtype0*
shape:��*$
shared_nameblock5_conv2/kernel
�
'block5_conv2/kernel/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel*(
_output_shapes
:��*
dtype0
�
block5_conv1/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock5_conv1/bias/*
dtype0*
shape:�*"
shared_nameblock5_conv1/bias
t
%block5_conv1/bias/Read/ReadVariableOpReadVariableOpblock5_conv1/bias*
_output_shapes	
:�*
dtype0
�
block4_conv3/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock4_conv3/bias/*
dtype0*
shape:�*"
shared_nameblock4_conv3/bias
t
%block4_conv3/bias/Read/ReadVariableOpReadVariableOpblock4_conv3/bias*
_output_shapes	
:�*
dtype0
�
block3_conv3/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock3_conv3/bias/*
dtype0*
shape:�*"
shared_nameblock3_conv3/bias
t
%block3_conv3/bias/Read/ReadVariableOpReadVariableOpblock3_conv3/bias*
_output_shapes	
:�*
dtype0
�
block3_conv2/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock3_conv2/kernel/*
dtype0*
shape:��*$
shared_nameblock3_conv2/kernel
�
'block3_conv2/kernel/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel*(
_output_shapes
:��*
dtype0
�
block1_conv1/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock1_conv1/kernel/*
dtype0*
shape:@*$
shared_nameblock1_conv1/kernel
�
'block1_conv1/kernel/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel*&
_output_shapes
:@*
dtype0
�
output_layer/biasVarHandleOp*
_output_shapes
: *"

debug_nameoutput_layer/bias/*
dtype0*
shape:*"
shared_nameoutput_layer/bias
s
%output_layer/bias/Read/ReadVariableOpReadVariableOpoutput_layer/bias*
_output_shapes
:*
dtype0
�
block2_conv1/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock2_conv1/bias/*
dtype0*
shape:�*"
shared_nameblock2_conv1/bias
t
%block2_conv1/bias/Read/ReadVariableOpReadVariableOpblock2_conv1/bias*
_output_shapes	
:�*
dtype0
�
block3_conv1/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock3_conv1/kernel/*
dtype0*
shape:��*$
shared_nameblock3_conv1/kernel
�
'block3_conv1/kernel/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel*(
_output_shapes
:��*
dtype0
�
block1_conv2/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock1_conv2/bias/*
dtype0*
shape:@*"
shared_nameblock1_conv2/bias
s
%block1_conv2/bias/Read/ReadVariableOpReadVariableOpblock1_conv2/bias*
_output_shapes
:@*
dtype0
�
block5_conv2/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock5_conv2/bias/*
dtype0*
shape:�*"
shared_nameblock5_conv2/bias
t
%block5_conv2/bias/Read/ReadVariableOpReadVariableOpblock5_conv2/bias*
_output_shapes	
:�*
dtype0
�
block4_conv1/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock4_conv1/bias/*
dtype0*
shape:�*"
shared_nameblock4_conv1/bias
t
%block4_conv1/bias/Read/ReadVariableOpReadVariableOpblock4_conv1/bias*
_output_shapes	
:�*
dtype0
�
block4_conv1/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock4_conv1/kernel/*
dtype0*
shape:��*$
shared_nameblock4_conv1/kernel
�
'block4_conv1/kernel/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel*(
_output_shapes
:��*
dtype0
�
block3_conv1/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock3_conv1/bias/*
dtype0*
shape:�*"
shared_nameblock3_conv1/bias
t
%block3_conv1/bias/Read/ReadVariableOpReadVariableOpblock3_conv1/bias*
_output_shapes	
:�*
dtype0
�
block2_conv2/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock2_conv2/kernel/*
dtype0*
shape:��*$
shared_nameblock2_conv2/kernel
�
'block2_conv2/kernel/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel*(
_output_shapes
:��*
dtype0
�
block4_conv2/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock4_conv2/kernel/*
dtype0*
shape:��*$
shared_nameblock4_conv2/kernel
�
'block4_conv2/kernel/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel*(
_output_shapes
:��*
dtype0
�
block3_conv3/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock3_conv3/kernel/*
dtype0*
shape:��*$
shared_nameblock3_conv3/kernel
�
'block3_conv3/kernel/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel*(
_output_shapes
:��*
dtype0
�
block2_conv2/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock2_conv2/bias/*
dtype0*
shape:�*"
shared_nameblock2_conv2/bias
t
%block2_conv2/bias/Read/ReadVariableOpReadVariableOpblock2_conv2/bias*
_output_shapes	
:�*
dtype0
�
block5_conv3/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock5_conv3/kernel/*
dtype0*
shape:��*$
shared_nameblock5_conv3/kernel
�
'block5_conv3/kernel/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel*(
_output_shapes
:��*
dtype0
�
block5_conv1/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock5_conv1/kernel/*
dtype0*
shape:��*$
shared_nameblock5_conv1/kernel
�
'block5_conv1/kernel/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel*(
_output_shapes
:��*
dtype0
�
block4_conv2/biasVarHandleOp*
_output_shapes
: *"

debug_nameblock4_conv2/bias/*
dtype0*
shape:�*"
shared_nameblock4_conv2/bias
t
%block4_conv2/bias/Read/ReadVariableOpReadVariableOpblock4_conv2/bias*
_output_shapes	
:�*
dtype0
�
output_layer/kernelVarHandleOp*
_output_shapes
: *$

debug_nameoutput_layer/kernel/*
dtype0*
shape:	�*$
shared_nameoutput_layer/kernel
|
'output_layer/kernel/Read/ReadVariableOpReadVariableOpoutput_layer/kernel*
_output_shapes
:	�*
dtype0
�
block4_conv3/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock4_conv3/kernel/*
dtype0*
shape:��*$
shared_nameblock4_conv3/kernel
�
'block4_conv3/kernel/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel*(
_output_shapes
:��*
dtype0
�
block2_conv1/kernelVarHandleOp*
_output_shapes
: *$

debug_nameblock2_conv1/kernel/*
dtype0*
shape:@�*$
shared_nameblock2_conv1/kernel
�
'block2_conv1/kernel/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel*'
_output_shapes
:@�*
dtype0
�
output_layer/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameoutput_layer/bias_1/*
dtype0*
shape:*$
shared_nameoutput_layer/bias_1
w
'output_layer/bias_1/Read/ReadVariableOpReadVariableOpoutput_layer/bias_1*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpoutput_layer/bias_1*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
output_layer/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameoutput_layer/kernel_1/*
dtype0*
shape:	�*&
shared_nameoutput_layer/kernel_1
�
)output_layer/kernel_1/Read/ReadVariableOpReadVariableOpoutput_layer/kernel_1*
_output_shapes
:	�*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpoutput_layer/kernel_1*
_class
loc:@Variable_1*
_output_shapes
:	�*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:	�*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	�*
dtype0
�
block5_conv3/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock5_conv3/bias_1/*
dtype0*
shape:�*$
shared_nameblock5_conv3/bias_1
x
'block5_conv3/bias_1/Read/ReadVariableOpReadVariableOpblock5_conv3/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpblock5_conv3/bias_1*
_class
loc:@Variable_2*
_output_shapes	
:�*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:�*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
f
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes	
:�*
dtype0
�
block5_conv3/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock5_conv3/kernel_1/*
dtype0*
shape:��*&
shared_nameblock5_conv3/kernel_1
�
)block5_conv3/kernel_1/Read/ReadVariableOpReadVariableOpblock5_conv3/kernel_1*(
_output_shapes
:��*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpblock5_conv3/kernel_1*
_class
loc:@Variable_3*(
_output_shapes
:��*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:��*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
s
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*(
_output_shapes
:��*
dtype0
�
block5_conv2/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock5_conv2/bias_1/*
dtype0*
shape:�*$
shared_nameblock5_conv2/bias_1
x
'block5_conv2/bias_1/Read/ReadVariableOpReadVariableOpblock5_conv2/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpblock5_conv2/bias_1*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
block5_conv2/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock5_conv2/kernel_1/*
dtype0*
shape:��*&
shared_nameblock5_conv2/kernel_1
�
)block5_conv2/kernel_1/Read/ReadVariableOpReadVariableOpblock5_conv2/kernel_1*(
_output_shapes
:��*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpblock5_conv2/kernel_1*
_class
loc:@Variable_5*(
_output_shapes
:��*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:��*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
s
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*(
_output_shapes
:��*
dtype0
�
block5_conv1/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock5_conv1/bias_1/*
dtype0*
shape:�*$
shared_nameblock5_conv1/bias_1
x
'block5_conv1/bias_1/Read/ReadVariableOpReadVariableOpblock5_conv1/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOpblock5_conv1/bias_1*
_class
loc:@Variable_6*
_output_shapes	
:�*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:�*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
f
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes	
:�*
dtype0
�
block5_conv1/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock5_conv1/kernel_1/*
dtype0*
shape:��*&
shared_nameblock5_conv1/kernel_1
�
)block5_conv1/kernel_1/Read/ReadVariableOpReadVariableOpblock5_conv1/kernel_1*(
_output_shapes
:��*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOpblock5_conv1/kernel_1*
_class
loc:@Variable_7*(
_output_shapes
:��*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:��*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
s
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*(
_output_shapes
:��*
dtype0
�
block4_conv3/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock4_conv3/bias_1/*
dtype0*
shape:�*$
shared_nameblock4_conv3/bias_1
x
'block4_conv3/bias_1/Read/ReadVariableOpReadVariableOpblock4_conv3/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOpblock4_conv3/bias_1*
_class
loc:@Variable_8*
_output_shapes	
:�*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:�*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
f
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes	
:�*
dtype0
�
block4_conv3/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock4_conv3/kernel_1/*
dtype0*
shape:��*&
shared_nameblock4_conv3/kernel_1
�
)block4_conv3/kernel_1/Read/ReadVariableOpReadVariableOpblock4_conv3/kernel_1*(
_output_shapes
:��*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpblock4_conv3/kernel_1*
_class
loc:@Variable_9*(
_output_shapes
:��*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:��*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
s
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*(
_output_shapes
:��*
dtype0
�
block4_conv2/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock4_conv2/bias_1/*
dtype0*
shape:�*$
shared_nameblock4_conv2/bias_1
x
'block4_conv2/bias_1/Read/ReadVariableOpReadVariableOpblock4_conv2/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpblock4_conv2/bias_1*
_class
loc:@Variable_10*
_output_shapes	
:�*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape:�*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
h
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes	
:�*
dtype0
�
block4_conv2/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock4_conv2/kernel_1/*
dtype0*
shape:��*&
shared_nameblock4_conv2/kernel_1
�
)block4_conv2/kernel_1/Read/ReadVariableOpReadVariableOpblock4_conv2/kernel_1*(
_output_shapes
:��*
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOpblock4_conv2/kernel_1*
_class
loc:@Variable_11*(
_output_shapes
:��*
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape:��*
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
u
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*(
_output_shapes
:��*
dtype0
�
block4_conv1/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock4_conv1/bias_1/*
dtype0*
shape:�*$
shared_nameblock4_conv1/bias_1
x
'block4_conv1/bias_1/Read/ReadVariableOpReadVariableOpblock4_conv1/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOpblock4_conv1/bias_1*
_class
loc:@Variable_12*
_output_shapes	
:�*
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape:�*
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
h
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes	
:�*
dtype0
�
block4_conv1/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock4_conv1/kernel_1/*
dtype0*
shape:��*&
shared_nameblock4_conv1/kernel_1
�
)block4_conv1/kernel_1/Read/ReadVariableOpReadVariableOpblock4_conv1/kernel_1*(
_output_shapes
:��*
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOpblock4_conv1/kernel_1*
_class
loc:@Variable_13*(
_output_shapes
:��*
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape:��*
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
u
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*(
_output_shapes
:��*
dtype0
�
block3_conv3/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock3_conv3/bias_1/*
dtype0*
shape:�*$
shared_nameblock3_conv3/bias_1
x
'block3_conv3/bias_1/Read/ReadVariableOpReadVariableOpblock3_conv3/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOpblock3_conv3/bias_1*
_class
loc:@Variable_14*
_output_shapes	
:�*
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape:�*
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
h
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes	
:�*
dtype0
�
block3_conv3/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock3_conv3/kernel_1/*
dtype0*
shape:��*&
shared_nameblock3_conv3/kernel_1
�
)block3_conv3/kernel_1/Read/ReadVariableOpReadVariableOpblock3_conv3/kernel_1*(
_output_shapes
:��*
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpblock3_conv3/kernel_1*
_class
loc:@Variable_15*(
_output_shapes
:��*
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape:��*
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
u
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*(
_output_shapes
:��*
dtype0
�
block3_conv2/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock3_conv2/bias_1/*
dtype0*
shape:�*$
shared_nameblock3_conv2/bias_1
x
'block3_conv2/bias_1/Read/ReadVariableOpReadVariableOpblock3_conv2/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOpblock3_conv2/bias_1*
_class
loc:@Variable_16*
_output_shapes	
:�*
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape:�*
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
h
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes	
:�*
dtype0
�
block3_conv2/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock3_conv2/kernel_1/*
dtype0*
shape:��*&
shared_nameblock3_conv2/kernel_1
�
)block3_conv2/kernel_1/Read/ReadVariableOpReadVariableOpblock3_conv2/kernel_1*(
_output_shapes
:��*
dtype0
�
&Variable_17/Initializer/ReadVariableOpReadVariableOpblock3_conv2/kernel_1*
_class
loc:@Variable_17*(
_output_shapes
:��*
dtype0
�
Variable_17VarHandleOp*
_class
loc:@Variable_17*
_output_shapes
: *

debug_nameVariable_17/*
dtype0*
shape:��*
shared_nameVariable_17
g
,Variable_17/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_17*
_output_shapes
: 
h
Variable_17/AssignAssignVariableOpVariable_17&Variable_17/Initializer/ReadVariableOp*
dtype0
u
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*(
_output_shapes
:��*
dtype0
�
block3_conv1/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock3_conv1/bias_1/*
dtype0*
shape:�*$
shared_nameblock3_conv1/bias_1
x
'block3_conv1/bias_1/Read/ReadVariableOpReadVariableOpblock3_conv1/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_18/Initializer/ReadVariableOpReadVariableOpblock3_conv1/bias_1*
_class
loc:@Variable_18*
_output_shapes	
:�*
dtype0
�
Variable_18VarHandleOp*
_class
loc:@Variable_18*
_output_shapes
: *

debug_nameVariable_18/*
dtype0*
shape:�*
shared_nameVariable_18
g
,Variable_18/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_18*
_output_shapes
: 
h
Variable_18/AssignAssignVariableOpVariable_18&Variable_18/Initializer/ReadVariableOp*
dtype0
h
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes	
:�*
dtype0
�
block3_conv1/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock3_conv1/kernel_1/*
dtype0*
shape:��*&
shared_nameblock3_conv1/kernel_1
�
)block3_conv1/kernel_1/Read/ReadVariableOpReadVariableOpblock3_conv1/kernel_1*(
_output_shapes
:��*
dtype0
�
&Variable_19/Initializer/ReadVariableOpReadVariableOpblock3_conv1/kernel_1*
_class
loc:@Variable_19*(
_output_shapes
:��*
dtype0
�
Variable_19VarHandleOp*
_class
loc:@Variable_19*
_output_shapes
: *

debug_nameVariable_19/*
dtype0*
shape:��*
shared_nameVariable_19
g
,Variable_19/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_19*
_output_shapes
: 
h
Variable_19/AssignAssignVariableOpVariable_19&Variable_19/Initializer/ReadVariableOp*
dtype0
u
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*(
_output_shapes
:��*
dtype0
�
block2_conv2/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock2_conv2/bias_1/*
dtype0*
shape:�*$
shared_nameblock2_conv2/bias_1
x
'block2_conv2/bias_1/Read/ReadVariableOpReadVariableOpblock2_conv2/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_20/Initializer/ReadVariableOpReadVariableOpblock2_conv2/bias_1*
_class
loc:@Variable_20*
_output_shapes	
:�*
dtype0
�
Variable_20VarHandleOp*
_class
loc:@Variable_20*
_output_shapes
: *

debug_nameVariable_20/*
dtype0*
shape:�*
shared_nameVariable_20
g
,Variable_20/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_20*
_output_shapes
: 
h
Variable_20/AssignAssignVariableOpVariable_20&Variable_20/Initializer/ReadVariableOp*
dtype0
h
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes	
:�*
dtype0
�
block2_conv2/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock2_conv2/kernel_1/*
dtype0*
shape:��*&
shared_nameblock2_conv2/kernel_1
�
)block2_conv2/kernel_1/Read/ReadVariableOpReadVariableOpblock2_conv2/kernel_1*(
_output_shapes
:��*
dtype0
�
&Variable_21/Initializer/ReadVariableOpReadVariableOpblock2_conv2/kernel_1*
_class
loc:@Variable_21*(
_output_shapes
:��*
dtype0
�
Variable_21VarHandleOp*
_class
loc:@Variable_21*
_output_shapes
: *

debug_nameVariable_21/*
dtype0*
shape:��*
shared_nameVariable_21
g
,Variable_21/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_21*
_output_shapes
: 
h
Variable_21/AssignAssignVariableOpVariable_21&Variable_21/Initializer/ReadVariableOp*
dtype0
u
Variable_21/Read/ReadVariableOpReadVariableOpVariable_21*(
_output_shapes
:��*
dtype0
�
block2_conv1/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock2_conv1/bias_1/*
dtype0*
shape:�*$
shared_nameblock2_conv1/bias_1
x
'block2_conv1/bias_1/Read/ReadVariableOpReadVariableOpblock2_conv1/bias_1*
_output_shapes	
:�*
dtype0
�
&Variable_22/Initializer/ReadVariableOpReadVariableOpblock2_conv1/bias_1*
_class
loc:@Variable_22*
_output_shapes	
:�*
dtype0
�
Variable_22VarHandleOp*
_class
loc:@Variable_22*
_output_shapes
: *

debug_nameVariable_22/*
dtype0*
shape:�*
shared_nameVariable_22
g
,Variable_22/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_22*
_output_shapes
: 
h
Variable_22/AssignAssignVariableOpVariable_22&Variable_22/Initializer/ReadVariableOp*
dtype0
h
Variable_22/Read/ReadVariableOpReadVariableOpVariable_22*
_output_shapes	
:�*
dtype0
�
block2_conv1/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock2_conv1/kernel_1/*
dtype0*
shape:@�*&
shared_nameblock2_conv1/kernel_1
�
)block2_conv1/kernel_1/Read/ReadVariableOpReadVariableOpblock2_conv1/kernel_1*'
_output_shapes
:@�*
dtype0
�
&Variable_23/Initializer/ReadVariableOpReadVariableOpblock2_conv1/kernel_1*
_class
loc:@Variable_23*'
_output_shapes
:@�*
dtype0
�
Variable_23VarHandleOp*
_class
loc:@Variable_23*
_output_shapes
: *

debug_nameVariable_23/*
dtype0*
shape:@�*
shared_nameVariable_23
g
,Variable_23/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_23*
_output_shapes
: 
h
Variable_23/AssignAssignVariableOpVariable_23&Variable_23/Initializer/ReadVariableOp*
dtype0
t
Variable_23/Read/ReadVariableOpReadVariableOpVariable_23*'
_output_shapes
:@�*
dtype0
�
block1_conv2/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock1_conv2/bias_1/*
dtype0*
shape:@*$
shared_nameblock1_conv2/bias_1
w
'block1_conv2/bias_1/Read/ReadVariableOpReadVariableOpblock1_conv2/bias_1*
_output_shapes
:@*
dtype0
�
&Variable_24/Initializer/ReadVariableOpReadVariableOpblock1_conv2/bias_1*
_class
loc:@Variable_24*
_output_shapes
:@*
dtype0
�
Variable_24VarHandleOp*
_class
loc:@Variable_24*
_output_shapes
: *

debug_nameVariable_24/*
dtype0*
shape:@*
shared_nameVariable_24
g
,Variable_24/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_24*
_output_shapes
: 
h
Variable_24/AssignAssignVariableOpVariable_24&Variable_24/Initializer/ReadVariableOp*
dtype0
g
Variable_24/Read/ReadVariableOpReadVariableOpVariable_24*
_output_shapes
:@*
dtype0
�
block1_conv2/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock1_conv2/kernel_1/*
dtype0*
shape:@@*&
shared_nameblock1_conv2/kernel_1
�
)block1_conv2/kernel_1/Read/ReadVariableOpReadVariableOpblock1_conv2/kernel_1*&
_output_shapes
:@@*
dtype0
�
&Variable_25/Initializer/ReadVariableOpReadVariableOpblock1_conv2/kernel_1*
_class
loc:@Variable_25*&
_output_shapes
:@@*
dtype0
�
Variable_25VarHandleOp*
_class
loc:@Variable_25*
_output_shapes
: *

debug_nameVariable_25/*
dtype0*
shape:@@*
shared_nameVariable_25
g
,Variable_25/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_25*
_output_shapes
: 
h
Variable_25/AssignAssignVariableOpVariable_25&Variable_25/Initializer/ReadVariableOp*
dtype0
s
Variable_25/Read/ReadVariableOpReadVariableOpVariable_25*&
_output_shapes
:@@*
dtype0
�
block1_conv1/bias_1VarHandleOp*
_output_shapes
: *$

debug_nameblock1_conv1/bias_1/*
dtype0*
shape:@*$
shared_nameblock1_conv1/bias_1
w
'block1_conv1/bias_1/Read/ReadVariableOpReadVariableOpblock1_conv1/bias_1*
_output_shapes
:@*
dtype0
�
&Variable_26/Initializer/ReadVariableOpReadVariableOpblock1_conv1/bias_1*
_class
loc:@Variable_26*
_output_shapes
:@*
dtype0
�
Variable_26VarHandleOp*
_class
loc:@Variable_26*
_output_shapes
: *

debug_nameVariable_26/*
dtype0*
shape:@*
shared_nameVariable_26
g
,Variable_26/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_26*
_output_shapes
: 
h
Variable_26/AssignAssignVariableOpVariable_26&Variable_26/Initializer/ReadVariableOp*
dtype0
g
Variable_26/Read/ReadVariableOpReadVariableOpVariable_26*
_output_shapes
:@*
dtype0
�
block1_conv1/kernel_1VarHandleOp*
_output_shapes
: *&

debug_nameblock1_conv1/kernel_1/*
dtype0*
shape:@*&
shared_nameblock1_conv1/kernel_1
�
)block1_conv1/kernel_1/Read/ReadVariableOpReadVariableOpblock1_conv1/kernel_1*&
_output_shapes
:@*
dtype0
�
&Variable_27/Initializer/ReadVariableOpReadVariableOpblock1_conv1/kernel_1*
_class
loc:@Variable_27*&
_output_shapes
:@*
dtype0
�
Variable_27VarHandleOp*
_class
loc:@Variable_27*
_output_shapes
: *

debug_nameVariable_27/*
dtype0*
shape:@*
shared_nameVariable_27
g
,Variable_27/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_27*
_output_shapes
: 
h
Variable_27/AssignAssignVariableOpVariable_27&Variable_27/Initializer/ReadVariableOp*
dtype0
s
Variable_27/Read/ReadVariableOpReadVariableOpVariable_27*&
_output_shapes
:@*
dtype0
�
(seed_generator_25/seed_generator_state_1VarHandleOp*
_output_shapes
: *9

debug_name+)seed_generator_25/seed_generator_state_1/*
dtype0*
shape:*9
shared_name*(seed_generator_25/seed_generator_state_1
�
<seed_generator_25/seed_generator_state_1/Read/ReadVariableOpReadVariableOp(seed_generator_25/seed_generator_state_1*
_output_shapes
:*
dtype0
�
&Variable_28/Initializer/ReadVariableOpReadVariableOp(seed_generator_25/seed_generator_state_1*
_class
loc:@Variable_28*
_output_shapes
:*
dtype0
�
Variable_28VarHandleOp*
_class
loc:@Variable_28*
_output_shapes
: *

debug_nameVariable_28/*
dtype0*
shape:*
shared_nameVariable_28
g
,Variable_28/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_28*
_output_shapes
: 
h
Variable_28/AssignAssignVariableOpVariable_28&Variable_28/Initializer/ReadVariableOp*
dtype0
g
Variable_28/Read/ReadVariableOpReadVariableOpVariable_28*
_output_shapes
:*
dtype0
�
(seed_generator_24/seed_generator_state_1VarHandleOp*
_output_shapes
: *9

debug_name+)seed_generator_24/seed_generator_state_1/*
dtype0*
shape:*9
shared_name*(seed_generator_24/seed_generator_state_1
�
<seed_generator_24/seed_generator_state_1/Read/ReadVariableOpReadVariableOp(seed_generator_24/seed_generator_state_1*
_output_shapes
:*
dtype0
�
&Variable_29/Initializer/ReadVariableOpReadVariableOp(seed_generator_24/seed_generator_state_1*
_class
loc:@Variable_29*
_output_shapes
:*
dtype0
�
Variable_29VarHandleOp*
_class
loc:@Variable_29*
_output_shapes
: *

debug_nameVariable_29/*
dtype0*
shape:*
shared_nameVariable_29
g
,Variable_29/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_29*
_output_shapes
: 
h
Variable_29/AssignAssignVariableOpVariable_29&Variable_29/Initializer/ReadVariableOp*
dtype0
g
Variable_29/Read/ReadVariableOpReadVariableOpVariable_29*
_output_shapes
:*
dtype0
�
serve_input_layerPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserve_input_layer(seed_generator_24/seed_generator_state_1(seed_generator_25/seed_generator_state_1block1_conv1/kernel_1block1_conv1/bias_1block1_conv2/kernel_1block1_conv2/bias_1block2_conv1/kernel_1block2_conv1/bias_1block2_conv2/kernel_1block2_conv2/bias_1block3_conv1/kernel_1block3_conv1/bias_1block3_conv2/kernel_1block3_conv2/bias_1block3_conv3/kernel_1block3_conv3/bias_1block4_conv1/kernel_1block4_conv1/bias_1block4_conv2/kernel_1block4_conv2/bias_1block4_conv3/kernel_1block4_conv3/bias_1block5_conv1/kernel_1block5_conv1/bias_1block5_conv2/kernel_1block5_conv2/bias_1block5_conv3/kernel_1block5_conv3/bias_1output_layer/kernel_1output_layer/bias_1**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*9
config_proto)'

CPU

GPU 

XPU2*0J 8� *6
f1R/
-__inference_signature_wrapper___call___384779
�
serving_default_input_layerPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_layer(seed_generator_24/seed_generator_state_1(seed_generator_25/seed_generator_state_1block1_conv1/kernel_1block1_conv1/bias_1block1_conv2/kernel_1block1_conv2/bias_1block2_conv1/kernel_1block2_conv1/bias_1block2_conv2/kernel_1block2_conv2/bias_1block3_conv1/kernel_1block3_conv1/bias_1block3_conv2/kernel_1block3_conv2/bias_1block3_conv3/kernel_1block3_conv3/bias_1block4_conv1/kernel_1block4_conv1/bias_1block4_conv2/kernel_1block4_conv2/bias_1block4_conv3/kernel_1block4_conv3/bias_1block5_conv1/kernel_1block5_conv1/bias_1block5_conv2/kernel_1block5_conv2/bias_1block5_conv3/kernel_1block5_conv3/bias_1output_layer/kernel_1output_layer/bias_1**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*9
config_proto)'

CPU

GPU 

XPU2*0J 8� *6
f1R/
-__inference_signature_wrapper___call___384844

NoOpNoOp
�/
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�/
value�/B�/ B�/
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28
%29*

$0
%1*
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27*
�
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111
212
313
414
515
616
717
818
919
:20
;21
<22
=23
>24
?25
@26
A27
B28
C29*
* 

Dtrace_0* 
"
	Eserve
Fserving_default* 
KE
VARIABLE_VALUEVariable_29&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_28&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_27&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_26&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_25&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_24&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_23&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_22&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_21&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_20&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_19'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_18'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_17'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_16'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_15'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_14'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_13'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_12'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_11'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEVariable_10'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_9'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_8'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_7'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_6'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_5'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_4'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_3'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_2'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_1'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock2_conv1/kernel_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock4_conv3/kernel_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEoutput_layer/kernel_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEblock4_conv2/bias_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock5_conv1/kernel_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock5_conv3/kernel_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEblock2_conv2/bias_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock3_conv3/kernel_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock4_conv2/kernel_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEblock2_conv2/kernel_1+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock3_conv1/bias_1,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEblock4_conv1/kernel_1,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock4_conv1/bias_1,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock5_conv2/bias_1,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock1_conv2/bias_1,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEblock3_conv1/kernel_1,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock2_conv1/bias_1,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput_layer/bias_1,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEblock1_conv1/kernel_1,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEblock3_conv2/kernel_1,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock3_conv3/bias_1,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock4_conv3/bias_1,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock5_conv1/bias_1,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEblock5_conv2/kernel_1,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock5_conv3/bias_1,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock1_conv1/bias_1,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEblock1_conv2/kernel_1,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEblock3_conv2/bias_1,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE(seed_generator_24/seed_generator_state_1,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE(seed_generator_25/seed_generator_state_1,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variableblock2_conv1/kernel_1block4_conv3/kernel_1output_layer/kernel_1block4_conv2/bias_1block5_conv1/kernel_1block5_conv3/kernel_1block2_conv2/bias_1block3_conv3/kernel_1block4_conv2/kernel_1block2_conv2/kernel_1block3_conv1/bias_1block4_conv1/kernel_1block4_conv1/bias_1block5_conv2/bias_1block1_conv2/bias_1block3_conv1/kernel_1block2_conv1/bias_1output_layer/bias_1block1_conv1/kernel_1block3_conv2/kernel_1block3_conv3/bias_1block4_conv3/bias_1block5_conv1/bias_1block5_conv2/kernel_1block5_conv3/bias_1block1_conv1/bias_1block1_conv2/kernel_1block3_conv2/bias_1(seed_generator_24/seed_generator_state_1(seed_generator_25/seed_generator_state_1Const*I
TinB
@2>*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *9
config_proto)'

CPU

GPU 

XPU2*0J 8� *(
f#R!
__inference__traced_save_385348
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_29Variable_28Variable_27Variable_26Variable_25Variable_24Variable_23Variable_22Variable_21Variable_20Variable_19Variable_18Variable_17Variable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variableblock2_conv1/kernel_1block4_conv3/kernel_1output_layer/kernel_1block4_conv2/bias_1block5_conv1/kernel_1block5_conv3/kernel_1block2_conv2/bias_1block3_conv3/kernel_1block4_conv2/kernel_1block2_conv2/kernel_1block3_conv1/bias_1block4_conv1/kernel_1block4_conv1/bias_1block5_conv2/bias_1block1_conv2/bias_1block3_conv1/kernel_1block2_conv1/bias_1output_layer/bias_1block1_conv1/kernel_1block3_conv2/kernel_1block3_conv3/bias_1block4_conv3/bias_1block5_conv1/bias_1block5_conv2/kernel_1block5_conv3/bias_1block1_conv1/bias_1block1_conv2/kernel_1block3_conv2/bias_1(seed_generator_24/seed_generator_state_1(seed_generator_25/seed_generator_state_1*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *9
config_proto)'

CPU

GPU 

XPU2*0J 8� *+
f&R$
"__inference__traced_restore_385537�
��
�3
__inference___call___384713
input_layerk
]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_zoom_2_1_readvariableop_resource:k
]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_flip_2_1_readvariableop_resource:v
\model_6_vgg16_with_augmentation_1_vgg16_1_block1_conv1_1_convolution_readvariableop_resource:@f
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block1_conv1_1_reshape_readvariableop_resource:@v
\model_6_vgg16_with_augmentation_1_vgg16_1_block1_conv2_1_convolution_readvariableop_resource:@@f
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block1_conv2_1_reshape_readvariableop_resource:@w
\model_6_vgg16_with_augmentation_1_vgg16_1_block2_conv1_1_convolution_readvariableop_resource:@�g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block2_conv1_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block2_conv2_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block2_conv2_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block3_conv1_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block3_conv1_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block3_conv2_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block3_conv2_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block3_conv3_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block3_conv3_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block4_conv1_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block4_conv1_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block4_conv2_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block4_conv2_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block4_conv3_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block4_conv3_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block5_conv1_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block5_conv1_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block5_conv2_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block5_conv2_1_reshape_readvariableop_resource:	�x
\model_6_vgg16_with_augmentation_1_vgg16_1_block5_conv3_1_convolution_readvariableop_resource:��g
Xmodel_6_vgg16_with_augmentation_1_vgg16_1_block5_conv3_1_reshape_readvariableop_resource:	�`
Mmodel_6_vgg16_with_augmentation_1_output_layer_1_cast_readvariableop_resource:	�Z
Lmodel_6_vgg16_with_augmentation_1_output_layer_1_add_readvariableop_resource:
identity��VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/AssignVariableOp�TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp�VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp_1�VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOp�XModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOp_1�TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp�VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_1�VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_2�VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_3�CModel_6_VGG16_with_augmentation_1/output_layer_1/Add/ReadVariableOp�DModel_6_VGG16_with_augmentation_1/output_layer_1/Cast/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/convolution/ReadVariableOp�OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Reshape/ReadVariableOp�SModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/convolution/ReadVariableOp�
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ShapeShapeinput_layer*
T0*
_output_shapes
::���
YModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
SModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_sliceStridedSliceTModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Shape:output:0bModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice/stack:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice/stack_1:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOpReadVariableOp]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_zoom_2_1_readvariableop_resource*
_output_shapes
:*
dtype0�
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B ��
IModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mulMul\Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp:value:0TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul/y:output:0*
T0*
_output_shapes
:�
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_1ReadVariableOp]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_zoom_2_1_readvariableop_resource*
_output_shapes
:*
dtype0�
IModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/addAddV2^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_1:value:0TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Const:output:0*
T0*
_output_shapes
:�
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOpAssignVariableOp]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_zoom_2_1_readvariableop_resourceMModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/add:z:0U^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOpW^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
JModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/CastCastMModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul:z:0*

DstT0*

SrcT0*
_output_shapes
:�
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *fff?�
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *�̌?�
fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/shapePack\Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice:output:0oModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:�
{Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast:y:0*
Tseed0* 
_output_shapes
::�
{Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
wModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2mModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/shape:output:0�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
bModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/subSubWModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_2/x:output:0WModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_1/x:output:0*
T0*
_output_shapes
: �
bModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/mulMul�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/StatelessRandomUniformV2:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/sub:z:0*
T0*'
_output_shapes
:����������
^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniformAddV2fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform/mul:z:0WModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_1/x:output:0*
T0*'
_output_shapes
:����������
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_2ReadVariableOp]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_zoom_2_1_readvariableop_resourceW^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOp*
_output_shapes
:*
dtype0�
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul_1/yConst*
_output_shapes
: *
dtype0*
value
B ��
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul_1Mul^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_2:value:0VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul_1/y:output:0*
T0*
_output_shapes
:�
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       �
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_3ReadVariableOp]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_zoom_2_1_readvariableop_resourceW^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOp*
_output_shapes
:*
dtype0�
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/add_1AddV2^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_3:value:0VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Const_1:output:0*
T0*
_output_shapes
:�
XModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOp_1AssignVariableOp]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_zoom_2_1_readvariableop_resourceOModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/add_1:z:0W^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOpW^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_2W^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_3*
_output_shapes
 *
dtype0*
validate_shape(�
LModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_3CastOModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul_1:z:0*

DstT0*

SrcT0*
_output_shapes
:�
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_4/xConst*
_output_shapes
: *
dtype0*
valueB
 *333?�
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *ff�?�
hModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/shapePack\Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice:output:0qModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:�
}Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterPModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_3:y:0*
Tseed0* 
_output_shapes
::�
}Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
yModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2oModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/shape:output:0�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/StatelessRandomGetKeyCounter:key:0�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/StatelessRandomGetKeyCounter:counter:0�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:����������
dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/subSubWModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_5/x:output:0WModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_4/x:output:0*
T0*
_output_shapes
: �
dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/mulMul�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/StatelessRandomUniformV2:output:0hModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/sub:z:0*
T0*'
_output_shapes
:����������
`Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1AddV2hModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1/mul:z:0WModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_4/x:output:0*
T0*'
_output_shapes
:����������
QModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
LModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concatConcatV2dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform_1:z:0bModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/stateless_random_uniform:z:0ZModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Shape_1ShapeUModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat:output:0*
T0*
_output_shapes
::���
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
UModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1StridedSliceVModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Shape_1:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1/stack:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1/stack_1:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_6/xConst*
_output_shapes
: *
dtype0*
value
B :��
LModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_6CastWModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_6/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
IModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/subSubPModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_6:y:0TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub/y:output:0*
T0*
_output_shapes
: �
OModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/truedivRealDivMModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub:z:0XModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/truediv/y:output:0*
T0*
_output_shapes
: �
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
UModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_2StridedSliceUModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_2/stack:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_2/stack_1:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_1SubVModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_1/x:output:0^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul_2MulQModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/truediv:z:0OModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_1:z:0*
T0*'
_output_shapes
:����������
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_7/xConst*
_output_shapes
: *
dtype0*
value
B :��
LModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_7CastWModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_7/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_2SubPModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Cast_7:y:0VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_2/y:output:0*
T0*
_output_shapes
: �
QModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
OModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/truediv_1RealDivOModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_2:z:0ZModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/truediv_1/y:output:0*
T0*
_output_shapes
: �
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
UModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_3StridedSliceUModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_3/stack:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_3/stack_1:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_3SubVModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_3/x:output:0^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_3:output:0*
T0*'
_output_shapes
:����������
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul_3MulSModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/truediv_1:z:0OModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/sub_3:z:0*
T0*'
_output_shapes
:����������
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
UModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_4StridedSliceUModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_4/stack:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_4/stack_1:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
RModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros/packedPack^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1:output:0]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:�
QModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zerosFill[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros/packed:output:0ZModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros/Const:output:0*
T0*'
_output_shapes
:����������
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_1/packedPack^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1:output:0_Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:�
SModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_1Fill]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_1/packed:output:0\Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:����������
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
UModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_5StridedSliceUModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_5/stack:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_5/stack_1:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask�
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_2/packedPack^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_1:output:0_Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:�
SModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_2Fill]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_2/packed:output:0\Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_2/Const:output:0*
T0*'
_output_shapes
:����������
SModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B :�
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat_1ConcatV2^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_4:output:0TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros:output:0OModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul_2:z:0VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_1:output:0^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_5:output:0OModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/mul_3:z:0VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/zeros_2:output:0\Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat_1/axis:output:0*
N*
T0*'
_output_shapes
:����������
MModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Shape_2Shapeinput_layer*
T0*
_output_shapes
::���
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:�
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
UModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_6StridedSliceVModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/Shape_2:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_6/stack:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_6/stack_1:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
:�
kModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ImageProjectiveTransformV3/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
`Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ImageProjectiveTransformV3ImageProjectiveTransformV3input_layerWModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/concat_1:output:0^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/strided_slice_6:output:0tModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ImageProjectiveTransformV3/fill_value:output:0*A
_output_shapes/
-:+���������������������������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
QModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/EnsureShapeEnsureShapeuModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ImageProjectiveTransformV3:transformed_images:0*
T0*1
_output_shapes
:�����������*&
shape:������������
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ShapeShapeZModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/EnsureShape:output:0*
T0*
_output_shapes
::���
YModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
[Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
SModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/strided_sliceStridedSliceTModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/Shape:output:0bModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/strided_slice/stack:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/strided_slice/stack_1:output:0dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOpReadVariableOp]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_flip_2_1_readvariableop_resource*
_output_shapes
:*
dtype0�
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B ��
IModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/mulMul\Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp:value:0TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/mul/y:output:0*
T0*
_output_shapes
:�
KModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp_1ReadVariableOp]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_flip_2_1_readvariableop_resource*
_output_shapes
:*
dtype0�
IModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/addAddV2^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp_1:value:0TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/Const:output:0*
T0*
_output_shapes
:�
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/AssignVariableOpAssignVariableOp]model_6_vgg16_with_augmentation_1_data_augmentation_1_random_flip_2_1_readvariableop_resourceMModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/add:z:0U^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOpW^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
JModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/CastCastMModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/mul:z:0*

DstT0*

SrcT0*
_output_shapes
:�
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/Cast_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
dModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/shapePack\Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/strided_slice:output:0oModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/shape/1:output:0oModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/shape/2:output:0oModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/shape/3:output:0*
N*
T0*
_output_shapes
:�
{Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterNModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/Cast:y:0*
Tseed0* 
_output_shapes
::�
{Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
wModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2mModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/shape:output:0�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*/
_output_shapes
:����������
bModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/subSubWModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/Cast_2/x:output:0WModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/Cast_1/x:output:0*
T0*
_output_shapes
: �
bModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/mulMul�Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/StatelessRandomUniformV2:output:0fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/sub:z:0*
T0*/
_output_shapes
:����������
^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniformAddV2fModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform/mul:z:0WModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/Cast_1/x:output:0*
T0*/
_output_shapes
:����������
QModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/LessEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
OModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/LessEqual	LessEqualbModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/stateless_random_uniform:z:0ZModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/LessEqual/y:output:0*
T0*/
_output_shapes
:����������
TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
����������
OModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReverseV2	ReverseV2ZModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/EnsureShape:output:0]Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReverseV2/axis:output:0*
T0*1
_output_shapes
:������������
NModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/SelectV2SelectV2SModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/LessEqual:z:0XModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReverseV2:output:0ZModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/EnsureShape:output:0*
T0*1
_output_shapes
:�����������x
3Model_6_VGG16_with_augmentation_1/rescaler_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;z
5Model_6_VGG16_with_augmentation_1/rescaler_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    u
2Model_6_VGG16_with_augmentation_1/rescaler_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
0Model_6_VGG16_with_augmentation_1/rescaler_1/mulMulWModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/SelectV2:output:0<Model_6_VGG16_with_augmentation_1/rescaler_1/Cast/x:output:0*
T0*1
_output_shapes
:������������
0Model_6_VGG16_with_augmentation_1/rescaler_1/addAddV24Model_6_VGG16_with_augmentation_1/rescaler_1/mul:z:0>Model_6_VGG16_with_augmentation_1/rescaler_1/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
SModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block1_conv1_1_convolution_readvariableop_resource*&
_output_shapes
:@*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/convolutionConv2D4Model_6_VGG16_with_augmentation_1/rescaler_1/add:z:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block1_conv1_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
<Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Reshape:output:0*
T0*1
_output_shapes
:�����������@�
=Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/add:z:0*
T0*1
_output_shapes
:�����������@�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block1_conv2_1_convolution_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/convolutionConv2DKModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Relu:activations:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/convolution/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������@*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block1_conv2_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
<Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Reshape:output:0*
T0*1
_output_shapes
:�����������@�
=Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/add:z:0*
T0*1
_output_shapes
:�����������@�
AModel_6_VGG16_with_augmentation_1/vgg16_1/block1_pool_1/MaxPool2dMaxPoolKModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Relu:activations:0*/
_output_shapes
:���������pp@*
ksize
*
paddingVALID*
strides
�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block2_conv1_1_convolution_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/convolutionConv2DJModel_6_VGG16_with_augmentation_1/vgg16_1/block1_pool_1/MaxPool2d:output:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block2_conv1_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Reshape:output:0*
T0*0
_output_shapes
:���������pp��
=Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/add:z:0*
T0*0
_output_shapes
:���������pp��
SModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block2_conv2_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/convolutionConv2DKModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Relu:activations:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������pp�*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block2_conv2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         �   �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Reshape:output:0*
T0*0
_output_shapes
:���������pp��
=Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/add:z:0*
T0*0
_output_shapes
:���������pp��
AModel_6_VGG16_with_augmentation_1/vgg16_1/block2_pool_1/MaxPool2dMaxPoolKModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Relu:activations:0*0
_output_shapes
:���������88�*
ksize
*
paddingVALID*
strides
�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block3_conv1_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/convolutionConv2DJModel_6_VGG16_with_augmentation_1/vgg16_1/block2_pool_1/MaxPool2d:output:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block3_conv1_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Reshape:output:0*
T0*0
_output_shapes
:���������88��
=Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/add:z:0*
T0*0
_output_shapes
:���������88��
SModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block3_conv2_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/convolutionConv2DKModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Relu:activations:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block3_conv2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Reshape:output:0*
T0*0
_output_shapes
:���������88��
=Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/add:z:0*
T0*0
_output_shapes
:���������88��
SModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block3_conv3_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/convolutionConv2DKModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Relu:activations:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������88�*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block3_conv3_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Reshape:output:0*
T0*0
_output_shapes
:���������88��
=Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/add:z:0*
T0*0
_output_shapes
:���������88��
AModel_6_VGG16_with_augmentation_1/vgg16_1/block3_pool_1/MaxPool2dMaxPoolKModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block4_conv1_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/convolutionConv2DJModel_6_VGG16_with_augmentation_1/vgg16_1/block3_pool_1/MaxPool2d:output:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block4_conv1_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Reshape:output:0*
T0*0
_output_shapes
:�����������
=Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/add:z:0*
T0*0
_output_shapes
:�����������
SModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block4_conv2_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/convolutionConv2DKModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Relu:activations:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block4_conv2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Reshape:output:0*
T0*0
_output_shapes
:�����������
=Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/add:z:0*
T0*0
_output_shapes
:�����������
SModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block4_conv3_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/convolutionConv2DKModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Relu:activations:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block4_conv3_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Reshape:output:0*
T0*0
_output_shapes
:�����������
=Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/add:z:0*
T0*0
_output_shapes
:�����������
AModel_6_VGG16_with_augmentation_1/vgg16_1/block4_pool_1/MaxPool2dMaxPoolKModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block5_conv1_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/convolutionConv2DJModel_6_VGG16_with_augmentation_1/vgg16_1/block4_pool_1/MaxPool2d:output:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block5_conv1_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Reshape:output:0*
T0*0
_output_shapes
:�����������
=Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/add:z:0*
T0*0
_output_shapes
:�����������
SModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block5_conv2_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/convolutionConv2DKModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Relu:activations:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block5_conv2_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Reshape:output:0*
T0*0
_output_shapes
:�����������
=Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/add:z:0*
T0*0
_output_shapes
:�����������
SModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/convolution/ReadVariableOpReadVariableOp\model_6_vgg16_with_augmentation_1_vgg16_1_block5_conv3_1_convolution_readvariableop_resource*(
_output_shapes
:��*
dtype0�
DModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/convolutionConv2DKModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Relu:activations:0[Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/convolution/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Reshape/ReadVariableOpReadVariableOpXmodel_6_vgg16_with_augmentation_1_vgg16_1_block5_conv3_1_reshape_readvariableop_resource*
_output_shapes	
:�*
dtype0�
FModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
@Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/ReshapeReshapeWModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Reshape/ReadVariableOp:value:0OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Reshape/shape:output:0*
T0*'
_output_shapes
:��
<Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/addAddV2MModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/convolution:output:0IModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Reshape:output:0*
T0*0
_output_shapes
:�����������
=Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/ReluRelu@Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/add:z:0*
T0*0
_output_shapes
:�����������
AModel_6_VGG16_with_augmentation_1/vgg16_1/block5_pool_1/MaxPool2dMaxPoolKModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Relu:activations:0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
WModel_6_VGG16_with_augmentation_1/global_average_pooling_layer_1/Mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
EModel_6_VGG16_with_augmentation_1/global_average_pooling_layer_1/MeanMeanJModel_6_VGG16_with_augmentation_1/vgg16_1/block5_pool_1/MaxPool2d:output:0`Model_6_VGG16_with_augmentation_1/global_average_pooling_layer_1/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
DModel_6_VGG16_with_augmentation_1/output_layer_1/Cast/ReadVariableOpReadVariableOpMmodel_6_vgg16_with_augmentation_1_output_layer_1_cast_readvariableop_resource*
_output_shapes
:	�*
dtype0�
7Model_6_VGG16_with_augmentation_1/output_layer_1/MatMulMatMulNModel_6_VGG16_with_augmentation_1/global_average_pooling_layer_1/Mean:output:0LModel_6_VGG16_with_augmentation_1/output_layer_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
CModel_6_VGG16_with_augmentation_1/output_layer_1/Add/ReadVariableOpReadVariableOpLmodel_6_vgg16_with_augmentation_1_output_layer_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
4Model_6_VGG16_with_augmentation_1/output_layer_1/AddAddV2AModel_6_VGG16_with_augmentation_1/output_layer_1/MatMul:product:0KModel_6_VGG16_with_augmentation_1/output_layer_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
8Model_6_VGG16_with_augmentation_1/output_layer_1/SoftmaxSoftmax8Model_6_VGG16_with_augmentation_1/output_layer_1/Add:z:0*
T0*'
_output_shapes
:����������
IdentityIdentityBModel_6_VGG16_with_augmentation_1/output_layer_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpW^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/AssignVariableOpU^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOpW^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp_1W^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOpY^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOp_1U^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOpW^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_1W^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_2W^Model_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_3D^Model_6_VGG16_with_augmentation_1/output_layer_1/Add/ReadVariableOpE^Model_6_VGG16_with_augmentation_1/output_layer_1/Cast/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/convolution/ReadVariableOpP^Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Reshape/ReadVariableOpT^Model_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/convolution/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2�
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/AssignVariableOpVModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/AssignVariableOp2�
TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOpTModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp2�
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp_1VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_flip_2_1/ReadVariableOp_12�
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOpVModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOp2�
XModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOp_1XModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/AssignVariableOp_12�
TModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOpTModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp2�
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_1VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_12�
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_2VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_22�
VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_3VModel_6_VGG16_with_augmentation_1/data_augmentation_1/random_zoom_2_1/ReadVariableOp_32�
CModel_6_VGG16_with_augmentation_1/output_layer_1/Add/ReadVariableOpCModel_6_VGG16_with_augmentation_1/output_layer_1/Add/ReadVariableOp2�
DModel_6_VGG16_with_augmentation_1/output_layer_1/Cast/ReadVariableOpDModel_6_VGG16_with_augmentation_1/output_layer_1/Cast/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv1_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block1_conv2_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv1_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block2_conv2_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv1_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv2_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block3_conv3_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv1_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv2_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block4_conv3_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv1_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv2_1/convolution/ReadVariableOp2�
OModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Reshape/ReadVariableOpOModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/Reshape/ReadVariableOp2�
SModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/convolution/ReadVariableOpSModel_6_VGG16_with_augmentation_1/vgg16_1/block5_conv3_1/convolution/ReadVariableOp:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
-__inference_signature_wrapper___call___384844
input_layer
unknown:
	unknown_0:#
	unknown_1:@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�&

unknown_25:��

unknown_26:	�

unknown_27:	�

unknown_28:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*9
config_proto)'

CPU

GPU 

XPU2*0J 8� *$
fR
__inference___call___384713o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer:&"
 
_user_specified_name384782:&"
 
_user_specified_name384784:&"
 
_user_specified_name384786:&"
 
_user_specified_name384788:&"
 
_user_specified_name384790:&"
 
_user_specified_name384792:&"
 
_user_specified_name384794:&"
 
_user_specified_name384796:&	"
 
_user_specified_name384798:&
"
 
_user_specified_name384800:&"
 
_user_specified_name384802:&"
 
_user_specified_name384804:&"
 
_user_specified_name384806:&"
 
_user_specified_name384808:&"
 
_user_specified_name384810:&"
 
_user_specified_name384812:&"
 
_user_specified_name384814:&"
 
_user_specified_name384816:&"
 
_user_specified_name384818:&"
 
_user_specified_name384820:&"
 
_user_specified_name384822:&"
 
_user_specified_name384824:&"
 
_user_specified_name384826:&"
 
_user_specified_name384828:&"
 
_user_specified_name384830:&"
 
_user_specified_name384832:&"
 
_user_specified_name384834:&"
 
_user_specified_name384836:&"
 
_user_specified_name384838:&"
 
_user_specified_name384840
�
�
-__inference_signature_wrapper___call___384779
input_layer
unknown:
	unknown_0:#
	unknown_1:@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�%
	unknown_7:��
	unknown_8:	�%
	unknown_9:��

unknown_10:	�&

unknown_11:��

unknown_12:	�&

unknown_13:��

unknown_14:	�&

unknown_15:��

unknown_16:	�&

unknown_17:��

unknown_18:	�&

unknown_19:��

unknown_20:	�&

unknown_21:��

unknown_22:	�&

unknown_23:��

unknown_24:	�&

unknown_25:��

unknown_26:	�

unknown_27:	�

unknown_28:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
*9
config_proto)'

CPU

GPU 

XPU2*0J 8� *$
fR
__inference___call___384713o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:�����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
1
_output_shapes
:�����������
%
_user_specified_nameinput_layer:&"
 
_user_specified_name384717:&"
 
_user_specified_name384719:&"
 
_user_specified_name384721:&"
 
_user_specified_name384723:&"
 
_user_specified_name384725:&"
 
_user_specified_name384727:&"
 
_user_specified_name384729:&"
 
_user_specified_name384731:&	"
 
_user_specified_name384733:&
"
 
_user_specified_name384735:&"
 
_user_specified_name384737:&"
 
_user_specified_name384739:&"
 
_user_specified_name384741:&"
 
_user_specified_name384743:&"
 
_user_specified_name384745:&"
 
_user_specified_name384747:&"
 
_user_specified_name384749:&"
 
_user_specified_name384751:&"
 
_user_specified_name384753:&"
 
_user_specified_name384755:&"
 
_user_specified_name384757:&"
 
_user_specified_name384759:&"
 
_user_specified_name384761:&"
 
_user_specified_name384763:&"
 
_user_specified_name384765:&"
 
_user_specified_name384767:&"
 
_user_specified_name384769:&"
 
_user_specified_name384771:&"
 
_user_specified_name384773:&"
 
_user_specified_name384775
��
�&
"__inference__traced_restore_385537
file_prefix*
assignvariableop_variable_29:,
assignvariableop_1_variable_28:8
assignvariableop_2_variable_27:@,
assignvariableop_3_variable_26:@8
assignvariableop_4_variable_25:@@,
assignvariableop_5_variable_24:@9
assignvariableop_6_variable_23:@�-
assignvariableop_7_variable_22:	�:
assignvariableop_8_variable_21:��-
assignvariableop_9_variable_20:	�;
assignvariableop_10_variable_19:��.
assignvariableop_11_variable_18:	�;
assignvariableop_12_variable_17:��.
assignvariableop_13_variable_16:	�;
assignvariableop_14_variable_15:��.
assignvariableop_15_variable_14:	�;
assignvariableop_16_variable_13:��.
assignvariableop_17_variable_12:	�;
assignvariableop_18_variable_11:��.
assignvariableop_19_variable_10:	�:
assignvariableop_20_variable_9:��-
assignvariableop_21_variable_8:	�:
assignvariableop_22_variable_7:��-
assignvariableop_23_variable_6:	�:
assignvariableop_24_variable_5:��-
assignvariableop_25_variable_4:	�:
assignvariableop_26_variable_3:��-
assignvariableop_27_variable_2:	�1
assignvariableop_28_variable_1:	�*
assignvariableop_29_variable:D
)assignvariableop_30_block2_conv1_kernel_1:@�E
)assignvariableop_31_block4_conv3_kernel_1:��<
)assignvariableop_32_output_layer_kernel_1:	�6
'assignvariableop_33_block4_conv2_bias_1:	�E
)assignvariableop_34_block5_conv1_kernel_1:��E
)assignvariableop_35_block5_conv3_kernel_1:��6
'assignvariableop_36_block2_conv2_bias_1:	�E
)assignvariableop_37_block3_conv3_kernel_1:��E
)assignvariableop_38_block4_conv2_kernel_1:��E
)assignvariableop_39_block2_conv2_kernel_1:��6
'assignvariableop_40_block3_conv1_bias_1:	�E
)assignvariableop_41_block4_conv1_kernel_1:��6
'assignvariableop_42_block4_conv1_bias_1:	�6
'assignvariableop_43_block5_conv2_bias_1:	�5
'assignvariableop_44_block1_conv2_bias_1:@E
)assignvariableop_45_block3_conv1_kernel_1:��6
'assignvariableop_46_block2_conv1_bias_1:	�5
'assignvariableop_47_output_layer_bias_1:C
)assignvariableop_48_block1_conv1_kernel_1:@E
)assignvariableop_49_block3_conv2_kernel_1:��6
'assignvariableop_50_block3_conv3_bias_1:	�6
'assignvariableop_51_block4_conv3_bias_1:	�6
'assignvariableop_52_block5_conv1_bias_1:	�E
)assignvariableop_53_block5_conv2_kernel_1:��6
'assignvariableop_54_block5_conv3_bias_1:	�5
'assignvariableop_55_block1_conv1_bias_1:@C
)assignvariableop_56_block1_conv2_kernel_1:@@6
'assignvariableop_57_block3_conv2_bias_1:	�J
<assignvariableop_58_seed_generator_24_seed_generator_state_1:J
<assignvariableop_59_seed_generator_25_seed_generator_state_1:
identity_61��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*K
dtypesA
?2=[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_29Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_28Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_27Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_26Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_25Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_24Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_23Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_22Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_21Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_20Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_19Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_18Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_17Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_16Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_15Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_14Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_13Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_12Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_11Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_10Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_9Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_variable_8Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_variable_7Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_variable_6Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_variable_5Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_variable_4Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_variable_3Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_variable_2Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_variable_1Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_variableIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_block2_conv1_kernel_1Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_block4_conv3_kernel_1Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp)assignvariableop_32_output_layer_kernel_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp'assignvariableop_33_block4_conv2_bias_1Identity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp)assignvariableop_34_block5_conv1_kernel_1Identity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_block5_conv3_kernel_1Identity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_block2_conv2_bias_1Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_block3_conv3_kernel_1Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp)assignvariableop_38_block4_conv2_kernel_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp)assignvariableop_39_block2_conv2_kernel_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp'assignvariableop_40_block3_conv1_bias_1Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp)assignvariableop_41_block4_conv1_kernel_1Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp'assignvariableop_42_block4_conv1_bias_1Identity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp'assignvariableop_43_block5_conv2_bias_1Identity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp'assignvariableop_44_block1_conv2_bias_1Identity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp)assignvariableop_45_block3_conv1_kernel_1Identity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp'assignvariableop_46_block2_conv1_bias_1Identity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp'assignvariableop_47_output_layer_bias_1Identity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp)assignvariableop_48_block1_conv1_kernel_1Identity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_block3_conv2_kernel_1Identity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp'assignvariableop_50_block3_conv3_bias_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp'assignvariableop_51_block4_conv3_bias_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp'assignvariableop_52_block5_conv1_bias_1Identity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp)assignvariableop_53_block5_conv2_kernel_1Identity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp'assignvariableop_54_block5_conv3_bias_1Identity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp'assignvariableop_55_block1_conv1_bias_1Identity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp)assignvariableop_56_block1_conv2_kernel_1Identity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp'assignvariableop_57_block3_conv2_bias_1Identity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp<assignvariableop_58_seed_generator_24_seed_generator_state_1Identity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp<assignvariableop_59_seed_generator_25_seed_generator_state_1Identity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_60Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_61IdentityIdentity_60:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_61Identity_61:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes|
z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_22:+	'
%
_user_specified_nameVariable_21:+
'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:51
/
_user_specified_nameblock2_conv1/kernel_1:5 1
/
_user_specified_nameblock4_conv3/kernel_1:5!1
/
_user_specified_nameoutput_layer/kernel_1:3"/
-
_user_specified_nameblock4_conv2/bias_1:5#1
/
_user_specified_nameblock5_conv1/kernel_1:5$1
/
_user_specified_nameblock5_conv3/kernel_1:3%/
-
_user_specified_nameblock2_conv2/bias_1:5&1
/
_user_specified_nameblock3_conv3/kernel_1:5'1
/
_user_specified_nameblock4_conv2/kernel_1:5(1
/
_user_specified_nameblock2_conv2/kernel_1:3)/
-
_user_specified_nameblock3_conv1/bias_1:5*1
/
_user_specified_nameblock4_conv1/kernel_1:3+/
-
_user_specified_nameblock4_conv1/bias_1:3,/
-
_user_specified_nameblock5_conv2/bias_1:3-/
-
_user_specified_nameblock1_conv2/bias_1:5.1
/
_user_specified_nameblock3_conv1/kernel_1:3//
-
_user_specified_nameblock2_conv1/bias_1:30/
-
_user_specified_nameoutput_layer/bias_1:511
/
_user_specified_nameblock1_conv1/kernel_1:521
/
_user_specified_nameblock3_conv2/kernel_1:33/
-
_user_specified_nameblock3_conv3/bias_1:34/
-
_user_specified_nameblock4_conv3/bias_1:35/
-
_user_specified_nameblock5_conv1/bias_1:561
/
_user_specified_nameblock5_conv2/kernel_1:37/
-
_user_specified_nameblock5_conv3/bias_1:38/
-
_user_specified_nameblock1_conv1/bias_1:591
/
_user_specified_nameblock1_conv2/kernel_1:3:/
-
_user_specified_nameblock3_conv2/bias_1:H;D
B
_user_specified_name*(seed_generator_24/seed_generator_state_1:H<D
B
_user_specified_name*(seed_generator_25/seed_generator_state_1
��
�7
__inference__traced_save_385348
file_prefix0
"read_disablecopyonread_variable_29:2
$read_1_disablecopyonread_variable_28:>
$read_2_disablecopyonread_variable_27:@2
$read_3_disablecopyonread_variable_26:@>
$read_4_disablecopyonread_variable_25:@@2
$read_5_disablecopyonread_variable_24:@?
$read_6_disablecopyonread_variable_23:@�3
$read_7_disablecopyonread_variable_22:	�@
$read_8_disablecopyonread_variable_21:��3
$read_9_disablecopyonread_variable_20:	�A
%read_10_disablecopyonread_variable_19:��4
%read_11_disablecopyonread_variable_18:	�A
%read_12_disablecopyonread_variable_17:��4
%read_13_disablecopyonread_variable_16:	�A
%read_14_disablecopyonread_variable_15:��4
%read_15_disablecopyonread_variable_14:	�A
%read_16_disablecopyonread_variable_13:��4
%read_17_disablecopyonread_variable_12:	�A
%read_18_disablecopyonread_variable_11:��4
%read_19_disablecopyonread_variable_10:	�@
$read_20_disablecopyonread_variable_9:��3
$read_21_disablecopyonread_variable_8:	�@
$read_22_disablecopyonread_variable_7:��3
$read_23_disablecopyonread_variable_6:	�@
$read_24_disablecopyonread_variable_5:��3
$read_25_disablecopyonread_variable_4:	�@
$read_26_disablecopyonread_variable_3:��3
$read_27_disablecopyonread_variable_2:	�7
$read_28_disablecopyonread_variable_1:	�0
"read_29_disablecopyonread_variable:J
/read_30_disablecopyonread_block2_conv1_kernel_1:@�K
/read_31_disablecopyonread_block4_conv3_kernel_1:��B
/read_32_disablecopyonread_output_layer_kernel_1:	�<
-read_33_disablecopyonread_block4_conv2_bias_1:	�K
/read_34_disablecopyonread_block5_conv1_kernel_1:��K
/read_35_disablecopyonread_block5_conv3_kernel_1:��<
-read_36_disablecopyonread_block2_conv2_bias_1:	�K
/read_37_disablecopyonread_block3_conv3_kernel_1:��K
/read_38_disablecopyonread_block4_conv2_kernel_1:��K
/read_39_disablecopyonread_block2_conv2_kernel_1:��<
-read_40_disablecopyonread_block3_conv1_bias_1:	�K
/read_41_disablecopyonread_block4_conv1_kernel_1:��<
-read_42_disablecopyonread_block4_conv1_bias_1:	�<
-read_43_disablecopyonread_block5_conv2_bias_1:	�;
-read_44_disablecopyonread_block1_conv2_bias_1:@K
/read_45_disablecopyonread_block3_conv1_kernel_1:��<
-read_46_disablecopyonread_block2_conv1_bias_1:	�;
-read_47_disablecopyonread_output_layer_bias_1:I
/read_48_disablecopyonread_block1_conv1_kernel_1:@K
/read_49_disablecopyonread_block3_conv2_kernel_1:��<
-read_50_disablecopyonread_block3_conv3_bias_1:	�<
-read_51_disablecopyonread_block4_conv3_bias_1:	�<
-read_52_disablecopyonread_block5_conv1_bias_1:	�K
/read_53_disablecopyonread_block5_conv2_kernel_1:��<
-read_54_disablecopyonread_block5_conv3_bias_1:	�;
-read_55_disablecopyonread_block1_conv1_bias_1:@I
/read_56_disablecopyonread_block1_conv2_kernel_1:@@<
-read_57_disablecopyonread_block3_conv2_bias_1:	�P
Bread_58_disablecopyonread_seed_generator_24_seed_generator_state_1:P
Bread_59_disablecopyonread_seed_generator_25_seed_generator_state_1:
savev2_const
identity_121��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: t
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_29"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_29^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_28"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_28^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_27"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_27^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:@x
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_26"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_26^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@x
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_25"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_25^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@x
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_24"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_24^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@x
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_23"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_23^Read_6/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0w
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�x
Read_7/DisableCopyOnReadDisableCopyOnRead$read_7_disablecopyonread_variable_22"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp$read_7_disablecopyonread_variable_22^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�x
Read_8/DisableCopyOnReadDisableCopyOnRead$read_8_disablecopyonread_variable_21"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp$read_8_disablecopyonread_variable_21^Read_8/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0x
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*(
_output_shapes
:��x
Read_9/DisableCopyOnReadDisableCopyOnRead$read_9_disablecopyonread_variable_20"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp$read_9_disablecopyonread_variable_20^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_10/DisableCopyOnReadDisableCopyOnRead%read_10_disablecopyonread_variable_19"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp%read_10_disablecopyonread_variable_19^Read_10/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*(
_output_shapes
:��z
Read_11/DisableCopyOnReadDisableCopyOnRead%read_11_disablecopyonread_variable_18"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp%read_11_disablecopyonread_variable_18^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_12/DisableCopyOnReadDisableCopyOnRead%read_12_disablecopyonread_variable_17"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp%read_12_disablecopyonread_variable_17^Read_12/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*(
_output_shapes
:��z
Read_13/DisableCopyOnReadDisableCopyOnRead%read_13_disablecopyonread_variable_16"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp%read_13_disablecopyonread_variable_16^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_14/DisableCopyOnReadDisableCopyOnRead%read_14_disablecopyonread_variable_15"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp%read_14_disablecopyonread_variable_15^Read_14/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*(
_output_shapes
:��z
Read_15/DisableCopyOnReadDisableCopyOnRead%read_15_disablecopyonread_variable_14"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp%read_15_disablecopyonread_variable_14^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_16/DisableCopyOnReadDisableCopyOnRead%read_16_disablecopyonread_variable_13"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp%read_16_disablecopyonread_variable_13^Read_16/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*(
_output_shapes
:��z
Read_17/DisableCopyOnReadDisableCopyOnRead%read_17_disablecopyonread_variable_12"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp%read_17_disablecopyonread_variable_12^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:�z
Read_18/DisableCopyOnReadDisableCopyOnRead%read_18_disablecopyonread_variable_11"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp%read_18_disablecopyonread_variable_11^Read_18/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*(
_output_shapes
:��z
Read_19/DisableCopyOnReadDisableCopyOnRead%read_19_disablecopyonread_variable_10"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp%read_19_disablecopyonread_variable_10^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes	
:�y
Read_20/DisableCopyOnReadDisableCopyOnRead$read_20_disablecopyonread_variable_9"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp$read_20_disablecopyonread_variable_9^Read_20/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*(
_output_shapes
:��y
Read_21/DisableCopyOnReadDisableCopyOnRead$read_21_disablecopyonread_variable_8"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp$read_21_disablecopyonread_variable_8^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:�y
Read_22/DisableCopyOnReadDisableCopyOnRead$read_22_disablecopyonread_variable_7"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp$read_22_disablecopyonread_variable_7^Read_22/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*(
_output_shapes
:��y
Read_23/DisableCopyOnReadDisableCopyOnRead$read_23_disablecopyonread_variable_6"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp$read_23_disablecopyonread_variable_6^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes	
:�y
Read_24/DisableCopyOnReadDisableCopyOnRead$read_24_disablecopyonread_variable_5"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp$read_24_disablecopyonread_variable_5^Read_24/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*(
_output_shapes
:��y
Read_25/DisableCopyOnReadDisableCopyOnRead$read_25_disablecopyonread_variable_4"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp$read_25_disablecopyonread_variable_4^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes	
:�y
Read_26/DisableCopyOnReadDisableCopyOnRead$read_26_disablecopyonread_variable_3"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp$read_26_disablecopyonread_variable_3^Read_26/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*(
_output_shapes
:��y
Read_27/DisableCopyOnReadDisableCopyOnRead$read_27_disablecopyonread_variable_2"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp$read_27_disablecopyonread_variable_2^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:�y
Read_28/DisableCopyOnReadDisableCopyOnRead$read_28_disablecopyonread_variable_1"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp$read_28_disablecopyonread_variable_1^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:	�w
Read_29/DisableCopyOnReadDisableCopyOnRead"read_29_disablecopyonread_variable"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp"read_29_disablecopyonread_variable^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_30/DisableCopyOnReadDisableCopyOnRead/read_30_disablecopyonread_block2_conv1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp/read_30_disablecopyonread_block2_conv1_kernel_1^Read_30/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*'
_output_shapes
:@��
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_block4_conv3_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_block4_conv3_kernel_1^Read_31/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_32/DisableCopyOnReadDisableCopyOnRead/read_32_disablecopyonread_output_layer_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp/read_32_disablecopyonread_output_layer_kernel_1^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_33/DisableCopyOnReadDisableCopyOnRead-read_33_disablecopyonread_block4_conv2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp-read_33_disablecopyonread_block4_conv2_bias_1^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_34/DisableCopyOnReadDisableCopyOnRead/read_34_disablecopyonread_block5_conv1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp/read_34_disablecopyonread_block5_conv1_kernel_1^Read_34/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_35/DisableCopyOnReadDisableCopyOnRead/read_35_disablecopyonread_block5_conv3_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp/read_35_disablecopyonread_block5_conv3_kernel_1^Read_35/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_36/DisableCopyOnReadDisableCopyOnRead-read_36_disablecopyonread_block2_conv2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp-read_36_disablecopyonread_block2_conv2_bias_1^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_37/DisableCopyOnReadDisableCopyOnRead/read_37_disablecopyonread_block3_conv3_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp/read_37_disablecopyonread_block3_conv3_kernel_1^Read_37/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_38/DisableCopyOnReadDisableCopyOnRead/read_38_disablecopyonread_block4_conv2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp/read_38_disablecopyonread_block4_conv2_kernel_1^Read_38/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_39/DisableCopyOnReadDisableCopyOnRead/read_39_disablecopyonread_block2_conv2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp/read_39_disablecopyonread_block2_conv2_kernel_1^Read_39/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_40/DisableCopyOnReadDisableCopyOnRead-read_40_disablecopyonread_block3_conv1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp-read_40_disablecopyonread_block3_conv1_bias_1^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_41/DisableCopyOnReadDisableCopyOnRead/read_41_disablecopyonread_block4_conv1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp/read_41_disablecopyonread_block4_conv1_kernel_1^Read_41/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_42/DisableCopyOnReadDisableCopyOnRead-read_42_disablecopyonread_block4_conv1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp-read_42_disablecopyonread_block4_conv1_bias_1^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_43/DisableCopyOnReadDisableCopyOnRead-read_43_disablecopyonread_block5_conv2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp-read_43_disablecopyonread_block5_conv2_bias_1^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_44/DisableCopyOnReadDisableCopyOnRead-read_44_disablecopyonread_block1_conv2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp-read_44_disablecopyonread_block1_conv2_bias_1^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_45/DisableCopyOnReadDisableCopyOnRead/read_45_disablecopyonread_block3_conv1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOp/read_45_disablecopyonread_block3_conv1_kernel_1^Read_45/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_46/DisableCopyOnReadDisableCopyOnRead-read_46_disablecopyonread_block2_conv1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOp-read_46_disablecopyonread_block2_conv1_bias_1^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_47/DisableCopyOnReadDisableCopyOnRead-read_47_disablecopyonread_output_layer_bias_1"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp-read_47_disablecopyonread_output_layer_bias_1^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_48/DisableCopyOnReadDisableCopyOnRead/read_48_disablecopyonread_block1_conv1_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp/read_48_disablecopyonread_block1_conv1_kernel_1^Read_48/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*&
_output_shapes
:@�
Read_49/DisableCopyOnReadDisableCopyOnRead/read_49_disablecopyonread_block3_conv2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp/read_49_disablecopyonread_block3_conv2_kernel_1^Read_49/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_50/DisableCopyOnReadDisableCopyOnRead-read_50_disablecopyonread_block3_conv3_bias_1"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp-read_50_disablecopyonread_block3_conv3_bias_1^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_51/DisableCopyOnReadDisableCopyOnRead-read_51_disablecopyonread_block4_conv3_bias_1"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOp-read_51_disablecopyonread_block4_conv3_bias_1^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_52/DisableCopyOnReadDisableCopyOnRead-read_52_disablecopyonread_block5_conv1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOp-read_52_disablecopyonread_block5_conv1_bias_1^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_53/DisableCopyOnReadDisableCopyOnRead/read_53_disablecopyonread_block5_conv2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp/read_53_disablecopyonread_block5_conv2_kernel_1^Read_53/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0z
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��q
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*(
_output_shapes
:���
Read_54/DisableCopyOnReadDisableCopyOnRead-read_54_disablecopyonread_block5_conv3_bias_1"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp-read_54_disablecopyonread_block5_conv3_bias_1^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_55/DisableCopyOnReadDisableCopyOnRead-read_55_disablecopyonread_block1_conv1_bias_1"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp-read_55_disablecopyonread_block1_conv1_bias_1^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_56/DisableCopyOnReadDisableCopyOnRead/read_56_disablecopyonread_block1_conv2_kernel_1"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp/read_56_disablecopyonread_block1_conv2_kernel_1^Read_56/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0x
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@o
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@�
Read_57/DisableCopyOnReadDisableCopyOnRead-read_57_disablecopyonread_block3_conv2_bias_1"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp-read_57_disablecopyonread_block3_conv2_bias_1^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_58/DisableCopyOnReadDisableCopyOnReadBread_58_disablecopyonread_seed_generator_24_seed_generator_state_1"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOpBread_58_disablecopyonread_seed_generator_24_seed_generator_state_1^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_59/DisableCopyOnReadDisableCopyOnReadBread_59_disablecopyonread_seed_generator_25_seed_generator_state_1"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOpBread_59_disablecopyonread_seed_generator_25_seed_generator_state_1^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/16/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/17/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/18/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/19/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/20/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/21/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/22/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/23/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/24/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/25/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/26/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/27/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/28/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/29/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *K
dtypesA
?2=�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_120Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_121IdentityIdentity_120:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_121Identity_121:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes~
|: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:+'
%
_user_specified_nameVariable_29:+'
%
_user_specified_nameVariable_28:+'
%
_user_specified_nameVariable_27:+'
%
_user_specified_nameVariable_26:+'
%
_user_specified_nameVariable_25:+'
%
_user_specified_nameVariable_24:+'
%
_user_specified_nameVariable_23:+'
%
_user_specified_nameVariable_22:+	'
%
_user_specified_nameVariable_21:+
'
%
_user_specified_nameVariable_20:+'
%
_user_specified_nameVariable_19:+'
%
_user_specified_nameVariable_18:+'
%
_user_specified_nameVariable_17:+'
%
_user_specified_nameVariable_16:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_10:*&
$
_user_specified_name
Variable_9:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:($
"
_user_specified_name
Variable:51
/
_user_specified_nameblock2_conv1/kernel_1:5 1
/
_user_specified_nameblock4_conv3/kernel_1:5!1
/
_user_specified_nameoutput_layer/kernel_1:3"/
-
_user_specified_nameblock4_conv2/bias_1:5#1
/
_user_specified_nameblock5_conv1/kernel_1:5$1
/
_user_specified_nameblock5_conv3/kernel_1:3%/
-
_user_specified_nameblock2_conv2/bias_1:5&1
/
_user_specified_nameblock3_conv3/kernel_1:5'1
/
_user_specified_nameblock4_conv2/kernel_1:5(1
/
_user_specified_nameblock2_conv2/kernel_1:3)/
-
_user_specified_nameblock3_conv1/bias_1:5*1
/
_user_specified_nameblock4_conv1/kernel_1:3+/
-
_user_specified_nameblock4_conv1/bias_1:3,/
-
_user_specified_nameblock5_conv2/bias_1:3-/
-
_user_specified_nameblock1_conv2/bias_1:5.1
/
_user_specified_nameblock3_conv1/kernel_1:3//
-
_user_specified_nameblock2_conv1/bias_1:30/
-
_user_specified_nameoutput_layer/bias_1:511
/
_user_specified_nameblock1_conv1/kernel_1:521
/
_user_specified_nameblock3_conv2/kernel_1:33/
-
_user_specified_nameblock3_conv3/bias_1:34/
-
_user_specified_nameblock4_conv3/bias_1:35/
-
_user_specified_nameblock5_conv1/bias_1:561
/
_user_specified_nameblock5_conv2/kernel_1:37/
-
_user_specified_nameblock5_conv3/bias_1:38/
-
_user_specified_nameblock1_conv1/bias_1:591
/
_user_specified_nameblock1_conv2/kernel_1:3:/
-
_user_specified_nameblock3_conv2/bias_1:H;D
B
_user_specified_name*(seed_generator_24/seed_generator_state_1:H<D
B
_user_specified_name*(seed_generator_25/seed_generator_state_1:==9

_output_shapes
: 

_user_specified_nameConst"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
C
input_layer4
serve_input_layer:0�����������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
M
input_layer>
serving_default_input_layer:0�����������>
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�'
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27
$28
%29"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
 24
!25
"26
#27"
trackable_list_wrapper
�
&0
'1
(2
)3
*4
+5
,6
-7
.8
/9
010
111
212
313
414
515
616
717
818
919
:20
;21
<22
=23
>24
?25
@26
A27
B28
C29"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Dtrace_02�
__inference___call___384713�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *4�1
/�,
input_layer�����������zDtrace_0
7
	Eserve
Fserving_default"
signature_map
2:02&seed_generator_24/seed_generator_state
2:02&seed_generator_25/seed_generator_state
-:+@2block1_conv1/kernel
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
:@2block1_conv2/bias
.:,@�2block2_conv1/kernel
 :�2block2_conv1/bias
/:-��2block2_conv2/kernel
 :�2block2_conv2/bias
/:-��2block3_conv1/kernel
 :�2block3_conv1/bias
/:-��2block3_conv2/kernel
 :�2block3_conv2/bias
/:-��2block3_conv3/kernel
 :�2block3_conv3/bias
/:-��2block4_conv1/kernel
 :�2block4_conv1/bias
/:-��2block4_conv2/kernel
 :�2block4_conv2/bias
/:-��2block4_conv3/kernel
 :�2block4_conv3/bias
/:-��2block5_conv1/kernel
 :�2block5_conv1/bias
/:-��2block5_conv2/kernel
 :�2block5_conv2/bias
/:-��2block5_conv3/kernel
 :�2block5_conv3/bias
&:$	�2output_layer/kernel
:2output_layer/bias
.:,@�2block2_conv1/kernel
/:-��2block4_conv3/kernel
&:$	�2output_layer/kernel
 :�2block4_conv2/bias
/:-��2block5_conv1/kernel
/:-��2block5_conv3/kernel
 :�2block2_conv2/bias
/:-��2block3_conv3/kernel
/:-��2block4_conv2/kernel
/:-��2block2_conv2/kernel
 :�2block3_conv1/bias
/:-��2block4_conv1/kernel
 :�2block4_conv1/bias
 :�2block5_conv2/bias
:@2block1_conv2/bias
/:-��2block3_conv1/kernel
 :�2block2_conv1/bias
:2output_layer/bias
-:+@2block1_conv1/kernel
/:-��2block3_conv2/kernel
 :�2block3_conv3/bias
 :�2block4_conv3/bias
 :�2block5_conv1/bias
/:-��2block5_conv2/kernel
 :�2block5_conv3/bias
:@2block1_conv1/bias
-:+@@2block1_conv2/kernel
 :�2block3_conv2/bias
2:02&seed_generator_24/seed_generator_state
2:02&seed_generator_25/seed_generator_state
�B�
__inference___call___384713input_layer"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
-__inference_signature_wrapper___call___384779input_layer"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
  

kwonlyargs�
jinput_layer
kwonlydefaults
 
annotations� *
 
�B�
-__inference_signature_wrapper___call___384844input_layer"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
  

kwonlyargs�
jinput_layer
kwonlydefaults
 
annotations� *
 �
__inference___call___384713�	
 !"#$%>�;
4�1
/�,
input_layer�����������
� "!�
unknown����������
-__inference_signature_wrapper___call___384779�	
 !"#$%M�J
� 
C�@
>
input_layer/�,
input_layer�����������"3�0
.
output_0"�
output_0����������
-__inference_signature_wrapper___call___384844�	
 !"#$%M�J
� 
C�@
>
input_layer/�,
input_layer�����������"3�0
.
output_0"�
output_0���������