ï±
º
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
«
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements#
handleéelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.7.02v2.7.0-0-gc256c071bb28×ó
|
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:®*
shared_namedense_2/kernel
u
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*"
_output_shapes
:®*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:*
dtype0
z
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
û*
shared_namedense_3/kernel
s
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel* 
_output_shapes
:
û*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:û*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:û*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0

conv_lstm2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameconv_lstm2d_1/kernel

(conv_lstm2d_1/kernel/Read/ReadVariableOpReadVariableOpconv_lstm2d_1/kernel*'
_output_shapes
:*
dtype0
¡
conv_lstm2d_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name conv_lstm2d_1/recurrent_kernel

2conv_lstm2d_1/recurrent_kernel/Read/ReadVariableOpReadVariableOpconv_lstm2d_1/recurrent_kernel*'
_output_shapes
:@*
dtype0
}
conv_lstm2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_lstm2d_1/bias
v
&conv_lstm2d_1/bias/Read/ReadVariableOpReadVariableOpconv_lstm2d_1/bias*
_output_shapes	
:*
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

NoOpNoOp
Ì"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*"
valueý!Bú! Bó!

layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
R
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
6
+iter
	,decay
-learning_rate
.momentum
1
/0
01
12
3
4
%5
&6
1
/0
01
12
3
4
%5
&6
 
­
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
	trainable_variables

regularization_losses
 
~

/kernel
0recurrent_kernel
1bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
 

/0
01
12

/0
01
12
 
¹

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
­
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
­
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
­
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
!	variables
"trainable_variables
#regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
'	variables
(trainable_variables
)regularization_losses
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEconv_lstm2d_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEconv_lstm2d_1/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEconv_lstm2d_1/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE
 
*
0
1
2
3
4
5

Z0
[1
 
 

/0
01
12

/0
01
12
 
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
7	variables
8trainable_variables
9regularization_losses
 
 

0
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
 
 
 
 
 
 
 
 
 
4
	atotal
	bcount
c	variables
d	keras_api
D
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

a0
b1

c	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

h	variables
 
#serving_default_conv_lstm2d_1_inputPlaceholder*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd*
dtype0*)
shape :ÿÿÿÿÿÿÿÿÿd
Õ
StatefulPartitionedCallStatefulPartitionedCall#serving_default_conv_lstm2d_1_inputconv_lstm2d_1/kernelconv_lstm2d_1/recurrent_kernelconv_lstm2d_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_15539
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
´
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp(conv_lstm2d_1/kernel/Read/ReadVariableOp2conv_lstm2d_1/recurrent_kernel/Read/ReadVariableOp&conv_lstm2d_1/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *'
f"R 
__inference__traced_save_17348

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_2/kerneldense_2/biasdense_3/kerneldense_3/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumconv_lstm2d_1/kernelconv_lstm2d_1/recurrent_kernelconv_lstm2d_1/biastotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__traced_restore_17403±¦
¹
«
G__inference_sequential_1_layer_call_and_return_conditional_losses_15815

inputsF
+conv_lstm2d_1_split_readvariableop_resource:H
-conv_lstm2d_1_split_1_readvariableop_resource:@<
-conv_lstm2d_1_split_2_readvariableop_resource:	<
&dense_2_matmul_readvariableop_resource:®6
'dense_2_biasadd_readvariableop_resource:	:
&dense_3_matmul_readvariableop_resource:
û6
'dense_3_biasadd_readvariableop_resource:	û
identity¢"conv_lstm2d_1/split/ReadVariableOp¢$conv_lstm2d_1/split_1/ReadVariableOp¢$conv_lstm2d_1/split_2/ReadVariableOp¢conv_lstm2d_1/while¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpl
conv_lstm2d_1/zeros_like	ZerosLikeinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿde
#conv_lstm2d_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
conv_lstm2d_1/SumSumconv_lstm2d_1/zeros_like:y:0,conv_lstm2d_1/Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
conv_lstm2d_1/zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    Á
conv_lstm2d_1/convolutionConv2Dconv_lstm2d_1/Sum:output:0conv_lstm2d_1/zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
conv_lstm2d_1/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                
conv_lstm2d_1/transpose	Transposeinputs%conv_lstm2d_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd^
conv_lstm2d_1/ShapeShapeconv_lstm2d_1/transpose:y:0*
T0*
_output_shapes
:k
!conv_lstm2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#conv_lstm2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#conv_lstm2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
conv_lstm2d_1/strided_sliceStridedSliceconv_lstm2d_1/Shape:output:0*conv_lstm2d_1/strided_slice/stack:output:0,conv_lstm2d_1/strided_slice/stack_1:output:0,conv_lstm2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)conv_lstm2d_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÜ
conv_lstm2d_1/TensorArrayV2TensorListReserve2conv_lstm2d_1/TensorArrayV2/element_shape:output:0$conv_lstm2d_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Cconv_lstm2d_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        
5conv_lstm2d_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lstm2d_1/transpose:y:0Lconv_lstm2d_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#conv_lstm2d_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%conv_lstm2d_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%conv_lstm2d_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
conv_lstm2d_1/strided_slice_1StridedSliceconv_lstm2d_1/transpose:y:0,conv_lstm2d_1/strided_slice_1/stack:output:0.conv_lstm2d_1/strided_slice_1/stack_1:output:0.conv_lstm2d_1/strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask_
conv_lstm2d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"conv_lstm2d_1/split/ReadVariableOpReadVariableOp+conv_lstm2d_1_split_readvariableop_resource*'
_output_shapes
:*
dtype0è
conv_lstm2d_1/splitSplit&conv_lstm2d_1/split/split_dim:output:0*conv_lstm2d_1/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splita
conv_lstm2d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$conv_lstm2d_1/split_1/ReadVariableOpReadVariableOp-conv_lstm2d_1_split_1_readvariableop_resource*'
_output_shapes
:@*
dtype0î
conv_lstm2d_1/split_1Split(conv_lstm2d_1/split_1/split_dim:output:0,conv_lstm2d_1/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splita
conv_lstm2d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
$conv_lstm2d_1/split_2/ReadVariableOpReadVariableOp-conv_lstm2d_1_split_2_readvariableop_resource*
_output_shapes	
:*
dtype0¾
conv_lstm2d_1/split_2Split(conv_lstm2d_1/split_2/split_dim:output:0,conv_lstm2d_1/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÏ
conv_lstm2d_1/convolution_1Conv2D&conv_lstm2d_1/strided_slice_1:output:0conv_lstm2d_1/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
¡
conv_lstm2d_1/BiasAddBiasAdd$conv_lstm2d_1/convolution_1:output:0conv_lstm2d_1/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ï
conv_lstm2d_1/convolution_2Conv2D&conv_lstm2d_1/strided_slice_1:output:0conv_lstm2d_1/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
£
conv_lstm2d_1/BiasAdd_1BiasAdd$conv_lstm2d_1/convolution_2:output:0conv_lstm2d_1/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ï
conv_lstm2d_1/convolution_3Conv2D&conv_lstm2d_1/strided_slice_1:output:0conv_lstm2d_1/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
£
conv_lstm2d_1/BiasAdd_2BiasAdd$conv_lstm2d_1/convolution_3:output:0conv_lstm2d_1/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ï
conv_lstm2d_1/convolution_4Conv2D&conv_lstm2d_1/strided_slice_1:output:0conv_lstm2d_1/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
£
conv_lstm2d_1/BiasAdd_3BiasAdd$conv_lstm2d_1/convolution_4:output:0conv_lstm2d_1/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ì
conv_lstm2d_1/convolution_5Conv2D"conv_lstm2d_1/convolution:output:0conv_lstm2d_1/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
Ì
conv_lstm2d_1/convolution_6Conv2D"conv_lstm2d_1/convolution:output:0conv_lstm2d_1/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
Ì
conv_lstm2d_1/convolution_7Conv2D"conv_lstm2d_1/convolution:output:0conv_lstm2d_1/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
Ì
conv_lstm2d_1/convolution_8Conv2D"conv_lstm2d_1/convolution:output:0conv_lstm2d_1/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

conv_lstm2d_1/addAddV2conv_lstm2d_1/BiasAdd:output:0$conv_lstm2d_1/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@X
conv_lstm2d_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Z
conv_lstm2d_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
conv_lstm2d_1/MulMulconv_lstm2d_1/add:z:0conv_lstm2d_1/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/Add_1AddV2conv_lstm2d_1/Mul:z:0conv_lstm2d_1/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@j
%conv_lstm2d_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?²
#conv_lstm2d_1/clip_by_value/MinimumMinimumconv_lstm2d_1/Add_1:z:0.conv_lstm2d_1/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
conv_lstm2d_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ²
conv_lstm2d_1/clip_by_valueMaximum'conv_lstm2d_1/clip_by_value/Minimum:z:0&conv_lstm2d_1/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/add_2AddV2 conv_lstm2d_1/BiasAdd_1:output:0$conv_lstm2d_1/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
conv_lstm2d_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Z
conv_lstm2d_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
conv_lstm2d_1/Mul_1Mulconv_lstm2d_1/add_2:z:0conv_lstm2d_1/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/Add_3AddV2conv_lstm2d_1/Mul_1:z:0conv_lstm2d_1/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@l
'conv_lstm2d_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¶
%conv_lstm2d_1/clip_by_value_1/MinimumMinimumconv_lstm2d_1/Add_3:z:00conv_lstm2d_1/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
conv_lstm2d_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¸
conv_lstm2d_1/clip_by_value_1Maximum)conv_lstm2d_1/clip_by_value_1/Minimum:z:0(conv_lstm2d_1/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/mul_2Mul!conv_lstm2d_1/clip_by_value_1:z:0"conv_lstm2d_1/convolution:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/add_4AddV2 conv_lstm2d_1/BiasAdd_2:output:0$conv_lstm2d_1/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@n
conv_lstm2d_1/TanhTanhconv_lstm2d_1/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/mul_3Mulconv_lstm2d_1/clip_by_value:z:0conv_lstm2d_1/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/add_5AddV2conv_lstm2d_1/mul_2:z:0conv_lstm2d_1/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/add_6AddV2 conv_lstm2d_1/BiasAdd_3:output:0$conv_lstm2d_1/convolution_8:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
conv_lstm2d_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Z
conv_lstm2d_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
conv_lstm2d_1/Mul_4Mulconv_lstm2d_1/add_6:z:0conv_lstm2d_1/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/Add_7AddV2conv_lstm2d_1/Mul_4:z:0conv_lstm2d_1/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@l
'conv_lstm2d_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¶
%conv_lstm2d_1/clip_by_value_2/MinimumMinimumconv_lstm2d_1/Add_7:z:00conv_lstm2d_1/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
conv_lstm2d_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¸
conv_lstm2d_1/clip_by_value_2Maximum)conv_lstm2d_1/clip_by_value_2/Minimum:z:0(conv_lstm2d_1/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@p
conv_lstm2d_1/Tanh_1Tanhconv_lstm2d_1/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/mul_5Mul!conv_lstm2d_1/clip_by_value_2:z:0conv_lstm2d_1/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
+conv_lstm2d_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   à
conv_lstm2d_1/TensorArrayV2_1TensorListReserve4conv_lstm2d_1/TensorArrayV2_1/element_shape:output:0$conv_lstm2d_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
conv_lstm2d_1/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&conv_lstm2d_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 conv_lstm2d_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ç
conv_lstm2d_1/whileWhile)conv_lstm2d_1/while/loop_counter:output:0/conv_lstm2d_1/while/maximum_iterations:output:0conv_lstm2d_1/time:output:0&conv_lstm2d_1/TensorArrayV2_1:handle:0"conv_lstm2d_1/convolution:output:0"conv_lstm2d_1/convolution:output:0$conv_lstm2d_1/strided_slice:output:0Econv_lstm2d_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0+conv_lstm2d_1_split_readvariableop_resource-conv_lstm2d_1_split_1_readvariableop_resource-conv_lstm2d_1_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( **
body"R 
conv_lstm2d_1_while_body_15671**
cond"R 
conv_lstm2d_1_while_cond_15670*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
>conv_lstm2d_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   õ
0conv_lstm2d_1/TensorArrayV2Stack/TensorListStackTensorListStackconv_lstm2d_1/while:output:3Gconv_lstm2d_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@*
element_dtype0v
#conv_lstm2d_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%conv_lstm2d_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%conv_lstm2d_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ö
conv_lstm2d_1/strided_slice_2StridedSlice9conv_lstm2d_1/TensorArrayV2Stack/TensorListStack:tensor:0,conv_lstm2d_1/strided_slice_2/stack:output:0.conv_lstm2d_1/strided_slice_2/stack_1:output:0.conv_lstm2d_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_mask{
conv_lstm2d_1/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                É
conv_lstm2d_1/transpose_1	Transpose9conv_lstm2d_1/TensorArrayV2Stack/TensorListStack:tensor:0'conv_lstm2d_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@
dropout_2/IdentityIdentity&conv_lstm2d_1/strided_slice_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ & 
flatten_1/ReshapeReshapedropout_2/Identity:output:0flatten_1/Const:output:0*
T0**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*"
_output_shapes
:®*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout_3/IdentityIdentitydense_2/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
û*
dtype0
dense_3/MatMulMatMuldropout_3/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:û*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûg
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûi
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûÑ
NoOpNoOp#^conv_lstm2d_1/split/ReadVariableOp%^conv_lstm2d_1/split_1/ReadVariableOp%^conv_lstm2d_1/split_2/ReadVariableOp^conv_lstm2d_1/while^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 2H
"conv_lstm2d_1/split/ReadVariableOp"conv_lstm2d_1/split/ReadVariableOp2L
$conv_lstm2d_1/split_1/ReadVariableOp$conv_lstm2d_1/split_1/ReadVariableOp2L
$conv_lstm2d_1/split_2/ReadVariableOp$conv_lstm2d_1/split_2/ReadVariableOp2*
conv_lstm2d_1/whileconv_lstm2d_1/while2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
©Z
ð
while_body_15250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:B
'while_split_1_readvariableop_resource_0:@6
'while_split_2_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:@
%while_split_1_readvariableop_resource:@4
%while_split_2_readvariableop_resource:	¢while/split/ReadVariableOp¢while/split_1/ReadVariableOp¢while/split_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:*
dtype0Ð
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:@*
dtype0Ö
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:*
dtype0¦
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÇ
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@­
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?p
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@}
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^

while/TanhTanhwhile/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/mul_3Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@q
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
while/Tanh_1Tanhwhile/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z
while/mul_5Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@§

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
ó=

K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_17280

inputs
states_0
states_18
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity

identity_1

identity_2¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
convolutionConv2Dinputssplit:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
u
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_1Conv2Dinputssplit:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_2Conv2Dinputssplit:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_3Conv2Dinputssplit:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_4Conv2Dstates_0split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_5Conv2Dstates_0split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_6Conv2Dstates_0split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_7Conv2Dstates_0split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
mul_2Mulclip_by_value_1:z:0states_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@a
IdentityIdentity	mul_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@c

Identity_1Identity	mul_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@c

Identity_2Identity	add_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
"
_user_specified_name
states/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
"
_user_specified_name
states/1
±
¢
G__inference_sequential_1_layer_call_and_return_conditional_losses_15430

inputs.
conv_lstm2d_1_15409:.
conv_lstm2d_1_15411:@"
conv_lstm2d_1_15413:	#
dense_2_15418:®
dense_2_15420:	!
dense_3_15424:
û
dense_3_15426:	û
identity¢%conv_lstm2d_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢!dropout_3/StatefulPartitionedCall¤
%conv_lstm2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lstm2d_1_15409conv_lstm2d_1_15411conv_lstm2d_1_15413*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_15376ý
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall.conv_lstm2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_15140ã
flatten_1/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_15010
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_15418dense_2_15420*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_15023
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_15101
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_15424dense_3_15426*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15047x
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûú
NoOpNoOp&^conv_lstm2d_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 2N
%conv_lstm2d_1/StatefulPartitionedCall%conv_lstm2d_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
©Z
ð
while_body_16205
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:B
'while_split_1_readvariableop_resource_0:@6
'while_split_2_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:@
%while_split_1_readvariableop_resource:@4
%while_split_2_readvariableop_resource:	¢while/split/ReadVariableOp¢while/split_1/ReadVariableOp¢while/split_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:*
dtype0Ð
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:@*
dtype0Ö
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:*
dtype0¦
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÇ
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@­
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?p
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@}
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^

while/TanhTanhwhile/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/mul_3Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@q
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
while/Tanh_1Tanhwhile/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z
while/mul_5Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@§

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
Ð
¼
while_cond_16644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_16644___redundant_placeholder03
/while_while_cond_16644___redundant_placeholder13
/while_while_cond_16644___redundant_placeholder23
/while_while_cond_16644___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
Ó<
ß
!__inference__traced_restore_17403
file_prefix5
assignvariableop_dense_2_kernel:®.
assignvariableop_1_dense_2_bias:	5
!assignvariableop_2_dense_3_kernel:
û.
assignvariableop_3_dense_3_bias:	û%
assignvariableop_4_sgd_iter:	 &
assignvariableop_5_sgd_decay: .
$assignvariableop_6_sgd_learning_rate: )
assignvariableop_7_sgd_momentum: B
'assignvariableop_8_conv_lstm2d_1_kernel:L
1assignvariableop_9_conv_lstm2d_1_recurrent_kernel:@5
&assignvariableop_10_conv_lstm2d_1_bias:	#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: 
identity_16¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ó
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B î
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_sgd_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_sgd_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_momentumIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp'assignvariableop_8_conv_lstm2d_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_9AssignVariableOp1assignvariableop_9_conv_lstm2d_1_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_conv_lstm2d_1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_16Identity_16:output:0*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ö
b
)__inference_dropout_3_layer_call_fn_17059

inputs
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_15101p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í	
Á
#__inference_signature_wrapper_15539
conv_lstm2d_1_input"
unknown:$
	unknown_0:@
	unknown_1:	
	unknown_2:®
	unknown_3:	
	unknown_4:
û
	unknown_5:	û
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallconv_lstm2d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__wrapped_model_14345p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
-
_user_specified_nameconv_lstm2d_1_input
á«
Ô
 __inference__wrapped_model_14345
conv_lstm2d_1_inputS
8sequential_1_conv_lstm2d_1_split_readvariableop_resource:U
:sequential_1_conv_lstm2d_1_split_1_readvariableop_resource:@I
:sequential_1_conv_lstm2d_1_split_2_readvariableop_resource:	I
3sequential_1_dense_2_matmul_readvariableop_resource:®C
4sequential_1_dense_2_biasadd_readvariableop_resource:	G
3sequential_1_dense_3_matmul_readvariableop_resource:
ûC
4sequential_1_dense_3_biasadd_readvariableop_resource:	û
identity¢/sequential_1/conv_lstm2d_1/split/ReadVariableOp¢1sequential_1/conv_lstm2d_1/split_1/ReadVariableOp¢1sequential_1/conv_lstm2d_1/split_2/ReadVariableOp¢ sequential_1/conv_lstm2d_1/while¢+sequential_1/dense_2/BiasAdd/ReadVariableOp¢*sequential_1/dense_2/MatMul/ReadVariableOp¢+sequential_1/dense_3/BiasAdd/ReadVariableOp¢*sequential_1/dense_3/MatMul/ReadVariableOp
%sequential_1/conv_lstm2d_1/zeros_like	ZerosLikeconv_lstm2d_1_input*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdr
0sequential_1/conv_lstm2d_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Æ
sequential_1/conv_lstm2d_1/SumSum)sequential_1/conv_lstm2d_1/zeros_like:y:09sequential_1/conv_lstm2d_1/Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 sequential_1/conv_lstm2d_1/zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    è
&sequential_1/conv_lstm2d_1/convolutionConv2D'sequential_1/conv_lstm2d_1/Sum:output:0)sequential_1/conv_lstm2d_1/zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

)sequential_1/conv_lstm2d_1/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                ¹
$sequential_1/conv_lstm2d_1/transpose	Transposeconv_lstm2d_1_input2sequential_1/conv_lstm2d_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdx
 sequential_1/conv_lstm2d_1/ShapeShape(sequential_1/conv_lstm2d_1/transpose:y:0*
T0*
_output_shapes
:x
.sequential_1/conv_lstm2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_1/conv_lstm2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_1/conv_lstm2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
(sequential_1/conv_lstm2d_1/strided_sliceStridedSlice)sequential_1/conv_lstm2d_1/Shape:output:07sequential_1/conv_lstm2d_1/strided_slice/stack:output:09sequential_1/conv_lstm2d_1/strided_slice/stack_1:output:09sequential_1/conv_lstm2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
6sequential_1/conv_lstm2d_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
(sequential_1/conv_lstm2d_1/TensorArrayV2TensorListReserve?sequential_1/conv_lstm2d_1/TensorArrayV2/element_shape:output:01sequential_1/conv_lstm2d_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ©
Psequential_1/conv_lstm2d_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ±
Bsequential_1/conv_lstm2d_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor(sequential_1/conv_lstm2d_1/transpose:y:0Ysequential_1/conv_lstm2d_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒz
0sequential_1/conv_lstm2d_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2sequential_1/conv_lstm2d_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2sequential_1/conv_lstm2d_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
*sequential_1/conv_lstm2d_1/strided_slice_1StridedSlice(sequential_1/conv_lstm2d_1/transpose:y:09sequential_1/conv_lstm2d_1/strided_slice_1/stack:output:0;sequential_1/conv_lstm2d_1/strided_slice_1/stack_1:output:0;sequential_1/conv_lstm2d_1/strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskl
*sequential_1/conv_lstm2d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :±
/sequential_1/conv_lstm2d_1/split/ReadVariableOpReadVariableOp8sequential_1_conv_lstm2d_1_split_readvariableop_resource*'
_output_shapes
:*
dtype0
 sequential_1/conv_lstm2d_1/splitSplit3sequential_1/conv_lstm2d_1/split/split_dim:output:07sequential_1/conv_lstm2d_1/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitn
,sequential_1/conv_lstm2d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
1sequential_1/conv_lstm2d_1/split_1/ReadVariableOpReadVariableOp:sequential_1_conv_lstm2d_1_split_1_readvariableop_resource*'
_output_shapes
:@*
dtype0
"sequential_1/conv_lstm2d_1/split_1Split5sequential_1/conv_lstm2d_1/split_1/split_dim:output:09sequential_1/conv_lstm2d_1/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitn
,sequential_1/conv_lstm2d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ©
1sequential_1/conv_lstm2d_1/split_2/ReadVariableOpReadVariableOp:sequential_1_conv_lstm2d_1_split_2_readvariableop_resource*
_output_shapes	
:*
dtype0å
"sequential_1/conv_lstm2d_1/split_2Split5sequential_1/conv_lstm2d_1/split_2/split_dim:output:09sequential_1/conv_lstm2d_1/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitö
(sequential_1/conv_lstm2d_1/convolution_1Conv2D3sequential_1/conv_lstm2d_1/strided_slice_1:output:0)sequential_1/conv_lstm2d_1/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
È
"sequential_1/conv_lstm2d_1/BiasAddBiasAdd1sequential_1/conv_lstm2d_1/convolution_1:output:0+sequential_1/conv_lstm2d_1/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ö
(sequential_1/conv_lstm2d_1/convolution_2Conv2D3sequential_1/conv_lstm2d_1/strided_slice_1:output:0)sequential_1/conv_lstm2d_1/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
Ê
$sequential_1/conv_lstm2d_1/BiasAdd_1BiasAdd1sequential_1/conv_lstm2d_1/convolution_2:output:0+sequential_1/conv_lstm2d_1/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ö
(sequential_1/conv_lstm2d_1/convolution_3Conv2D3sequential_1/conv_lstm2d_1/strided_slice_1:output:0)sequential_1/conv_lstm2d_1/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
Ê
$sequential_1/conv_lstm2d_1/BiasAdd_2BiasAdd1sequential_1/conv_lstm2d_1/convolution_3:output:0+sequential_1/conv_lstm2d_1/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ö
(sequential_1/conv_lstm2d_1/convolution_4Conv2D3sequential_1/conv_lstm2d_1/strided_slice_1:output:0)sequential_1/conv_lstm2d_1/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
Ê
$sequential_1/conv_lstm2d_1/BiasAdd_3BiasAdd1sequential_1/conv_lstm2d_1/convolution_4:output:0+sequential_1/conv_lstm2d_1/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ó
(sequential_1/conv_lstm2d_1/convolution_5Conv2D/sequential_1/conv_lstm2d_1/convolution:output:0+sequential_1/conv_lstm2d_1/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
ó
(sequential_1/conv_lstm2d_1/convolution_6Conv2D/sequential_1/conv_lstm2d_1/convolution:output:0+sequential_1/conv_lstm2d_1/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
ó
(sequential_1/conv_lstm2d_1/convolution_7Conv2D/sequential_1/conv_lstm2d_1/convolution:output:0+sequential_1/conv_lstm2d_1/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
ó
(sequential_1/conv_lstm2d_1/convolution_8Conv2D/sequential_1/conv_lstm2d_1/convolution:output:0+sequential_1/conv_lstm2d_1/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
Â
sequential_1/conv_lstm2d_1/addAddV2+sequential_1/conv_lstm2d_1/BiasAdd:output:01sequential_1/conv_lstm2d_1/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@e
 sequential_1/conv_lstm2d_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>g
"sequential_1/conv_lstm2d_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?¯
sequential_1/conv_lstm2d_1/MulMul"sequential_1/conv_lstm2d_1/add:z:0)sequential_1/conv_lstm2d_1/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@µ
 sequential_1/conv_lstm2d_1/Add_1AddV2"sequential_1/conv_lstm2d_1/Mul:z:0+sequential_1/conv_lstm2d_1/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@w
2sequential_1/conv_lstm2d_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ù
0sequential_1/conv_lstm2d_1/clip_by_value/MinimumMinimum$sequential_1/conv_lstm2d_1/Add_1:z:0;sequential_1/conv_lstm2d_1/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@o
*sequential_1/conv_lstm2d_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ù
(sequential_1/conv_lstm2d_1/clip_by_valueMaximum4sequential_1/conv_lstm2d_1/clip_by_value/Minimum:z:03sequential_1/conv_lstm2d_1/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Æ
 sequential_1/conv_lstm2d_1/add_2AddV2-sequential_1/conv_lstm2d_1/BiasAdd_1:output:01sequential_1/conv_lstm2d_1/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@g
"sequential_1/conv_lstm2d_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>g
"sequential_1/conv_lstm2d_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?µ
 sequential_1/conv_lstm2d_1/Mul_1Mul$sequential_1/conv_lstm2d_1/add_2:z:0+sequential_1/conv_lstm2d_1/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@·
 sequential_1/conv_lstm2d_1/Add_3AddV2$sequential_1/conv_lstm2d_1/Mul_1:z:0+sequential_1/conv_lstm2d_1/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@y
4sequential_1/conv_lstm2d_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ý
2sequential_1/conv_lstm2d_1/clip_by_value_1/MinimumMinimum$sequential_1/conv_lstm2d_1/Add_3:z:0=sequential_1/conv_lstm2d_1/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@q
,sequential_1/conv_lstm2d_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ß
*sequential_1/conv_lstm2d_1/clip_by_value_1Maximum6sequential_1/conv_lstm2d_1/clip_by_value_1/Minimum:z:05sequential_1/conv_lstm2d_1/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ã
 sequential_1/conv_lstm2d_1/mul_2Mul.sequential_1/conv_lstm2d_1/clip_by_value_1:z:0/sequential_1/conv_lstm2d_1/convolution:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Æ
 sequential_1/conv_lstm2d_1/add_4AddV2-sequential_1/conv_lstm2d_1/BiasAdd_2:output:01sequential_1/conv_lstm2d_1/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
sequential_1/conv_lstm2d_1/TanhTanh$sequential_1/conv_lstm2d_1/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@µ
 sequential_1/conv_lstm2d_1/mul_3Mul,sequential_1/conv_lstm2d_1/clip_by_value:z:0#sequential_1/conv_lstm2d_1/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@°
 sequential_1/conv_lstm2d_1/add_5AddV2$sequential_1/conv_lstm2d_1/mul_2:z:0$sequential_1/conv_lstm2d_1/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Æ
 sequential_1/conv_lstm2d_1/add_6AddV2-sequential_1/conv_lstm2d_1/BiasAdd_3:output:01sequential_1/conv_lstm2d_1/convolution_8:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@g
"sequential_1/conv_lstm2d_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>g
"sequential_1/conv_lstm2d_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?µ
 sequential_1/conv_lstm2d_1/Mul_4Mul$sequential_1/conv_lstm2d_1/add_6:z:0+sequential_1/conv_lstm2d_1/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@·
 sequential_1/conv_lstm2d_1/Add_7AddV2$sequential_1/conv_lstm2d_1/Mul_4:z:0+sequential_1/conv_lstm2d_1/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@y
4sequential_1/conv_lstm2d_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ý
2sequential_1/conv_lstm2d_1/clip_by_value_2/MinimumMinimum$sequential_1/conv_lstm2d_1/Add_7:z:0=sequential_1/conv_lstm2d_1/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@q
,sequential_1/conv_lstm2d_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ß
*sequential_1/conv_lstm2d_1/clip_by_value_2Maximum6sequential_1/conv_lstm2d_1/clip_by_value_2/Minimum:z:05sequential_1/conv_lstm2d_1/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
!sequential_1/conv_lstm2d_1/Tanh_1Tanh$sequential_1/conv_lstm2d_1/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¹
 sequential_1/conv_lstm2d_1/mul_5Mul.sequential_1/conv_lstm2d_1/clip_by_value_2:z:0%sequential_1/conv_lstm2d_1/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
8sequential_1/conv_lstm2d_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   
*sequential_1/conv_lstm2d_1/TensorArrayV2_1TensorListReserveAsequential_1/conv_lstm2d_1/TensorArrayV2_1/element_shape:output:01sequential_1/conv_lstm2d_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒa
sequential_1/conv_lstm2d_1/timeConst*
_output_shapes
: *
dtype0*
value	B : ~
3sequential_1/conv_lstm2d_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿo
-sequential_1/conv_lstm2d_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ý
 sequential_1/conv_lstm2d_1/whileWhile6sequential_1/conv_lstm2d_1/while/loop_counter:output:0<sequential_1/conv_lstm2d_1/while/maximum_iterations:output:0(sequential_1/conv_lstm2d_1/time:output:03sequential_1/conv_lstm2d_1/TensorArrayV2_1:handle:0/sequential_1/conv_lstm2d_1/convolution:output:0/sequential_1/conv_lstm2d_1/convolution:output:01sequential_1/conv_lstm2d_1/strided_slice:output:0Rsequential_1/conv_lstm2d_1/TensorArrayUnstack/TensorListFromTensor:output_handle:08sequential_1_conv_lstm2d_1_split_readvariableop_resource:sequential_1_conv_lstm2d_1_split_1_readvariableop_resource:sequential_1_conv_lstm2d_1_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *7
body/R-
+sequential_1_conv_lstm2d_1_while_body_14201*7
cond/R-
+sequential_1_conv_lstm2d_1_while_cond_14200*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations ¤
Ksequential_1/conv_lstm2d_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   
=sequential_1/conv_lstm2d_1/TensorArrayV2Stack/TensorListStackTensorListStack)sequential_1/conv_lstm2d_1/while:output:3Tsequential_1/conv_lstm2d_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@*
element_dtype0
0sequential_1/conv_lstm2d_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ|
2sequential_1/conv_lstm2d_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2sequential_1/conv_lstm2d_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
*sequential_1/conv_lstm2d_1/strided_slice_2StridedSliceFsequential_1/conv_lstm2d_1/TensorArrayV2Stack/TensorListStack:tensor:09sequential_1/conv_lstm2d_1/strided_slice_2/stack:output:0;sequential_1/conv_lstm2d_1/strided_slice_2/stack_1:output:0;sequential_1/conv_lstm2d_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_mask
+sequential_1/conv_lstm2d_1/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ð
&sequential_1/conv_lstm2d_1/transpose_1	TransposeFsequential_1/conv_lstm2d_1/TensorArrayV2Stack/TensorListStack:tensor:04sequential_1/conv_lstm2d_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@
sequential_1/dropout_2/IdentityIdentity3sequential_1/conv_lstm2d_1/strided_slice_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ & ¯
sequential_1/flatten_1/ReshapeReshape(sequential_1/dropout_2/Identity:output:0%sequential_1/flatten_1/Const:output:0*
T0**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®¢
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource*"
_output_shapes
:®*
dtype0µ
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¶
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_1/dropout_3/IdentityIdentity'sequential_1/dense_2/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource* 
_output_shapes
:
û*
dtype0¶
sequential_1/dense_3/MatMulMatMul(sequential_1/dropout_3/Identity:output:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:û*
dtype0¶
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
sequential_1/dense_3/SoftmaxSoftmax%sequential_1/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûv
IdentityIdentity&sequential_1/dense_3/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû¹
NoOpNoOp0^sequential_1/conv_lstm2d_1/split/ReadVariableOp2^sequential_1/conv_lstm2d_1/split_1/ReadVariableOp2^sequential_1/conv_lstm2d_1/split_2/ReadVariableOp!^sequential_1/conv_lstm2d_1/while,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 2b
/sequential_1/conv_lstm2d_1/split/ReadVariableOp/sequential_1/conv_lstm2d_1/split/ReadVariableOp2f
1sequential_1/conv_lstm2d_1/split_1/ReadVariableOp1sequential_1/conv_lstm2d_1/split_1/ReadVariableOp2f
1sequential_1/conv_lstm2d_1/split_2/ReadVariableOp1sequential_1/conv_lstm2d_1/split_2/ReadVariableOp2D
 sequential_1/conv_lstm2d_1/while sequential_1/conv_lstm2d_1/while2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:i e
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
-
_user_specified_nameconv_lstm2d_1_input
û
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_17006

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿb@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_nameinputs
Ì
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_15010

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ & _
ReshapeReshapeinputsConst:output:0*
T0**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®[
IdentityIdentityReshape:output:0*
T0**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿb@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_nameinputs
Ð
¼
while_cond_14685
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_14685___redundant_placeholder03
/while_while_cond_14685___redundant_placeholder13
/while_while_cond_14685___redundant_placeholder23
/while_while_cond_14685___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
Üb
Þ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16991

inputs8
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOp¢while^

zeros_like	ZerosLikeinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    
convolutionConv2DSum:output:0zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¥
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
w
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16865*
condR
while_cond_16864*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@p
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ö	
½
,__inference_sequential_1_layer_call_fn_15558

inputs"
unknown:$
	unknown_0:@
	unknown_1:	
	unknown_2:®
	unknown_3:	
	unknown_4:
û
	unknown_5:	û
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_15054p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ý	
Ê
,__inference_sequential_1_layer_call_fn_15466
conv_lstm2d_1_input"
unknown:$
	unknown_0:@
	unknown_1:	
	unknown_2:®
	unknown_3:	
	unknown_4:
û
	unknown_5:	û
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallconv_lstm2d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_15430p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
-
_user_specified_nameconv_lstm2d_1_input
ª

ö
B__inference_dense_3_layer_call_and_return_conditional_losses_17096

inputs2
matmul_readvariableop_resource:
û.
biasadd_readvariableop_resource:	û
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
û*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:û*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_17064

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
Ô
conv_lstm2d_1_while_cond_156708
4conv_lstm2d_1_while_conv_lstm2d_1_while_loop_counter>
:conv_lstm2d_1_while_conv_lstm2d_1_while_maximum_iterations#
conv_lstm2d_1_while_placeholder%
!conv_lstm2d_1_while_placeholder_1%
!conv_lstm2d_1_while_placeholder_2%
!conv_lstm2d_1_while_placeholder_38
4conv_lstm2d_1_while_less_conv_lstm2d_1_strided_sliceO
Kconv_lstm2d_1_while_conv_lstm2d_1_while_cond_15670___redundant_placeholder0O
Kconv_lstm2d_1_while_conv_lstm2d_1_while_cond_15670___redundant_placeholder1O
Kconv_lstm2d_1_while_conv_lstm2d_1_while_cond_15670___redundant_placeholder2O
Kconv_lstm2d_1_while_conv_lstm2d_1_while_cond_15670___redundant_placeholder3 
conv_lstm2d_1_while_identity

conv_lstm2d_1/while/LessLessconv_lstm2d_1_while_placeholder4conv_lstm2d_1_while_less_conv_lstm2d_1_strided_slice*
T0*
_output_shapes
: g
conv_lstm2d_1/while/IdentityIdentityconv_lstm2d_1/while/Less:z:0*
T0
*
_output_shapes
: "E
conv_lstm2d_1_while_identity%conv_lstm2d_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
ò
«
G__inference_sequential_1_layer_call_and_return_conditional_losses_16067

inputsF
+conv_lstm2d_1_split_readvariableop_resource:H
-conv_lstm2d_1_split_1_readvariableop_resource:@<
-conv_lstm2d_1_split_2_readvariableop_resource:	<
&dense_2_matmul_readvariableop_resource:®6
'dense_2_biasadd_readvariableop_resource:	:
&dense_3_matmul_readvariableop_resource:
û6
'dense_3_biasadd_readvariableop_resource:	û
identity¢"conv_lstm2d_1/split/ReadVariableOp¢$conv_lstm2d_1/split_1/ReadVariableOp¢$conv_lstm2d_1/split_2/ReadVariableOp¢conv_lstm2d_1/while¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOpl
conv_lstm2d_1/zeros_like	ZerosLikeinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿde
#conv_lstm2d_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
conv_lstm2d_1/SumSumconv_lstm2d_1/zeros_like:y:0,conv_lstm2d_1/Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdx
conv_lstm2d_1/zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    Á
conv_lstm2d_1/convolutionConv2Dconv_lstm2d_1/Sum:output:0conv_lstm2d_1/zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
conv_lstm2d_1/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                
conv_lstm2d_1/transpose	Transposeinputs%conv_lstm2d_1/transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd^
conv_lstm2d_1/ShapeShapeconv_lstm2d_1/transpose:y:0*
T0*
_output_shapes
:k
!conv_lstm2d_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#conv_lstm2d_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#conv_lstm2d_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
conv_lstm2d_1/strided_sliceStridedSliceconv_lstm2d_1/Shape:output:0*conv_lstm2d_1/strided_slice/stack:output:0,conv_lstm2d_1/strided_slice/stack_1:output:0,conv_lstm2d_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)conv_lstm2d_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÜ
conv_lstm2d_1/TensorArrayV2TensorListReserve2conv_lstm2d_1/TensorArrayV2/element_shape:output:0$conv_lstm2d_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Cconv_lstm2d_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        
5conv_lstm2d_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorconv_lstm2d_1/transpose:y:0Lconv_lstm2d_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒm
#conv_lstm2d_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%conv_lstm2d_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%conv_lstm2d_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¸
conv_lstm2d_1/strided_slice_1StridedSliceconv_lstm2d_1/transpose:y:0,conv_lstm2d_1/strided_slice_1/stack:output:0.conv_lstm2d_1/strided_slice_1/stack_1:output:0.conv_lstm2d_1/strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_mask_
conv_lstm2d_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"conv_lstm2d_1/split/ReadVariableOpReadVariableOp+conv_lstm2d_1_split_readvariableop_resource*'
_output_shapes
:*
dtype0è
conv_lstm2d_1/splitSplit&conv_lstm2d_1/split/split_dim:output:0*conv_lstm2d_1/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splita
conv_lstm2d_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$conv_lstm2d_1/split_1/ReadVariableOpReadVariableOp-conv_lstm2d_1_split_1_readvariableop_resource*'
_output_shapes
:@*
dtype0î
conv_lstm2d_1/split_1Split(conv_lstm2d_1/split_1/split_dim:output:0,conv_lstm2d_1/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splita
conv_lstm2d_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
$conv_lstm2d_1/split_2/ReadVariableOpReadVariableOp-conv_lstm2d_1_split_2_readvariableop_resource*
_output_shapes	
:*
dtype0¾
conv_lstm2d_1/split_2Split(conv_lstm2d_1/split_2/split_dim:output:0,conv_lstm2d_1/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÏ
conv_lstm2d_1/convolution_1Conv2D&conv_lstm2d_1/strided_slice_1:output:0conv_lstm2d_1/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
¡
conv_lstm2d_1/BiasAddBiasAdd$conv_lstm2d_1/convolution_1:output:0conv_lstm2d_1/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ï
conv_lstm2d_1/convolution_2Conv2D&conv_lstm2d_1/strided_slice_1:output:0conv_lstm2d_1/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
£
conv_lstm2d_1/BiasAdd_1BiasAdd$conv_lstm2d_1/convolution_2:output:0conv_lstm2d_1/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ï
conv_lstm2d_1/convolution_3Conv2D&conv_lstm2d_1/strided_slice_1:output:0conv_lstm2d_1/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
£
conv_lstm2d_1/BiasAdd_2BiasAdd$conv_lstm2d_1/convolution_3:output:0conv_lstm2d_1/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ï
conv_lstm2d_1/convolution_4Conv2D&conv_lstm2d_1/strided_slice_1:output:0conv_lstm2d_1/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
£
conv_lstm2d_1/BiasAdd_3BiasAdd$conv_lstm2d_1/convolution_4:output:0conv_lstm2d_1/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ì
conv_lstm2d_1/convolution_5Conv2D"conv_lstm2d_1/convolution:output:0conv_lstm2d_1/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
Ì
conv_lstm2d_1/convolution_6Conv2D"conv_lstm2d_1/convolution:output:0conv_lstm2d_1/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
Ì
conv_lstm2d_1/convolution_7Conv2D"conv_lstm2d_1/convolution:output:0conv_lstm2d_1/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
Ì
conv_lstm2d_1/convolution_8Conv2D"conv_lstm2d_1/convolution:output:0conv_lstm2d_1/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

conv_lstm2d_1/addAddV2conv_lstm2d_1/BiasAdd:output:0$conv_lstm2d_1/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@X
conv_lstm2d_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Z
conv_lstm2d_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
conv_lstm2d_1/MulMulconv_lstm2d_1/add:z:0conv_lstm2d_1/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/Add_1AddV2conv_lstm2d_1/Mul:z:0conv_lstm2d_1/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@j
%conv_lstm2d_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?²
#conv_lstm2d_1/clip_by_value/MinimumMinimumconv_lstm2d_1/Add_1:z:0.conv_lstm2d_1/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
conv_lstm2d_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ²
conv_lstm2d_1/clip_by_valueMaximum'conv_lstm2d_1/clip_by_value/Minimum:z:0&conv_lstm2d_1/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/add_2AddV2 conv_lstm2d_1/BiasAdd_1:output:0$conv_lstm2d_1/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
conv_lstm2d_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Z
conv_lstm2d_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
conv_lstm2d_1/Mul_1Mulconv_lstm2d_1/add_2:z:0conv_lstm2d_1/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/Add_3AddV2conv_lstm2d_1/Mul_1:z:0conv_lstm2d_1/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@l
'conv_lstm2d_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¶
%conv_lstm2d_1/clip_by_value_1/MinimumMinimumconv_lstm2d_1/Add_3:z:00conv_lstm2d_1/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
conv_lstm2d_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¸
conv_lstm2d_1/clip_by_value_1Maximum)conv_lstm2d_1/clip_by_value_1/Minimum:z:0(conv_lstm2d_1/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/mul_2Mul!conv_lstm2d_1/clip_by_value_1:z:0"conv_lstm2d_1/convolution:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/add_4AddV2 conv_lstm2d_1/BiasAdd_2:output:0$conv_lstm2d_1/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@n
conv_lstm2d_1/TanhTanhconv_lstm2d_1/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/mul_3Mulconv_lstm2d_1/clip_by_value:z:0conv_lstm2d_1/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/add_5AddV2conv_lstm2d_1/mul_2:z:0conv_lstm2d_1/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/add_6AddV2 conv_lstm2d_1/BiasAdd_3:output:0$conv_lstm2d_1/convolution_8:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
conv_lstm2d_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Z
conv_lstm2d_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
conv_lstm2d_1/Mul_4Mulconv_lstm2d_1/add_6:z:0conv_lstm2d_1/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/Add_7AddV2conv_lstm2d_1/Mul_4:z:0conv_lstm2d_1/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@l
'conv_lstm2d_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¶
%conv_lstm2d_1/clip_by_value_2/MinimumMinimumconv_lstm2d_1/Add_7:z:00conv_lstm2d_1/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
conv_lstm2d_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¸
conv_lstm2d_1/clip_by_value_2Maximum)conv_lstm2d_1/clip_by_value_2/Minimum:z:0(conv_lstm2d_1/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@p
conv_lstm2d_1/Tanh_1Tanhconv_lstm2d_1/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/mul_5Mul!conv_lstm2d_1/clip_by_value_2:z:0conv_lstm2d_1/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
+conv_lstm2d_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   à
conv_lstm2d_1/TensorArrayV2_1TensorListReserve4conv_lstm2d_1/TensorArrayV2_1/element_shape:output:0$conv_lstm2d_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒT
conv_lstm2d_1/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&conv_lstm2d_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿb
 conv_lstm2d_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ç
conv_lstm2d_1/whileWhile)conv_lstm2d_1/while/loop_counter:output:0/conv_lstm2d_1/while/maximum_iterations:output:0conv_lstm2d_1/time:output:0&conv_lstm2d_1/TensorArrayV2_1:handle:0"conv_lstm2d_1/convolution:output:0"conv_lstm2d_1/convolution:output:0$conv_lstm2d_1/strided_slice:output:0Econv_lstm2d_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0+conv_lstm2d_1_split_readvariableop_resource-conv_lstm2d_1_split_1_readvariableop_resource-conv_lstm2d_1_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( **
body"R 
conv_lstm2d_1_while_body_15909**
cond"R 
conv_lstm2d_1_while_cond_15908*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
>conv_lstm2d_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   õ
0conv_lstm2d_1/TensorArrayV2Stack/TensorListStackTensorListStackconv_lstm2d_1/while:output:3Gconv_lstm2d_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@*
element_dtype0v
#conv_lstm2d_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿo
%conv_lstm2d_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%conv_lstm2d_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ö
conv_lstm2d_1/strided_slice_2StridedSlice9conv_lstm2d_1/TensorArrayV2Stack/TensorListStack:tensor:0,conv_lstm2d_1/strided_slice_2/stack:output:0.conv_lstm2d_1/strided_slice_2/stack_1:output:0.conv_lstm2d_1/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_mask{
conv_lstm2d_1/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                É
conv_lstm2d_1/transpose_1	Transpose9conv_lstm2d_1/TensorArrayV2Stack/TensorListStack:tensor:0'conv_lstm2d_1/transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¡
dropout_2/dropout/MulMul&conv_lstm2d_1/strided_slice_2:output:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@m
dropout_2/dropout/ShapeShape&conv_lstm2d_1/strided_slice_2:output:0*
T0*
_output_shapes
:©
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Í
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ & 
flatten_1/ReshapeReshapedropout_2/dropout/Mul_1:z:0flatten_1/Const:output:0*
T0**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*"
_output_shapes
:®*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?
dropout_3/dropout/MulMuldense_2/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dropout_3/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:¡
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Å
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource* 
_output_shapes
:
û*
dtype0
dense_3/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:û*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûg
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûi
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûÑ
NoOpNoOp#^conv_lstm2d_1/split/ReadVariableOp%^conv_lstm2d_1/split_1/ReadVariableOp%^conv_lstm2d_1/split_2/ReadVariableOp^conv_lstm2d_1/while^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 2H
"conv_lstm2d_1/split/ReadVariableOp"conv_lstm2d_1/split/ReadVariableOp2L
$conv_lstm2d_1/split_1/ReadVariableOp$conv_lstm2d_1/split_1/ReadVariableOp2L
$conv_lstm2d_1/split_2/ReadVariableOp$conv_lstm2d_1/split_2/ReadVariableOp2*
conv_lstm2d_1/whileconv_lstm2d_1/while2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ð

0__inference_conv_lstm_cell_1_layer_call_fn_17113

inputs
states_0
states_1"
unknown:$
	unknown_0:@
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_14447x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
"
_user_specified_name
states/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
"
_user_specified_name
states/1
¢t
°
conv_lstm2d_1_while_body_156718
4conv_lstm2d_1_while_conv_lstm2d_1_while_loop_counter>
:conv_lstm2d_1_while_conv_lstm2d_1_while_maximum_iterations#
conv_lstm2d_1_while_placeholder%
!conv_lstm2d_1_while_placeholder_1%
!conv_lstm2d_1_while_placeholder_2%
!conv_lstm2d_1_while_placeholder_35
1conv_lstm2d_1_while_conv_lstm2d_1_strided_slice_0s
oconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensor_0N
3conv_lstm2d_1_while_split_readvariableop_resource_0:P
5conv_lstm2d_1_while_split_1_readvariableop_resource_0:@D
5conv_lstm2d_1_while_split_2_readvariableop_resource_0:	 
conv_lstm2d_1_while_identity"
conv_lstm2d_1_while_identity_1"
conv_lstm2d_1_while_identity_2"
conv_lstm2d_1_while_identity_3"
conv_lstm2d_1_while_identity_4"
conv_lstm2d_1_while_identity_53
/conv_lstm2d_1_while_conv_lstm2d_1_strided_sliceq
mconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensorL
1conv_lstm2d_1_while_split_readvariableop_resource:N
3conv_lstm2d_1_while_split_1_readvariableop_resource:@B
3conv_lstm2d_1_while_split_2_readvariableop_resource:	¢(conv_lstm2d_1/while/split/ReadVariableOp¢*conv_lstm2d_1/while/split_1/ReadVariableOp¢*conv_lstm2d_1/while/split_2/ReadVariableOp
Econv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        õ
7conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemoconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensor_0conv_lstm2d_1_while_placeholderNconv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0e
#conv_lstm2d_1/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¥
(conv_lstm2d_1/while/split/ReadVariableOpReadVariableOp3conv_lstm2d_1_while_split_readvariableop_resource_0*'
_output_shapes
:*
dtype0ú
conv_lstm2d_1/while/splitSplit,conv_lstm2d_1/while/split/split_dim:output:00conv_lstm2d_1/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitg
%conv_lstm2d_1/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
*conv_lstm2d_1/while/split_1/ReadVariableOpReadVariableOp5conv_lstm2d_1_while_split_1_readvariableop_resource_0*'
_output_shapes
:@*
dtype0
conv_lstm2d_1/while/split_1Split.conv_lstm2d_1/while/split_1/split_dim:output:02conv_lstm2d_1/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitg
%conv_lstm2d_1/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
*conv_lstm2d_1/while/split_2/ReadVariableOpReadVariableOp5conv_lstm2d_1_while_split_2_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ð
conv_lstm2d_1/while/split_2Split.conv_lstm2d_1/while/split_2/split_dim:output:02conv_lstm2d_1/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitñ
conv_lstm2d_1/while/convolutionConv2D>conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0"conv_lstm2d_1/while/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
±
conv_lstm2d_1/while/BiasAddBiasAdd(conv_lstm2d_1/while/convolution:output:0$conv_lstm2d_1/while/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ó
!conv_lstm2d_1/while/convolution_1Conv2D>conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0"conv_lstm2d_1/while/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
µ
conv_lstm2d_1/while/BiasAdd_1BiasAdd*conv_lstm2d_1/while/convolution_1:output:0$conv_lstm2d_1/while/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ó
!conv_lstm2d_1/while/convolution_2Conv2D>conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0"conv_lstm2d_1/while/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
µ
conv_lstm2d_1/while/BiasAdd_2BiasAdd*conv_lstm2d_1/while/convolution_2:output:0$conv_lstm2d_1/while/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ó
!conv_lstm2d_1/while/convolution_3Conv2D>conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0"conv_lstm2d_1/while/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
µ
conv_lstm2d_1/while/BiasAdd_3BiasAdd*conv_lstm2d_1/while/convolution_3:output:0$conv_lstm2d_1/while/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@×
!conv_lstm2d_1/while/convolution_4Conv2D!conv_lstm2d_1_while_placeholder_2$conv_lstm2d_1/while/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
×
!conv_lstm2d_1/while/convolution_5Conv2D!conv_lstm2d_1_while_placeholder_2$conv_lstm2d_1/while/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
×
!conv_lstm2d_1/while/convolution_6Conv2D!conv_lstm2d_1_while_placeholder_2$conv_lstm2d_1/while/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
×
!conv_lstm2d_1/while/convolution_7Conv2D!conv_lstm2d_1_while_placeholder_2$conv_lstm2d_1/while/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
conv_lstm2d_1/while/addAddV2$conv_lstm2d_1/while/BiasAdd:output:0*conv_lstm2d_1/while/convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
conv_lstm2d_1/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>`
conv_lstm2d_1/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
conv_lstm2d_1/while/MulMulconv_lstm2d_1/while/add:z:0"conv_lstm2d_1/while/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ 
conv_lstm2d_1/while/Add_1AddV2conv_lstm2d_1/while/Mul:z:0$conv_lstm2d_1/while/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@p
+conv_lstm2d_1/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
)conv_lstm2d_1/while/clip_by_value/MinimumMinimumconv_lstm2d_1/while/Add_1:z:04conv_lstm2d_1/while/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
#conv_lstm2d_1/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ä
!conv_lstm2d_1/while/clip_by_valueMaximum-conv_lstm2d_1/while/clip_by_value/Minimum:z:0,conv_lstm2d_1/while/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@±
conv_lstm2d_1/while/add_2AddV2&conv_lstm2d_1/while/BiasAdd_1:output:0*conv_lstm2d_1/while/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
conv_lstm2d_1/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>`
conv_lstm2d_1/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ? 
conv_lstm2d_1/while/Mul_1Mulconv_lstm2d_1/while/add_2:z:0$conv_lstm2d_1/while/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
conv_lstm2d_1/while/Add_3AddV2conv_lstm2d_1/while/Mul_1:z:0$conv_lstm2d_1/while/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
-conv_lstm2d_1/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
+conv_lstm2d_1/while/clip_by_value_1/MinimumMinimumconv_lstm2d_1/while/Add_3:z:06conv_lstm2d_1/while/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@j
%conv_lstm2d_1/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
#conv_lstm2d_1/while/clip_by_value_1Maximum/conv_lstm2d_1/while/clip_by_value_1/Minimum:z:0.conv_lstm2d_1/while/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@§
conv_lstm2d_1/while/mul_2Mul'conv_lstm2d_1/while/clip_by_value_1:z:0!conv_lstm2d_1_while_placeholder_3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@±
conv_lstm2d_1/while/add_4AddV2&conv_lstm2d_1/while/BiasAdd_2:output:0*conv_lstm2d_1/while/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z
conv_lstm2d_1/while/TanhTanhconv_lstm2d_1/while/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ 
conv_lstm2d_1/while/mul_3Mul%conv_lstm2d_1/while/clip_by_value:z:0conv_lstm2d_1/while/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/while/add_5AddV2conv_lstm2d_1/while/mul_2:z:0conv_lstm2d_1/while/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@±
conv_lstm2d_1/while/add_6AddV2&conv_lstm2d_1/while/BiasAdd_3:output:0*conv_lstm2d_1/while/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
conv_lstm2d_1/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>`
conv_lstm2d_1/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ? 
conv_lstm2d_1/while/Mul_4Mulconv_lstm2d_1/while/add_6:z:0$conv_lstm2d_1/while/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
conv_lstm2d_1/while/Add_7AddV2conv_lstm2d_1/while/Mul_4:z:0$conv_lstm2d_1/while/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
-conv_lstm2d_1/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
+conv_lstm2d_1/while/clip_by_value_2/MinimumMinimumconv_lstm2d_1/while/Add_7:z:06conv_lstm2d_1/while/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@j
%conv_lstm2d_1/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
#conv_lstm2d_1/while/clip_by_value_2Maximum/conv_lstm2d_1/while/clip_by_value_2/Minimum:z:0.conv_lstm2d_1/while/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@|
conv_lstm2d_1/while/Tanh_1Tanhconv_lstm2d_1/while/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¤
conv_lstm2d_1/while/mul_5Mul'conv_lstm2d_1/while/clip_by_value_2:z:0conv_lstm2d_1/while/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ð
8conv_lstm2d_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!conv_lstm2d_1_while_placeholder_1conv_lstm2d_1_while_placeholderconv_lstm2d_1/while/mul_5:z:0*
_output_shapes
: *
element_dtype0:éèÒ]
conv_lstm2d_1/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :
conv_lstm2d_1/while/add_8AddV2conv_lstm2d_1_while_placeholder$conv_lstm2d_1/while/add_8/y:output:0*
T0*
_output_shapes
: ]
conv_lstm2d_1/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :
conv_lstm2d_1/while/add_9AddV24conv_lstm2d_1_while_conv_lstm2d_1_while_loop_counter$conv_lstm2d_1/while/add_9/y:output:0*
T0*
_output_shapes
: 
conv_lstm2d_1/while/IdentityIdentityconv_lstm2d_1/while/add_9:z:0^conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: ¢
conv_lstm2d_1/while/Identity_1Identity:conv_lstm2d_1_while_conv_lstm2d_1_while_maximum_iterations^conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: 
conv_lstm2d_1/while/Identity_2Identityconv_lstm2d_1/while/add_8:z:0^conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: °
conv_lstm2d_1/while/Identity_3IdentityHconv_lstm2d_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: 
conv_lstm2d_1/while/Identity_4Identityconv_lstm2d_1/while/mul_5:z:0^conv_lstm2d_1/while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/while/Identity_5Identityconv_lstm2d_1/while/add_5:z:0^conv_lstm2d_1/while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ß
conv_lstm2d_1/while/NoOpNoOp)^conv_lstm2d_1/while/split/ReadVariableOp+^conv_lstm2d_1/while/split_1/ReadVariableOp+^conv_lstm2d_1/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/conv_lstm2d_1_while_conv_lstm2d_1_strided_slice1conv_lstm2d_1_while_conv_lstm2d_1_strided_slice_0"E
conv_lstm2d_1_while_identity%conv_lstm2d_1/while/Identity:output:0"I
conv_lstm2d_1_while_identity_1'conv_lstm2d_1/while/Identity_1:output:0"I
conv_lstm2d_1_while_identity_2'conv_lstm2d_1/while/Identity_2:output:0"I
conv_lstm2d_1_while_identity_3'conv_lstm2d_1/while/Identity_3:output:0"I
conv_lstm2d_1_while_identity_4'conv_lstm2d_1/while/Identity_4:output:0"I
conv_lstm2d_1_while_identity_5'conv_lstm2d_1/while/Identity_5:output:0"l
3conv_lstm2d_1_while_split_1_readvariableop_resource5conv_lstm2d_1_while_split_1_readvariableop_resource_0"l
3conv_lstm2d_1_while_split_2_readvariableop_resource5conv_lstm2d_1_while_split_2_readvariableop_resource_0"h
1conv_lstm2d_1_while_split_readvariableop_resource3conv_lstm2d_1_while_split_readvariableop_resource_0"à
mconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensoroconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 2T
(conv_lstm2d_1/while/split/ReadVariableOp(conv_lstm2d_1/while/split/ReadVariableOp2X
*conv_lstm2d_1/while/split_1/ReadVariableOp*conv_lstm2d_1/while/split_1/ReadVariableOp2X
*conv_lstm2d_1/while/split_2/ReadVariableOp*conv_lstm2d_1/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
«!

while_body_14461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_14485_0:(
while_14487_0:@
while_14489_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_14485:&
while_14487:@
while_14489:	¢while/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_14485_0while_14487_0while_14489_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_14447Ï
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@l

while/NoOpNoOp^while/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
while_14485while_14485_0"
while_14487while_14487_0"
while_14489while_14489_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
Û
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_15034

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
Ú
G__inference_sequential_1_layer_call_and_return_conditional_losses_15054

inputs.
conv_lstm2d_1_14990:.
conv_lstm2d_1_14992:@"
conv_lstm2d_1_14994:	#
dense_2_15024:®
dense_2_15026:	!
dense_3_15048:
û
dense_3_15050:	û
identity¢%conv_lstm2d_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¤
%conv_lstm2d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_lstm2d_1_14990conv_lstm2d_1_14992conv_lstm2d_1_14994*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_14989í
dropout_2/PartitionedCallPartitionedCall.conv_lstm2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_15002Û
flatten_1/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_15010
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_15024dense_2_15026*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_15023ß
dropout_3/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_15034
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_15048dense_3_15050*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15047x
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû²
NoOpNoOp&^conv_lstm2d_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 2N
%conv_lstm2d_1/StatefulPartitionedCall%conv_lstm2d_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ð
¼
while_cond_16424
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_16424___redundant_placeholder03
/while_while_cond_16424___redundant_placeholder13
/while_while_cond_16424___redundant_placeholder23
/while_while_cond_16424___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
c
à
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16551
inputs_08
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOp¢whilei

zeros_like	ZerosLikeinputs_0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    
convolutionConv2DSum:output:0zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¥
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
w
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16425*
condR
while_cond_16424*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   Ô
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ¨
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb@p
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
Å1
í
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_14754

inputs"
unknown:$
	unknown_0:@
	unknown_1:	
identity¢StatefulPartitionedCall¢whileg

zeros_like	ZerosLikeinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    
convolutionConv2DSum:output:0zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskó
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_14635v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Á
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_14686*
condR
while_cond_14685*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   Ô
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ¨
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb@p
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
NoOpNoOp^StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
±&

__inference__traced_save_17348
file_prefix-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop3
/savev2_conv_lstm2d_1_kernel_read_readvariableop=
9savev2_conv_lstm2d_1_recurrent_kernel_read_readvariableop1
-savev2_conv_lstm2d_1_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ð
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B °
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop/savev2_conv_lstm2d_1_kernel_read_readvariableop9savev2_conv_lstm2d_1_recurrent_kernel_read_readvariableop-savev2_conv_lstm2d_1_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*|
_input_shapesk
i: :®::
û:û: : : : ::@:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:®:!

_output_shapes	
::&"
 
_output_shapes
:
û:!

_output_shapes	
:û:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-	)
'
_output_shapes
::-
)
'
_output_shapes
:@:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ð
¼
while_cond_14862
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_14862___redundant_placeholder03
/while_while_cond_14862___redundant_placeholder13
/while_while_cond_14862___redundant_placeholder23
/while_while_cond_14862___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
ª

ö
B__inference_dense_3_layer_call_and_return_conditional_losses_15047

inputs2
matmul_readvariableop_resource:
û.
biasadd_readvariableop_resource:	û
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
û*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:û*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûW
SoftmaxSoftmaxBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûa
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢t
°
conv_lstm2d_1_while_body_159098
4conv_lstm2d_1_while_conv_lstm2d_1_while_loop_counter>
:conv_lstm2d_1_while_conv_lstm2d_1_while_maximum_iterations#
conv_lstm2d_1_while_placeholder%
!conv_lstm2d_1_while_placeholder_1%
!conv_lstm2d_1_while_placeholder_2%
!conv_lstm2d_1_while_placeholder_35
1conv_lstm2d_1_while_conv_lstm2d_1_strided_slice_0s
oconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensor_0N
3conv_lstm2d_1_while_split_readvariableop_resource_0:P
5conv_lstm2d_1_while_split_1_readvariableop_resource_0:@D
5conv_lstm2d_1_while_split_2_readvariableop_resource_0:	 
conv_lstm2d_1_while_identity"
conv_lstm2d_1_while_identity_1"
conv_lstm2d_1_while_identity_2"
conv_lstm2d_1_while_identity_3"
conv_lstm2d_1_while_identity_4"
conv_lstm2d_1_while_identity_53
/conv_lstm2d_1_while_conv_lstm2d_1_strided_sliceq
mconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensorL
1conv_lstm2d_1_while_split_readvariableop_resource:N
3conv_lstm2d_1_while_split_1_readvariableop_resource:@B
3conv_lstm2d_1_while_split_2_readvariableop_resource:	¢(conv_lstm2d_1/while/split/ReadVariableOp¢*conv_lstm2d_1/while/split_1/ReadVariableOp¢*conv_lstm2d_1/while/split_2/ReadVariableOp
Econv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        õ
7conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemoconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensor_0conv_lstm2d_1_while_placeholderNconv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0e
#conv_lstm2d_1/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¥
(conv_lstm2d_1/while/split/ReadVariableOpReadVariableOp3conv_lstm2d_1_while_split_readvariableop_resource_0*'
_output_shapes
:*
dtype0ú
conv_lstm2d_1/while/splitSplit,conv_lstm2d_1/while/split/split_dim:output:00conv_lstm2d_1/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitg
%conv_lstm2d_1/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
*conv_lstm2d_1/while/split_1/ReadVariableOpReadVariableOp5conv_lstm2d_1_while_split_1_readvariableop_resource_0*'
_output_shapes
:@*
dtype0
conv_lstm2d_1/while/split_1Split.conv_lstm2d_1/while/split_1/split_dim:output:02conv_lstm2d_1/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitg
%conv_lstm2d_1/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
*conv_lstm2d_1/while/split_2/ReadVariableOpReadVariableOp5conv_lstm2d_1_while_split_2_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ð
conv_lstm2d_1/while/split_2Split.conv_lstm2d_1/while/split_2/split_dim:output:02conv_lstm2d_1/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitñ
conv_lstm2d_1/while/convolutionConv2D>conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0"conv_lstm2d_1/while/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
±
conv_lstm2d_1/while/BiasAddBiasAdd(conv_lstm2d_1/while/convolution:output:0$conv_lstm2d_1/while/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ó
!conv_lstm2d_1/while/convolution_1Conv2D>conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0"conv_lstm2d_1/while/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
µ
conv_lstm2d_1/while/BiasAdd_1BiasAdd*conv_lstm2d_1/while/convolution_1:output:0$conv_lstm2d_1/while/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ó
!conv_lstm2d_1/while/convolution_2Conv2D>conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0"conv_lstm2d_1/while/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
µ
conv_lstm2d_1/while/BiasAdd_2BiasAdd*conv_lstm2d_1/while/convolution_2:output:0$conv_lstm2d_1/while/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ó
!conv_lstm2d_1/while/convolution_3Conv2D>conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0"conv_lstm2d_1/while/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
µ
conv_lstm2d_1/while/BiasAdd_3BiasAdd*conv_lstm2d_1/while/convolution_3:output:0$conv_lstm2d_1/while/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@×
!conv_lstm2d_1/while/convolution_4Conv2D!conv_lstm2d_1_while_placeholder_2$conv_lstm2d_1/while/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
×
!conv_lstm2d_1/while/convolution_5Conv2D!conv_lstm2d_1_while_placeholder_2$conv_lstm2d_1/while/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
×
!conv_lstm2d_1/while/convolution_6Conv2D!conv_lstm2d_1_while_placeholder_2$conv_lstm2d_1/while/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
×
!conv_lstm2d_1/while/convolution_7Conv2D!conv_lstm2d_1_while_placeholder_2$conv_lstm2d_1/while/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
conv_lstm2d_1/while/addAddV2$conv_lstm2d_1/while/BiasAdd:output:0*conv_lstm2d_1/while/convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
conv_lstm2d_1/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>`
conv_lstm2d_1/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?
conv_lstm2d_1/while/MulMulconv_lstm2d_1/while/add:z:0"conv_lstm2d_1/while/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ 
conv_lstm2d_1/while/Add_1AddV2conv_lstm2d_1/while/Mul:z:0$conv_lstm2d_1/while/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@p
+conv_lstm2d_1/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ä
)conv_lstm2d_1/while/clip_by_value/MinimumMinimumconv_lstm2d_1/while/Add_1:z:04conv_lstm2d_1/while/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
#conv_lstm2d_1/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ä
!conv_lstm2d_1/while/clip_by_valueMaximum-conv_lstm2d_1/while/clip_by_value/Minimum:z:0,conv_lstm2d_1/while/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@±
conv_lstm2d_1/while/add_2AddV2&conv_lstm2d_1/while/BiasAdd_1:output:0*conv_lstm2d_1/while/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
conv_lstm2d_1/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>`
conv_lstm2d_1/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ? 
conv_lstm2d_1/while/Mul_1Mulconv_lstm2d_1/while/add_2:z:0$conv_lstm2d_1/while/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
conv_lstm2d_1/while/Add_3AddV2conv_lstm2d_1/while/Mul_1:z:0$conv_lstm2d_1/while/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
-conv_lstm2d_1/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
+conv_lstm2d_1/while/clip_by_value_1/MinimumMinimumconv_lstm2d_1/while/Add_3:z:06conv_lstm2d_1/while/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@j
%conv_lstm2d_1/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
#conv_lstm2d_1/while/clip_by_value_1Maximum/conv_lstm2d_1/while/clip_by_value_1/Minimum:z:0.conv_lstm2d_1/while/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@§
conv_lstm2d_1/while/mul_2Mul'conv_lstm2d_1/while/clip_by_value_1:z:0!conv_lstm2d_1_while_placeholder_3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@±
conv_lstm2d_1/while/add_4AddV2&conv_lstm2d_1/while/BiasAdd_2:output:0*conv_lstm2d_1/while/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z
conv_lstm2d_1/while/TanhTanhconv_lstm2d_1/while/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ 
conv_lstm2d_1/while/mul_3Mul%conv_lstm2d_1/while/clip_by_value:z:0conv_lstm2d_1/while/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/while/add_5AddV2conv_lstm2d_1/while/mul_2:z:0conv_lstm2d_1/while/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@±
conv_lstm2d_1/while/add_6AddV2&conv_lstm2d_1/while/BiasAdd_3:output:0*conv_lstm2d_1/while/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
conv_lstm2d_1/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>`
conv_lstm2d_1/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ? 
conv_lstm2d_1/while/Mul_4Mulconv_lstm2d_1/while/add_6:z:0$conv_lstm2d_1/while/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
conv_lstm2d_1/while/Add_7AddV2conv_lstm2d_1/while/Mul_4:z:0$conv_lstm2d_1/while/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
-conv_lstm2d_1/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
+conv_lstm2d_1/while/clip_by_value_2/MinimumMinimumconv_lstm2d_1/while/Add_7:z:06conv_lstm2d_1/while/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@j
%conv_lstm2d_1/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    Ê
#conv_lstm2d_1/while/clip_by_value_2Maximum/conv_lstm2d_1/while/clip_by_value_2/Minimum:z:0.conv_lstm2d_1/while/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@|
conv_lstm2d_1/while/Tanh_1Tanhconv_lstm2d_1/while/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¤
conv_lstm2d_1/while/mul_5Mul'conv_lstm2d_1/while/clip_by_value_2:z:0conv_lstm2d_1/while/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ð
8conv_lstm2d_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!conv_lstm2d_1_while_placeholder_1conv_lstm2d_1_while_placeholderconv_lstm2d_1/while/mul_5:z:0*
_output_shapes
: *
element_dtype0:éèÒ]
conv_lstm2d_1/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :
conv_lstm2d_1/while/add_8AddV2conv_lstm2d_1_while_placeholder$conv_lstm2d_1/while/add_8/y:output:0*
T0*
_output_shapes
: ]
conv_lstm2d_1/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :
conv_lstm2d_1/while/add_9AddV24conv_lstm2d_1_while_conv_lstm2d_1_while_loop_counter$conv_lstm2d_1/while/add_9/y:output:0*
T0*
_output_shapes
: 
conv_lstm2d_1/while/IdentityIdentityconv_lstm2d_1/while/add_9:z:0^conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: ¢
conv_lstm2d_1/while/Identity_1Identity:conv_lstm2d_1_while_conv_lstm2d_1_while_maximum_iterations^conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: 
conv_lstm2d_1/while/Identity_2Identityconv_lstm2d_1/while/add_8:z:0^conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: °
conv_lstm2d_1/while/Identity_3IdentityHconv_lstm2d_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: 
conv_lstm2d_1/while/Identity_4Identityconv_lstm2d_1/while/mul_5:z:0^conv_lstm2d_1/while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
conv_lstm2d_1/while/Identity_5Identityconv_lstm2d_1/while/add_5:z:0^conv_lstm2d_1/while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@ß
conv_lstm2d_1/while/NoOpNoOp)^conv_lstm2d_1/while/split/ReadVariableOp+^conv_lstm2d_1/while/split_1/ReadVariableOp+^conv_lstm2d_1/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "d
/conv_lstm2d_1_while_conv_lstm2d_1_strided_slice1conv_lstm2d_1_while_conv_lstm2d_1_strided_slice_0"E
conv_lstm2d_1_while_identity%conv_lstm2d_1/while/Identity:output:0"I
conv_lstm2d_1_while_identity_1'conv_lstm2d_1/while/Identity_1:output:0"I
conv_lstm2d_1_while_identity_2'conv_lstm2d_1/while/Identity_2:output:0"I
conv_lstm2d_1_while_identity_3'conv_lstm2d_1/while/Identity_3:output:0"I
conv_lstm2d_1_while_identity_4'conv_lstm2d_1/while/Identity_4:output:0"I
conv_lstm2d_1_while_identity_5'conv_lstm2d_1/while/Identity_5:output:0"l
3conv_lstm2d_1_while_split_1_readvariableop_resource5conv_lstm2d_1_while_split_1_readvariableop_resource_0"l
3conv_lstm2d_1_while_split_2_readvariableop_resource5conv_lstm2d_1_while_split_2_readvariableop_resource_0"h
1conv_lstm2d_1_while_split_readvariableop_resource3conv_lstm2d_1_while_split_readvariableop_resource_0"à
mconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensoroconv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 2T
(conv_lstm2d_1/while/split/ReadVariableOp(conv_lstm2d_1/while/split/ReadVariableOp2X
*conv_lstm2d_1/while/split_1/ReadVariableOp*conv_lstm2d_1/while/split_1/ReadVariableOp2X
*conv_lstm2d_1/while/split_2/ReadVariableOp*conv_lstm2d_1/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
¸
Ê
-__inference_conv_lstm2d_1_layer_call_fn_16111

inputs"
unknown:$
	unknown_0:@
	unknown_1:	
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_15376x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
å=

K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_14635

inputs

states
states_18
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity

identity_1

identity_2¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
convolutionConv2Dinputssplit:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
u
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_1Conv2Dinputssplit:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_2Conv2Dinputssplit:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_3Conv2Dinputssplit:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_4Conv2Dstatessplit_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_5Conv2Dstatessplit_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_6Conv2Dstatessplit_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_7Conv2Dstatessplit_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
mul_2Mulclip_by_value_1:z:0states_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@a
IdentityIdentity	mul_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@c

Identity_1Identity	mul_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@c

Identity_2Identity	add_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_namestates:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_namestates
Ð
¼
while_cond_15249
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_15249___redundant_placeholder03
/while_while_cond_15249___redundant_placeholder13
/while_while_cond_15249___redundant_placeholder23
/while_while_cond_15249___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
Ä
E
)__inference_dropout_2_layer_call_fn_16996

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_15002i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿb@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_nameinputs
ý	
Ê
,__inference_sequential_1_layer_call_fn_15071
conv_lstm2d_1_input"
unknown:$
	unknown_0:@
	unknown_1:	
	unknown_2:®
	unknown_3:	
	unknown_4:
û
	unknown_5:	û
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallconv_lstm2d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_15054p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
-
_user_specified_nameconv_lstm2d_1_input
Î

'__inference_dense_2_layer_call_fn_17038

inputs
unknown:®
	unknown_0:	
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_15023p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:ÿÿÿÿÿÿÿÿÿ®: : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
*
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
«!

while_body_14686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_14710_0:(
while_14712_0:@
while_14714_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_14710:&
while_14712:@
while_14714:	¢while/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_14710_0while_14712_0while_14714_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_14635Ï
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@l

while/NoOpNoOp^while/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
while_14710while_14710_0"
while_14712while_14712_0"
while_14714while_14714_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
º

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_15140

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¯
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿb@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_nameinputs
Ð
Ì
-__inference_conv_lstm2d_1_layer_call_fn_16078
inputs_0"
unknown:$
	unknown_0:@
	unknown_1:	
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_14529x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
©Z
ð
while_body_16425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:B
'while_split_1_readvariableop_resource_0:@6
'while_split_2_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:@
%while_split_1_readvariableop_resource:@4
%while_split_2_readvariableop_resource:	¢while/split/ReadVariableOp¢while/split_1/ReadVariableOp¢while/split_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:*
dtype0Ð
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:@*
dtype0Ö
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:*
dtype0¦
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÇ
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@­
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?p
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@}
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^

while/TanhTanhwhile/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/mul_3Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@q
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
while/Tanh_1Tanhwhile/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z
while/mul_5Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@§

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
«
Ô
+sequential_1_conv_lstm2d_1_while_body_14201R
Nsequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_loop_counterX
Tsequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_maximum_iterations0
,sequential_1_conv_lstm2d_1_while_placeholder2
.sequential_1_conv_lstm2d_1_while_placeholder_12
.sequential_1_conv_lstm2d_1_while_placeholder_22
.sequential_1_conv_lstm2d_1_while_placeholder_3O
Ksequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_strided_slice_0
sequential_1_conv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensor_0[
@sequential_1_conv_lstm2d_1_while_split_readvariableop_resource_0:]
Bsequential_1_conv_lstm2d_1_while_split_1_readvariableop_resource_0:@Q
Bsequential_1_conv_lstm2d_1_while_split_2_readvariableop_resource_0:	-
)sequential_1_conv_lstm2d_1_while_identity/
+sequential_1_conv_lstm2d_1_while_identity_1/
+sequential_1_conv_lstm2d_1_while_identity_2/
+sequential_1_conv_lstm2d_1_while_identity_3/
+sequential_1_conv_lstm2d_1_while_identity_4/
+sequential_1_conv_lstm2d_1_while_identity_5M
Isequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_strided_slice
sequential_1_conv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensorY
>sequential_1_conv_lstm2d_1_while_split_readvariableop_resource:[
@sequential_1_conv_lstm2d_1_while_split_1_readvariableop_resource:@O
@sequential_1_conv_lstm2d_1_while_split_2_readvariableop_resource:	¢5sequential_1/conv_lstm2d_1/while/split/ReadVariableOp¢7sequential_1/conv_lstm2d_1/while/split_1/ReadVariableOp¢7sequential_1/conv_lstm2d_1/while/split_2/ReadVariableOp«
Rsequential_1/conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ·
Dsequential_1/conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_1_conv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensor_0,sequential_1_conv_lstm2d_1_while_placeholder[sequential_1/conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0r
0sequential_1/conv_lstm2d_1/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¿
5sequential_1/conv_lstm2d_1/while/split/ReadVariableOpReadVariableOp@sequential_1_conv_lstm2d_1_while_split_readvariableop_resource_0*'
_output_shapes
:*
dtype0¡
&sequential_1/conv_lstm2d_1/while/splitSplit9sequential_1/conv_lstm2d_1/while/split/split_dim:output:0=sequential_1/conv_lstm2d_1/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitt
2sequential_1/conv_lstm2d_1/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ã
7sequential_1/conv_lstm2d_1/while/split_1/ReadVariableOpReadVariableOpBsequential_1_conv_lstm2d_1_while_split_1_readvariableop_resource_0*'
_output_shapes
:@*
dtype0§
(sequential_1/conv_lstm2d_1/while/split_1Split;sequential_1/conv_lstm2d_1/while/split_1/split_dim:output:0?sequential_1/conv_lstm2d_1/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitt
2sequential_1/conv_lstm2d_1/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ·
7sequential_1/conv_lstm2d_1/while/split_2/ReadVariableOpReadVariableOpBsequential_1_conv_lstm2d_1_while_split_2_readvariableop_resource_0*
_output_shapes	
:*
dtype0÷
(sequential_1/conv_lstm2d_1/while/split_2Split;sequential_1/conv_lstm2d_1/while/split_2/split_dim:output:0?sequential_1/conv_lstm2d_1/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
,sequential_1/conv_lstm2d_1/while/convolutionConv2DKsequential_1/conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0/sequential_1/conv_lstm2d_1/while/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
Ø
(sequential_1/conv_lstm2d_1/while/BiasAddBiasAdd5sequential_1/conv_lstm2d_1/while/convolution:output:01sequential_1/conv_lstm2d_1/while/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
.sequential_1/conv_lstm2d_1/while/convolution_1Conv2DKsequential_1/conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0/sequential_1/conv_lstm2d_1/while/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
Ü
*sequential_1/conv_lstm2d_1/while/BiasAdd_1BiasAdd7sequential_1/conv_lstm2d_1/while/convolution_1:output:01sequential_1/conv_lstm2d_1/while/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
.sequential_1/conv_lstm2d_1/while/convolution_2Conv2DKsequential_1/conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0/sequential_1/conv_lstm2d_1/while/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
Ü
*sequential_1/conv_lstm2d_1/while/BiasAdd_2BiasAdd7sequential_1/conv_lstm2d_1/while/convolution_2:output:01sequential_1/conv_lstm2d_1/while/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
.sequential_1/conv_lstm2d_1/while/convolution_3Conv2DKsequential_1/conv_lstm2d_1/while/TensorArrayV2Read/TensorListGetItem:item:0/sequential_1/conv_lstm2d_1/while/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
Ü
*sequential_1/conv_lstm2d_1/while/BiasAdd_3BiasAdd7sequential_1/conv_lstm2d_1/while/convolution_3:output:01sequential_1/conv_lstm2d_1/while/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@þ
.sequential_1/conv_lstm2d_1/while/convolution_4Conv2D.sequential_1_conv_lstm2d_1_while_placeholder_21sequential_1/conv_lstm2d_1/while/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
þ
.sequential_1/conv_lstm2d_1/while/convolution_5Conv2D.sequential_1_conv_lstm2d_1_while_placeholder_21sequential_1/conv_lstm2d_1/while/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
þ
.sequential_1/conv_lstm2d_1/while/convolution_6Conv2D.sequential_1_conv_lstm2d_1_while_placeholder_21sequential_1/conv_lstm2d_1/while/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
þ
.sequential_1/conv_lstm2d_1/while/convolution_7Conv2D.sequential_1_conv_lstm2d_1_while_placeholder_21sequential_1/conv_lstm2d_1/while/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
Ô
$sequential_1/conv_lstm2d_1/while/addAddV21sequential_1/conv_lstm2d_1/while/BiasAdd:output:07sequential_1/conv_lstm2d_1/while/convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@k
&sequential_1/conv_lstm2d_1/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>m
(sequential_1/conv_lstm2d_1/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Á
$sequential_1/conv_lstm2d_1/while/MulMul(sequential_1/conv_lstm2d_1/while/add:z:0/sequential_1/conv_lstm2d_1/while/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ç
&sequential_1/conv_lstm2d_1/while/Add_1AddV2(sequential_1/conv_lstm2d_1/while/Mul:z:01sequential_1/conv_lstm2d_1/while/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@}
8sequential_1/conv_lstm2d_1/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ë
6sequential_1/conv_lstm2d_1/while/clip_by_value/MinimumMinimum*sequential_1/conv_lstm2d_1/while/Add_1:z:0Asequential_1/conv_lstm2d_1/while/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
0sequential_1/conv_lstm2d_1/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ë
.sequential_1/conv_lstm2d_1/while/clip_by_valueMaximum:sequential_1/conv_lstm2d_1/while/clip_by_value/Minimum:z:09sequential_1/conv_lstm2d_1/while/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ø
&sequential_1/conv_lstm2d_1/while/add_2AddV23sequential_1/conv_lstm2d_1/while/BiasAdd_1:output:07sequential_1/conv_lstm2d_1/while/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@m
(sequential_1/conv_lstm2d_1/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>m
(sequential_1/conv_lstm2d_1/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ç
&sequential_1/conv_lstm2d_1/while/Mul_1Mul*sequential_1/conv_lstm2d_1/while/add_2:z:01sequential_1/conv_lstm2d_1/while/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
&sequential_1/conv_lstm2d_1/while/Add_3AddV2*sequential_1/conv_lstm2d_1/while/Mul_1:z:01sequential_1/conv_lstm2d_1/while/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
:sequential_1/conv_lstm2d_1/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ï
8sequential_1/conv_lstm2d_1/while/clip_by_value_1/MinimumMinimum*sequential_1/conv_lstm2d_1/while/Add_3:z:0Csequential_1/conv_lstm2d_1/while/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@w
2sequential_1/conv_lstm2d_1/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ñ
0sequential_1/conv_lstm2d_1/while/clip_by_value_1Maximum<sequential_1/conv_lstm2d_1/while/clip_by_value_1/Minimum:z:0;sequential_1/conv_lstm2d_1/while/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Î
&sequential_1/conv_lstm2d_1/while/mul_2Mul4sequential_1/conv_lstm2d_1/while/clip_by_value_1:z:0.sequential_1_conv_lstm2d_1_while_placeholder_3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ø
&sequential_1/conv_lstm2d_1/while/add_4AddV23sequential_1/conv_lstm2d_1/while/BiasAdd_2:output:07sequential_1/conv_lstm2d_1/while/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
%sequential_1/conv_lstm2d_1/while/TanhTanh*sequential_1/conv_lstm2d_1/while/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ç
&sequential_1/conv_lstm2d_1/while/mul_3Mul2sequential_1/conv_lstm2d_1/while/clip_by_value:z:0)sequential_1/conv_lstm2d_1/while/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Â
&sequential_1/conv_lstm2d_1/while/add_5AddV2*sequential_1/conv_lstm2d_1/while/mul_2:z:0*sequential_1/conv_lstm2d_1/while/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ø
&sequential_1/conv_lstm2d_1/while/add_6AddV23sequential_1/conv_lstm2d_1/while/BiasAdd_3:output:07sequential_1/conv_lstm2d_1/while/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@m
(sequential_1/conv_lstm2d_1/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>m
(sequential_1/conv_lstm2d_1/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?Ç
&sequential_1/conv_lstm2d_1/while/Mul_4Mul*sequential_1/conv_lstm2d_1/while/add_6:z:01sequential_1/conv_lstm2d_1/while/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
&sequential_1/conv_lstm2d_1/while/Add_7AddV2*sequential_1/conv_lstm2d_1/while/Mul_4:z:01sequential_1/conv_lstm2d_1/while/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
:sequential_1/conv_lstm2d_1/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ï
8sequential_1/conv_lstm2d_1/while/clip_by_value_2/MinimumMinimum*sequential_1/conv_lstm2d_1/while/Add_7:z:0Csequential_1/conv_lstm2d_1/while/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@w
2sequential_1/conv_lstm2d_1/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ñ
0sequential_1/conv_lstm2d_1/while/clip_by_value_2Maximum<sequential_1/conv_lstm2d_1/while/clip_by_value_2/Minimum:z:0;sequential_1/conv_lstm2d_1/while/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
'sequential_1/conv_lstm2d_1/while/Tanh_1Tanh*sequential_1/conv_lstm2d_1/while/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Ë
&sequential_1/conv_lstm2d_1/while/mul_5Mul4sequential_1/conv_lstm2d_1/while/clip_by_value_2:z:0+sequential_1/conv_lstm2d_1/while/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¤
Esequential_1/conv_lstm2d_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem.sequential_1_conv_lstm2d_1_while_placeholder_1,sequential_1_conv_lstm2d_1_while_placeholder*sequential_1/conv_lstm2d_1/while/mul_5:z:0*
_output_shapes
: *
element_dtype0:éèÒj
(sequential_1/conv_lstm2d_1/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :±
&sequential_1/conv_lstm2d_1/while/add_8AddV2,sequential_1_conv_lstm2d_1_while_placeholder1sequential_1/conv_lstm2d_1/while/add_8/y:output:0*
T0*
_output_shapes
: j
(sequential_1/conv_lstm2d_1/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :Ó
&sequential_1/conv_lstm2d_1/while/add_9AddV2Nsequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_loop_counter1sequential_1/conv_lstm2d_1/while/add_9/y:output:0*
T0*
_output_shapes
: ª
)sequential_1/conv_lstm2d_1/while/IdentityIdentity*sequential_1/conv_lstm2d_1/while/add_9:z:0&^sequential_1/conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: Ö
+sequential_1/conv_lstm2d_1/while/Identity_1IdentityTsequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_maximum_iterations&^sequential_1/conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: ¬
+sequential_1/conv_lstm2d_1/while/Identity_2Identity*sequential_1/conv_lstm2d_1/while/add_8:z:0&^sequential_1/conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: ×
+sequential_1/conv_lstm2d_1/while/Identity_3IdentityUsequential_1/conv_lstm2d_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0&^sequential_1/conv_lstm2d_1/while/NoOp*
T0*
_output_shapes
: Æ
+sequential_1/conv_lstm2d_1/while/Identity_4Identity*sequential_1/conv_lstm2d_1/while/mul_5:z:0&^sequential_1/conv_lstm2d_1/while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Æ
+sequential_1/conv_lstm2d_1/while/Identity_5Identity*sequential_1/conv_lstm2d_1/while/add_5:z:0&^sequential_1/conv_lstm2d_1/while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
%sequential_1/conv_lstm2d_1/while/NoOpNoOp6^sequential_1/conv_lstm2d_1/while/split/ReadVariableOp8^sequential_1/conv_lstm2d_1/while/split_1/ReadVariableOp8^sequential_1/conv_lstm2d_1/while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "_
)sequential_1_conv_lstm2d_1_while_identity2sequential_1/conv_lstm2d_1/while/Identity:output:0"c
+sequential_1_conv_lstm2d_1_while_identity_14sequential_1/conv_lstm2d_1/while/Identity_1:output:0"c
+sequential_1_conv_lstm2d_1_while_identity_24sequential_1/conv_lstm2d_1/while/Identity_2:output:0"c
+sequential_1_conv_lstm2d_1_while_identity_34sequential_1/conv_lstm2d_1/while/Identity_3:output:0"c
+sequential_1_conv_lstm2d_1_while_identity_44sequential_1/conv_lstm2d_1/while/Identity_4:output:0"c
+sequential_1_conv_lstm2d_1_while_identity_54sequential_1/conv_lstm2d_1/while/Identity_5:output:0"
Isequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_strided_sliceKsequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_strided_slice_0"
@sequential_1_conv_lstm2d_1_while_split_1_readvariableop_resourceBsequential_1_conv_lstm2d_1_while_split_1_readvariableop_resource_0"
@sequential_1_conv_lstm2d_1_while_split_2_readvariableop_resourceBsequential_1_conv_lstm2d_1_while_split_2_readvariableop_resource_0"
>sequential_1_conv_lstm2d_1_while_split_readvariableop_resource@sequential_1_conv_lstm2d_1_while_split_readvariableop_resource_0"
sequential_1_conv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensorsequential_1_conv_lstm2d_1_while_tensorarrayv2read_tensorlistgetitem_sequential_1_conv_lstm2d_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 2n
5sequential_1/conv_lstm2d_1/while/split/ReadVariableOp5sequential_1/conv_lstm2d_1/while/split/ReadVariableOp2r
7sequential_1/conv_lstm2d_1/while/split_1/ReadVariableOp7sequential_1/conv_lstm2d_1/while/split_1/ReadVariableOp2r
7sequential_1/conv_lstm2d_1/while/split_2/ReadVariableOp7sequential_1/conv_lstm2d_1/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
¸
E
)__inference_flatten_1_layer_call_fn_17023

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_15010c
IdentityIdentityPartitionedCall:output:0*
T0**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿb@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_nameinputs
©Z
ð
while_body_14863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:B
'while_split_1_readvariableop_resource_0:@6
'while_split_2_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:@
%while_split_1_readvariableop_resource:@4
%while_split_2_readvariableop_resource:	¢while/split/ReadVariableOp¢while/split_1/ReadVariableOp¢while/split_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:*
dtype0Ð
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:@*
dtype0Ö
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:*
dtype0¦
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÇ
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@­
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?p
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@}
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^

while/TanhTanhwhile/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/mul_3Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@q
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
while/Tanh_1Tanhwhile/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z
while/mul_5Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@§

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
Ö	
½
,__inference_sequential_1_layer_call_fn_15577

inputs"
unknown:$
	unknown_0:@
	unknown_1:	
	unknown_2:®
	unknown_3:	
	unknown_4:
û
	unknown_5:	û
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_15430p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
©Z
ð
while_body_16865
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:B
'while_split_1_readvariableop_resource_0:@6
'while_split_2_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:@
%while_split_1_readvariableop_resource:@4
%while_split_2_readvariableop_resource:	¢while/split/ReadVariableOp¢while/split_1/ReadVariableOp¢while/split_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:*
dtype0Ð
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:@*
dtype0Ö
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:*
dtype0¦
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÇ
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@­
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?p
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@}
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^

while/TanhTanhwhile/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/mul_3Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@q
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
while/Tanh_1Tanhwhile/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z
while/mul_5Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@§

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
È

'__inference_dense_3_layer_call_fn_17085

inputs
unknown:
û
	unknown_0:	û
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15047p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Üb
Þ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_14989

inputs8
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOp¢while^

zeros_like	ZerosLikeinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    
convolutionConv2DSum:output:0zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¥
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
w
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_14863*
condR
while_cond_14862*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@p
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
©Z
ð
while_body_16645
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:B
'while_split_1_readvariableop_resource_0:@6
'while_split_2_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:@
%while_split_1_readvariableop_resource:@4
%while_split_2_readvariableop_resource:	¢while/split/ReadVariableOp¢while/split_1/ReadVariableOp¢while/split_2/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        ¯
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
element_dtype0W
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:*
dtype0Ð
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
:@*
dtype0Ö
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitY
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:*
dtype0¦
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÇ
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@É
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides

while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@­
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
­
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@P
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?p
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/Add_1AddV2while/Mul:z:0while/Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@Z
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_3AddV2while/Mul_1:z:0while/Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@}
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^

while/TanhTanhwhile/add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
while/mul_3Mulwhile/clip_by_value:z:0while/Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@q
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>R
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?v
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
while/Add_7AddV2while/Mul_4:z:0while/Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *     
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
while/Tanh_1Tanhwhile/add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z
while/mul_5Mulwhile/clip_by_value_2:z:0while/Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: O
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_9:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: [
while/Identity_2Identitywhile/add_8:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: u
while/Identity_4Identitywhile/mul_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
while/Identity_5Identitywhile/add_5:z:0^while/NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@§

while/NoOpNoOp^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
: 
Ù
Ô
conv_lstm2d_1_while_cond_159088
4conv_lstm2d_1_while_conv_lstm2d_1_while_loop_counter>
:conv_lstm2d_1_while_conv_lstm2d_1_while_maximum_iterations#
conv_lstm2d_1_while_placeholder%
!conv_lstm2d_1_while_placeholder_1%
!conv_lstm2d_1_while_placeholder_2%
!conv_lstm2d_1_while_placeholder_38
4conv_lstm2d_1_while_less_conv_lstm2d_1_strided_sliceO
Kconv_lstm2d_1_while_conv_lstm2d_1_while_cond_15908___redundant_placeholder0O
Kconv_lstm2d_1_while_conv_lstm2d_1_while_cond_15908___redundant_placeholder1O
Kconv_lstm2d_1_while_conv_lstm2d_1_while_cond_15908___redundant_placeholder2O
Kconv_lstm2d_1_while_conv_lstm2d_1_while_cond_15908___redundant_placeholder3 
conv_lstm2d_1_while_identity

conv_lstm2d_1/while/LessLessconv_lstm2d_1_while_placeholder4conv_lstm2d_1_while_less_conv_lstm2d_1_strided_slice*
T0*
_output_shapes
: g
conv_lstm2d_1/while/IdentityIdentityconv_lstm2d_1/while/Less:z:0*
T0
*
_output_shapes
: "E
conv_lstm2d_1_while_identity%conv_lstm2d_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
¸
Ê
-__inference_conv_lstm2d_1_layer_call_fn_16100

inputs"
unknown:$
	unknown_0:@
	unknown_1:	
identity¢StatefulPartitionedCallö
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_14989x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ú	
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_15101

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
¼
while_cond_16204
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_16204___redundant_placeholder03
/while_while_cond_16204___redundant_placeholder13
/while_while_cond_16204___redundant_placeholder23
/while_while_cond_16204___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
Ð
¼
while_cond_16864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_16864___redundant_placeholder03
/while_while_cond_16864___redundant_placeholder13
/while_while_cond_16864___redundant_placeholder23
/while_while_cond_16864___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
ð

0__inference_conv_lstm_cell_1_layer_call_fn_17130

inputs
states_0
states_1"
unknown:$
	unknown_0:@
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÉ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_14635x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@z

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
"
_user_specified_name
states/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
"
_user_specified_name
states/1
­

ø
B__inference_dense_2_layer_call_and_return_conditional_losses_15023

inputs4
matmul_readvariableop_resource:®.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpx
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*"
_output_shapes
:®*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:ÿÿÿÿÿÿÿÿÿ®: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:R N
*
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
Ì
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_17029

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ & _
ReshapeReshapeinputsConst:output:0*
T0**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®[
IdentityIdentityReshape:output:0*
T0**
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿb@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_nameinputs
å=

K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_14447

inputs

states
states_18
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity

identity_1

identity_2¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
convolutionConv2Dinputssplit:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
u
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_1Conv2Dinputssplit:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_2Conv2Dinputssplit:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_3Conv2Dinputssplit:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_4Conv2Dstatessplit_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_5Conv2Dstatessplit_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_6Conv2Dstatessplit_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_7Conv2Dstatessplit_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
mul_2Mulclip_by_value_1:z:0states_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@a
IdentityIdentity	mul_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@c

Identity_1Identity	mul_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@c

Identity_2Identity	add_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_namestates:XT
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_namestates
c
à
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16331
inputs_08
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOp¢whilei

zeros_like	ZerosLikeinputs_0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    
convolutionConv2DSum:output:0zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¥
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
w
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16205*
condR
while_cond_16204*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   Ô
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ¨
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb@p
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
Ð
Ì
-__inference_conv_lstm2d_1_layer_call_fn_16089
inputs_0"
unknown:$
	unknown_0:@
	unknown_1:	
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_14754x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
"
_user_specified_name
inputs/0
Üb
Þ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_15376

inputs8
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOp¢while^

zeros_like	ZerosLikeinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    
convolutionConv2DSum:output:0zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¥
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
w
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_15250*
condR
while_cond_15249*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@p
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

b
)__inference_dropout_2_layer_call_fn_17001

inputs
identity¢StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_15140x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿb@22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_nameinputs
ú	
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_17076

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
û
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_15002

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿb@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_nameinputs
Æ
Ø
+sequential_1_conv_lstm2d_1_while_cond_14200R
Nsequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_loop_counterX
Tsequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_maximum_iterations0
,sequential_1_conv_lstm2d_1_while_placeholder2
.sequential_1_conv_lstm2d_1_while_placeholder_12
.sequential_1_conv_lstm2d_1_while_placeholder_22
.sequential_1_conv_lstm2d_1_while_placeholder_3R
Nsequential_1_conv_lstm2d_1_while_less_sequential_1_conv_lstm2d_1_strided_slicei
esequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_cond_14200___redundant_placeholder0i
esequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_cond_14200___redundant_placeholder1i
esequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_cond_14200___redundant_placeholder2i
esequential_1_conv_lstm2d_1_while_sequential_1_conv_lstm2d_1_while_cond_14200___redundant_placeholder3-
)sequential_1_conv_lstm2d_1_while_identity
Ì
%sequential_1/conv_lstm2d_1/while/LessLess,sequential_1_conv_lstm2d_1_while_placeholderNsequential_1_conv_lstm2d_1_while_less_sequential_1_conv_lstm2d_1_strided_slice*
T0*
_output_shapes
: 
)sequential_1/conv_lstm2d_1/while/IdentityIdentity)sequential_1/conv_lstm2d_1/while/Less:z:0*
T0
*
_output_shapes
: "_
)sequential_1_conv_lstm2d_1_while_identity2sequential_1/conv_lstm2d_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
Ð
¼
while_cond_14460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_14460___redundant_placeholder03
/while_while_cond_14460___redundant_placeholder13
/while_while_cond_14460___redundant_placeholder23
/while_while_cond_14460___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:62
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@:

_output_shapes
: :

_output_shapes
:
Å1
í
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_14529

inputs"
unknown:$
	unknown_0:@
	unknown_1:	
identity¢StatefulPartitionedCall¢whileg

zeros_like	ZerosLikeinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    
convolutionConv2DSum:output:0zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿdB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskó
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *h
_output_shapesV
T:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *T
fORM
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_14447v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Á
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_14461*
condR
while_cond_14460*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   Ô
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                ¨
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb@p
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
NoOpNoOp^StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Üb
Þ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16771

inputs8
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOp¢while^

zeros_like	ZerosLikeinputs*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdW
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :u
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿdj
zerosConst*&
_output_shapes
:@*
dtype0*%
valueB@*    
convolutionConv2DSum:output:0zeros:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
k
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿdB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿd        à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
shrink_axis_maskQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¥
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
w
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¥
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@¢
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
¢
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@v
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*^
_output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_16645*
condR
while_cond_16644*]
output_shapesL
J: : : : :ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿb     @   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
shrink_axis_maskm
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿb@p
IdentityIdentitystrided_slice_2:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ä
ç
G__inference_sequential_1_layer_call_and_return_conditional_losses_15490
conv_lstm2d_1_input.
conv_lstm2d_1_15469:.
conv_lstm2d_1_15471:@"
conv_lstm2d_1_15473:	#
dense_2_15478:®
dense_2_15480:	!
dense_3_15484:
û
dense_3_15486:	û
identity¢%conv_lstm2d_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall±
%conv_lstm2d_1/StatefulPartitionedCallStatefulPartitionedCallconv_lstm2d_1_inputconv_lstm2d_1_15469conv_lstm2d_1_15471conv_lstm2d_1_15473*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_14989í
dropout_2/PartitionedCallPartitionedCall.conv_lstm2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_15002Û
flatten_1/PartitionedCallPartitionedCall"dropout_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_15010
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_15478dense_2_15480*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_15023ß
dropout_3/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_15034
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_3_15484dense_3_15486*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15047x
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû²
NoOpNoOp&^conv_lstm2d_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 2N
%conv_lstm2d_1/StatefulPartitionedCall%conv_lstm2d_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:i e
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
-
_user_specified_nameconv_lstm2d_1_input
Ø
¯
G__inference_sequential_1_layer_call_and_return_conditional_losses_15514
conv_lstm2d_1_input.
conv_lstm2d_1_15493:.
conv_lstm2d_1_15495:@"
conv_lstm2d_1_15497:	#
dense_2_15502:®
dense_2_15504:	!
dense_3_15508:
û
dense_3_15510:	û
identity¢%conv_lstm2d_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢!dropout_3/StatefulPartitionedCall±
%conv_lstm2d_1/StatefulPartitionedCallStatefulPartitionedCallconv_lstm2d_1_inputconv_lstm2d_1_15493conv_lstm2d_1_15495conv_lstm2d_1_15497*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_15376ý
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall.conv_lstm2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_15140ã
flatten_1/PartitionedCallPartitionedCall*dropout_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 **
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_15010
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_15502dense_2_15504*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_15023
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_15101
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_3_15508dense_3_15510*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿû*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_15047x
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿûú
NoOpNoOp&^conv_lstm2d_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿd: : : : : : : 2N
%conv_lstm2d_1/StatefulPartitionedCall%conv_lstm2d_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:i e
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿd
-
_user_specified_nameconv_lstm2d_1_input
­

ø
B__inference_dense_2_layer_call_and_return_conditional_losses_17049

inputs4
matmul_readvariableop_resource:®.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpx
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*"
_output_shapes
:®*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:ÿÿÿÿÿÿÿÿÿ®: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:R N
*
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
 
_user_specified_nameinputs
ó=

K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_17205

inputs
states_0
states_18
split_readvariableop_resource::
split_1_readvariableop_resource:@.
split_2_readvariableop_resource:	
identity

identity_1

identity_2¢split/ReadVariableOp¢split_1/ReadVariableOp¢split_2/ReadVariableOpQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :{
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:*
dtype0¾
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@:@:@:@*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
:@*
dtype0Ä
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:@@:@@:@@:@@*
	num_splitS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:*
dtype0
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
convolutionConv2Dinputssplit:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
u
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_1Conv2Dinputssplit:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_2Conv2Dinputssplit:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_3Conv2Dinputssplit:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingVALID*
strides
y
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
convolution_4Conv2Dstates_0split_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_5Conv2Dstates_0split_1:output:1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_6Conv2Dstates_0split_1:output:2*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides

convolution_7Conv2Dstates_0split_1:output:3*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
paddingSAME*
strides
q
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?^
MulMuladd:z:0Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
Add_1AddV2Mul:z:0Const_1:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_3AddV2	Mul_1:z:0Const_3:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
mul_2Mulclip_by_value_1:z:0states_1*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@R
TanhTanh	add_4:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@d
mul_3Mulclip_by_value:z:0Tanh:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@_
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@u
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@L
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?d
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@f
Add_7AddV2	Mul_4:z:0Const_5:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@^
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@V
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@T
Tanh_1Tanh	add_5:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@h
mul_5Mulclip_by_value_2:z:0
Tanh_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@a
IdentityIdentity	mul_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@c

Identity_1Identity	mul_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@c

Identity_2Identity	add_5:z:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
NoOpNoOp^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*m
_input_shapes\
Z:ÿÿÿÿÿÿÿÿÿd:ÿÿÿÿÿÿÿÿÿb@:ÿÿÿÿÿÿÿÿÿb@: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
"
_user_specified_name
states/0:ZV
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
"
_user_specified_name
states/1
º

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_17018

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¯
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿb@:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿb@
 
_user_specified_nameinputs
¤
E
)__inference_dropout_3_layer_call_fn_17054

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_15034a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ð
serving_default¼
`
conv_lstm2d_1_inputI
%serving_default_conv_lstm2d_1_input:0ÿÿÿÿÿÿÿÿÿd<
dense_31
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿûtensorflow/serving/predict:Ñ

layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api

signatures
j__call__
*k&call_and_return_all_conditional_losses
l_default_save_signature"
_tf_keras_sequential
Ã
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
 	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
!	variables
"trainable_variables
#regularization_losses
$	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
»

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
w__call__
*x&call_and_return_all_conditional_losses"
_tf_keras_layer
I
+iter
	,decay
-learning_rate
.momentum"
	optimizer
Q
/0
01
12
3
4
%5
&6"
trackable_list_wrapper
Q
/0
01
12
3
4
%5
&6"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
	trainable_variables

regularization_losses
j__call__
l_default_save_signature
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
,
yserving_default"
signature_map
Ñ

/kernel
0recurrent_kernel
1bias
7	variables
8trainable_variables
9regularization_losses
:	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

;states
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
$:"®2dense_2/kernel
:2dense_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
regularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
!	variables
"trainable_variables
#regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
": 
û2dense_3/kernel
:û2dense_3/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
'	variables
(trainable_variables
)regularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
/:-2conv_lstm2d_1/kernel
9:7@2conv_lstm2d_1/recurrent_kernel
!:2conv_lstm2d_1/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
/0
01
12"
trackable_list_wrapper
5
/0
01
12"
trackable_list_wrapper
 "
trackable_list_wrapper
­
\non_trainable_variables

]layers
^metrics
_layer_regularization_losses
`layer_metrics
7	variables
8trainable_variables
9regularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
N
	atotal
	bcount
c	variables
d	keras_api"
_tf_keras_metric
^
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
a0
b1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
e0
f1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
þ2û
,__inference_sequential_1_layer_call_fn_15071
,__inference_sequential_1_layer_call_fn_15558
,__inference_sequential_1_layer_call_fn_15577
,__inference_sequential_1_layer_call_fn_15466À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ê2ç
G__inference_sequential_1_layer_call_and_return_conditional_losses_15815
G__inference_sequential_1_layer_call_and_return_conditional_losses_16067
G__inference_sequential_1_layer_call_and_return_conditional_losses_15490
G__inference_sequential_1_layer_call_and_return_conditional_losses_15514À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
×BÔ
 __inference__wrapped_model_14345conv_lstm2d_1_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
-__inference_conv_lstm2d_1_layer_call_fn_16078
-__inference_conv_lstm2d_1_layer_call_fn_16089
-__inference_conv_lstm2d_1_layer_call_fn_16100
-__inference_conv_lstm2d_1_layer_call_fn_16111Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16331
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16551
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16771
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16991Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
)__inference_dropout_2_layer_call_fn_16996
)__inference_dropout_2_layer_call_fn_17001´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout_2_layer_call_and_return_conditional_losses_17006
D__inference_dropout_2_layer_call_and_return_conditional_losses_17018´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ó2Ð
)__inference_flatten_1_layer_call_fn_17023¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_1_layer_call_and_return_conditional_losses_17029¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ñ2Î
'__inference_dense_2_layer_call_fn_17038¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_2_layer_call_and_return_conditional_losses_17049¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
)__inference_dropout_3_layer_call_fn_17054
)__inference_dropout_3_layer_call_fn_17059´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout_3_layer_call_and_return_conditional_losses_17064
D__inference_dropout_3_layer_call_and_return_conditional_losses_17076´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ñ2Î
'__inference_dense_3_layer_call_fn_17085¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_3_layer_call_and_return_conditional_losses_17096¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÖBÓ
#__inference_signature_wrapper_15539conv_lstm2d_1_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥
0__inference_conv_lstm_cell_1_layer_call_fn_17113
0__inference_conv_lstm_cell_1_layer_call_fn_17130¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_17205
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_17280¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ­
 __inference__wrapped_model_14345/01%&I¢F
?¢<
:7
conv_lstm2d_1_inputÿÿÿÿÿÿÿÿÿd
ª "2ª/
-
dense_3"
dense_3ÿÿÿÿÿÿÿÿÿûÜ
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16331/01X¢U
N¢K
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿb@
 Ü
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16551/01X¢U
N¢K
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿb@
 Ë
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16771/01H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿb@
 Ë
H__inference_conv_lstm2d_1_layer_call_and_return_conditional_losses_16991/01H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿb@
 ´
-__inference_conv_lstm2d_1_layer_call_fn_16078/01X¢U
N¢K
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "!ÿÿÿÿÿÿÿÿÿb@´
-__inference_conv_lstm2d_1_layer_call_fn_16089/01X¢U
N¢K
=:
85
inputs/0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿd

 
p

 
ª "!ÿÿÿÿÿÿÿÿÿb@£
-__inference_conv_lstm2d_1_layer_call_fn_16100r/01H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿd

 
p 

 
ª "!ÿÿÿÿÿÿÿÿÿb@£
-__inference_conv_lstm2d_1_layer_call_fn_16111r/01H¢E
>¢;
-*
inputsÿÿÿÿÿÿÿÿÿd

 
p

 
ª "!ÿÿÿÿÿÿÿÿÿb@
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_17205º/01¢
¢
)&
inputsÿÿÿÿÿÿÿÿÿd
]¢Z
+(
states/0ÿÿÿÿÿÿÿÿÿb@
+(
states/1ÿÿÿÿÿÿÿÿÿb@
p 
ª "¢
¢
&#
0/0ÿÿÿÿÿÿÿÿÿb@
WT
(%
0/1/0ÿÿÿÿÿÿÿÿÿb@
(%
0/1/1ÿÿÿÿÿÿÿÿÿb@
 
K__inference_conv_lstm_cell_1_layer_call_and_return_conditional_losses_17280º/01¢
¢
)&
inputsÿÿÿÿÿÿÿÿÿd
]¢Z
+(
states/0ÿÿÿÿÿÿÿÿÿb@
+(
states/1ÿÿÿÿÿÿÿÿÿb@
p
ª "¢
¢
&#
0/0ÿÿÿÿÿÿÿÿÿb@
WT
(%
0/1/0ÿÿÿÿÿÿÿÿÿb@
(%
0/1/1ÿÿÿÿÿÿÿÿÿb@
 Û
0__inference_conv_lstm_cell_1_layer_call_fn_17113¦/01¢
¢
)&
inputsÿÿÿÿÿÿÿÿÿd
]¢Z
+(
states/0ÿÿÿÿÿÿÿÿÿb@
+(
states/1ÿÿÿÿÿÿÿÿÿb@
p 
ª "~¢{
$!
0ÿÿÿÿÿÿÿÿÿb@
SP
&#
1/0ÿÿÿÿÿÿÿÿÿb@
&#
1/1ÿÿÿÿÿÿÿÿÿb@Û
0__inference_conv_lstm_cell_1_layer_call_fn_17130¦/01¢
¢
)&
inputsÿÿÿÿÿÿÿÿÿd
]¢Z
+(
states/0ÿÿÿÿÿÿÿÿÿb@
+(
states/1ÿÿÿÿÿÿÿÿÿb@
p
ª "~¢{
$!
0ÿÿÿÿÿÿÿÿÿb@
SP
&#
1/0ÿÿÿÿÿÿÿÿÿb@
&#
1/1ÿÿÿÿÿÿÿÿÿb@¦
B__inference_dense_2_layer_call_and_return_conditional_losses_17049`2¢/
(¢%
# 
inputsÿÿÿÿÿÿÿÿÿ®
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
'__inference_dense_2_layer_call_fn_17038S2¢/
(¢%
# 
inputsÿÿÿÿÿÿÿÿÿ®
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_dense_3_layer_call_and_return_conditional_losses_17096^%&0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿû
 |
'__inference_dense_3_layer_call_fn_17085Q%&0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿû¶
D__inference_dropout_2_layer_call_and_return_conditional_losses_17006n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿb@
p 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿb@
 ¶
D__inference_dropout_2_layer_call_and_return_conditional_losses_17018n<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿb@
p
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿb@
 
)__inference_dropout_2_layer_call_fn_16996a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿb@
p 
ª "!ÿÿÿÿÿÿÿÿÿb@
)__inference_dropout_2_layer_call_fn_17001a<¢9
2¢/
)&
inputsÿÿÿÿÿÿÿÿÿb@
p
ª "!ÿÿÿÿÿÿÿÿÿb@¦
D__inference_dropout_3_layer_call_and_return_conditional_losses_17064^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¦
D__inference_dropout_3_layer_call_and_return_conditional_losses_17076^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ~
)__inference_dropout_3_layer_call_fn_17054Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ~
)__inference_dropout_3_layer_call_fn_17059Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¬
D__inference_flatten_1_layer_call_and_return_conditional_losses_17029d8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿb@
ª "(¢%

0ÿÿÿÿÿÿÿÿÿ®
 
)__inference_flatten_1_layer_call_fn_17023W8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿb@
ª "ÿÿÿÿÿÿÿÿÿ®Ð
G__inference_sequential_1_layer_call_and_return_conditional_losses_15490/01%&Q¢N
G¢D
:7
conv_lstm2d_1_inputÿÿÿÿÿÿÿÿÿd
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿû
 Ð
G__inference_sequential_1_layer_call_and_return_conditional_losses_15514/01%&Q¢N
G¢D
:7
conv_lstm2d_1_inputÿÿÿÿÿÿÿÿÿd
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿû
 Â
G__inference_sequential_1_layer_call_and_return_conditional_losses_15815w/01%&D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿd
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿû
 Â
G__inference_sequential_1_layer_call_and_return_conditional_losses_16067w/01%&D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿd
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿû
 §
,__inference_sequential_1_layer_call_fn_15071w/01%&Q¢N
G¢D
:7
conv_lstm2d_1_inputÿÿÿÿÿÿÿÿÿd
p 

 
ª "ÿÿÿÿÿÿÿÿÿû§
,__inference_sequential_1_layer_call_fn_15466w/01%&Q¢N
G¢D
:7
conv_lstm2d_1_inputÿÿÿÿÿÿÿÿÿd
p

 
ª "ÿÿÿÿÿÿÿÿÿû
,__inference_sequential_1_layer_call_fn_15558j/01%&D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿd
p 

 
ª "ÿÿÿÿÿÿÿÿÿû
,__inference_sequential_1_layer_call_fn_15577j/01%&D¢A
:¢7
-*
inputsÿÿÿÿÿÿÿÿÿd
p

 
ª "ÿÿÿÿÿÿÿÿÿûÇ
#__inference_signature_wrapper_15539/01%&`¢]
¢ 
VªS
Q
conv_lstm2d_1_input:7
conv_lstm2d_1_inputÿÿÿÿÿÿÿÿÿd"2ª/
-
dense_3"
dense_3ÿÿÿÿÿÿÿÿÿû