ыв0
∙╚
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
е
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring Ии
Ъ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
ў
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58Щ╪.
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
~
Adam/v/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_6/bias
w
'Adam/v/dense_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_6/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_6/bias
w
'Adam/m/dense_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_6/bias*
_output_shapes
:*
dtype0
И
Adam/v/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
мо*&
shared_nameAdam/v/dense_6/kernel
Б
)Adam/v/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_6/kernel* 
_output_shapes
:
мо*
dtype0
И
Adam/m/dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
мо*&
shared_nameAdam/m/dense_6/kernel
Б
)Adam/m/dense_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_6/kernel* 
_output_shapes
:
мо*
dtype0
Х
Adam/v/lstm_6/lstm_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Д*/
shared_name Adam/v/lstm_6/lstm_cell_7/bias
О
2Adam/v/lstm_6/lstm_cell_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_6/lstm_cell_7/bias*
_output_shapes	
:Д*
dtype0
Х
Adam/m/lstm_6/lstm_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Д*/
shared_name Adam/m/lstm_6/lstm_cell_7/bias
О
2Adam/m/lstm_6/lstm_cell_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_6/lstm_cell_7/bias*
_output_shapes	
:Д*
dtype0
▓
*Adam/v/lstm_6/lstm_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
БД*;
shared_name,*Adam/v/lstm_6/lstm_cell_7/recurrent_kernel
л
>Adam/v/lstm_6/lstm_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/v/lstm_6/lstm_cell_7/recurrent_kernel* 
_output_shapes
:
БД*
dtype0
▓
*Adam/m/lstm_6/lstm_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
БД*;
shared_name,*Adam/m/lstm_6/lstm_cell_7/recurrent_kernel
л
>Adam/m/lstm_6/lstm_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp*Adam/m/lstm_6/lstm_cell_7/recurrent_kernel* 
_output_shapes
:
БД*
dtype0
Ю
 Adam/v/lstm_6/lstm_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АД*1
shared_name" Adam/v/lstm_6/lstm_cell_7/kernel
Ч
4Adam/v/lstm_6/lstm_cell_7/kernel/Read/ReadVariableOpReadVariableOp Adam/v/lstm_6/lstm_cell_7/kernel* 
_output_shapes
:
АД*
dtype0
Ю
 Adam/m/lstm_6/lstm_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АД*1
shared_name" Adam/m/lstm_6/lstm_cell_7/kernel
Ч
4Adam/m/lstm_6/lstm_cell_7/kernel/Read/ReadVariableOpReadVariableOp Adam/m/lstm_6/lstm_cell_7/kernel* 
_output_shapes
:
АД*
dtype0
Ш
Adam/v/embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ё.А*.
shared_nameAdam/v/embedding_6/embeddings
С
1Adam/v/embedding_6/embeddings/Read/ReadVariableOpReadVariableOpAdam/v/embedding_6/embeddings* 
_output_shapes
:
Ё.А*
dtype0
Ш
Adam/m/embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ё.А*.
shared_nameAdam/m/embedding_6/embeddings
С
1Adam/m/embedding_6/embeddings/Read/ReadVariableOpReadVariableOpAdam/m/embedding_6/embeddings* 
_output_shapes
:
Ё.А*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
З
lstm_6/lstm_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Д*(
shared_namelstm_6/lstm_cell_7/bias
А
+lstm_6/lstm_cell_7/bias/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_7/bias*
_output_shapes	
:Д*
dtype0
д
#lstm_6/lstm_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
БД*4
shared_name%#lstm_6/lstm_cell_7/recurrent_kernel
Э
7lstm_6/lstm_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_6/lstm_cell_7/recurrent_kernel* 
_output_shapes
:
БД*
dtype0
Р
lstm_6/lstm_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АД**
shared_namelstm_6/lstm_cell_7/kernel
Й
-lstm_6/lstm_cell_7/kernel/Read/ReadVariableOpReadVariableOplstm_6/lstm_cell_7/kernel* 
_output_shapes
:
АД*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
z
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
мо*
shared_namedense_6/kernel
s
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel* 
_output_shapes
:
мо*
dtype0
К
embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ё.А*'
shared_nameembedding_6/embeddings
Г
*embedding_6/embeddings/Read/ReadVariableOpReadVariableOpembedding_6/embeddings* 
_output_shapes
:
Ё.А*
dtype0
|
serving_default_input_7Placeholder*(
_output_shapes
:         м*
dtype0*
shape:         м
═
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_7embedding_6/embeddingslstm_6/lstm_cell_7/kernel#lstm_6/lstm_cell_7/recurrent_kernellstm_6/lstm_cell_7/biasdense_6/kerneldense_6/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_153063

NoOpNoOp
л6
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ц5
value▄5B┘5 B╥5
█
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
а
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
О
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses* 
ж
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias*
.
0
-1
.2
/3
+4
,5*
.
0
-1
.2
/3
+4
,5*
* 
░
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
5trace_0
6trace_1
7trace_2
8trace_3* 
6
9trace_0
:trace_1
;trace_2
<trace_3* 
* 
Б
=
_variables
>_iterations
?_learning_rate
@_index_dict
A
_momentums
B_velocities
C_update_step_xla*

Dserving_default* 

0*

0*
* 
У
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Jtrace_0* 

Ktrace_0* 
jd
VARIABLE_VALUEembedding_6/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

-0
.1
/2*

-0
.1
/2*
* 
Я

Lstates
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
* 
у
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`_random_generator
a
state_size

-kernel
.recurrent_kernel
/bias*
* 
* 
* 
* 
С
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses* 

gtrace_0* 

htrace_0* 

+0
,1*

+0
,1*
* 
У
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

ntrace_0* 

otrace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_6/lstm_cell_7/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_6/lstm_cell_7/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_6/lstm_cell_7/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
0
1
2
3
4*

p0
q1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
b
>0
r1
s2
t3
u4
v5
w6
x7
y8
z9
{10
|11
}12*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
r0
t1
v2
x3
z4
|5*
.
s0
u1
w2
y3
{4
}5*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

-0
.1
/2*

-0
.1
/2*
* 
Ц
~non_trainable_variables

layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
Г	variables
Д	keras_api

Еtotal

Жcount*
M
З	variables
И	keras_api

Йtotal

Кcount
Л
_fn_kwargs*
hb
VARIABLE_VALUEAdam/m/embedding_6/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/embedding_6/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/lstm_6/lstm_cell_7/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_6/lstm_cell_7/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/m/lstm_6/lstm_cell_7/recurrent_kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*Adam/v/lstm_6/lstm_cell_7/recurrent_kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/lstm_6/lstm_cell_7/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_6/lstm_cell_7/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_6/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_6/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_6/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_6/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

Е0
Ж1*

Г	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Й0
К1*

З	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╬

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_6/embeddings/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp-lstm_6/lstm_cell_7/kernel/Read/ReadVariableOp7lstm_6/lstm_cell_7/recurrent_kernel/Read/ReadVariableOp+lstm_6/lstm_cell_7/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp1Adam/m/embedding_6/embeddings/Read/ReadVariableOp1Adam/v/embedding_6/embeddings/Read/ReadVariableOp4Adam/m/lstm_6/lstm_cell_7/kernel/Read/ReadVariableOp4Adam/v/lstm_6/lstm_cell_7/kernel/Read/ReadVariableOp>Adam/m/lstm_6/lstm_cell_7/recurrent_kernel/Read/ReadVariableOp>Adam/v/lstm_6/lstm_cell_7/recurrent_kernel/Read/ReadVariableOp2Adam/m/lstm_6/lstm_cell_7/bias/Read/ReadVariableOp2Adam/v/lstm_6/lstm_cell_7/bias/Read/ReadVariableOp)Adam/m/dense_6/kernel/Read/ReadVariableOp)Adam/v/dense_6/kernel/Read/ReadVariableOp'Adam/m/dense_6/bias/Read/ReadVariableOp'Adam/v/dense_6/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*%
Tin
2	*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_155996
щ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_6/embeddingsdense_6/kerneldense_6/biaslstm_6/lstm_cell_7/kernel#lstm_6/lstm_cell_7/recurrent_kernellstm_6/lstm_cell_7/bias	iterationlearning_rateAdam/m/embedding_6/embeddingsAdam/v/embedding_6/embeddings Adam/m/lstm_6/lstm_cell_7/kernel Adam/v/lstm_6/lstm_cell_7/kernel*Adam/m/lstm_6/lstm_cell_7/recurrent_kernel*Adam/v/lstm_6/lstm_cell_7/recurrent_kernelAdam/m/lstm_6/lstm_cell_7/biasAdam/v/lstm_6/lstm_cell_7/biasAdam/m/dense_6/kernelAdam/v/dense_6/kernelAdam/m/dense_6/biasAdam/v/dense_6/biastotal_1count_1totalcount*$
Tin
2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_156078Р┘-
╒(
╧
while_body_154618
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
х
└
B__inference_lstm_6_layer_call_and_return_conditional_losses_154513
inputs_00
read_readvariableop_resource:
АД2
read_1_readvariableop_resource:
БД-
read_2_readvariableop_resource:	Д

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         БS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         БG
ones_like/ShapeShapeinputs_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*5
_output_shapes#
!:                  Аh
mulMulinputs_0ones_like:output:0*
T0*5
_output_shapes#
!:                  Аr
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АД*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БДq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Д└
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         Б:                  Б:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_154240w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:                  БМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs_0
З
╢
'__inference_lstm_6_layer_call_fn_154082

inputs
unknown:
АД
	unknown_0:
БД
	unknown_1:	Д
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мБ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_152914u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:         мБ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         мА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs
╞
Ч
(__inference_dense_6_layer_call_fn_155890

inputs
unknown:
мо
	unknown_0:
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_152400o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         мо: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:         мо
 
_user_specified_nameinputs
ы
Щ
C__inference_model_6_layer_call_and_return_conditional_losses_152970

inputs&
embedding_6_152953:
Ё.А!
lstm_6_152956:
АД!
lstm_6_152958:
БД
lstm_6_152960:	Д"
dense_6_152964:
мо
dense_6_152966:
identityИвdense_6/StatefulPartitionedCallв#embedding_6/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallь
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_6_152953*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мА*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_151939е
lstm_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_6/StatefulPartitionedCall:output:0lstm_6_152956lstm_6_152958lstm_6_152960*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мБ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_152914▌
flatten_6/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         мо* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_152387И
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_6_152964dense_6_152966*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_152400w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         п
NoOpNoOp ^dense_6/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
╬:
└
 __inference_standard_lstm_150722

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_150637*
condR
while_cond_150636*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ─
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:м         Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:         мБ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_1:y:0*
T0*-
_output_shapes
:         мБY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_d85f6601-81ff-4f05-a906-9959122fcc9c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
┘T
є
C__inference_model_6_layer_call_and_return_conditional_losses_154021

inputs7
#embedding_6_embedding_lookup_153547:
Ё.А7
#lstm_6_read_readvariableop_resource:
АД9
%lstm_6_read_1_readvariableop_resource:
БД4
%lstm_6_read_2_readvariableop_resource:	Д:
&dense_6_matmul_readvariableop_resource:
мо5
'dense_6_biasadd_readvariableop_resource:
identityИвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвembedding_6/embedding_lookupвlstm_6/Read/ReadVariableOpвlstm_6/Read_1/ReadVariableOpвlstm_6/Read_2/ReadVariableOpb
embedding_6/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:         мэ
embedding_6/embedding_lookupResourceGather#embedding_6_embedding_lookup_153547embedding_6/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_6/embedding_lookup/153547*-
_output_shapes
:         мА*
dtype0╚
%embedding_6/embedding_lookup/IdentityIdentity%embedding_6/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_6/embedding_lookup/153547*-
_output_shapes
:         мАЫ
'embedding_6/embedding_lookup/Identity_1Identity.embedding_6/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         мАl
lstm_6/ShapeShape0embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:d
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :БИ
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*(
_output_shapes
:         БZ
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :БМ
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    И
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*(
_output_shapes
:         Бv
lstm_6/ones_like/ShapeShape0embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:[
lstm_6/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Т
lstm_6/ones_likeFilllstm_6/ones_like/Shape:output:0lstm_6/ones_like/Const:output:0*
T0*-
_output_shapes
:         мАY
lstm_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?Л
lstm_6/dropout/MulMullstm_6/ones_like:output:0lstm_6/dropout/Const:output:0*
T0*-
_output_shapes
:         мА]
lstm_6/dropout/ShapeShapelstm_6/ones_like:output:0*
T0*
_output_shapes
:а
+lstm_6/dropout/random_uniform/RandomUniformRandomUniformlstm_6/dropout/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0b
lstm_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=┴
lstm_6/dropout/GreaterEqualGreaterEqual4lstm_6/dropout/random_uniform/RandomUniform:output:0&lstm_6/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мА[
lstm_6/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╡
lstm_6/dropout/SelectV2SelectV2lstm_6/dropout/GreaterEqual:z:0lstm_6/dropout/Mul:z:0lstm_6/dropout/Const_1:output:0*
T0*-
_output_shapes
:         мА[
lstm_6/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_6/dropout_1/MulMullstm_6/ones_like:output:0lstm_6/dropout_1/Const:output:0*
T0*-
_output_shapes
:         мА_
lstm_6/dropout_1/ShapeShapelstm_6/ones_like:output:0*
T0*
_output_shapes
:д
-lstm_6/dropout_1/random_uniform/RandomUniformRandomUniformlstm_6/dropout_1/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0d
lstm_6/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╟
lstm_6/dropout_1/GreaterEqualGreaterEqual6lstm_6/dropout_1/random_uniform/RandomUniform:output:0(lstm_6/dropout_1/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мА]
lstm_6/dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╜
lstm_6/dropout_1/SelectV2SelectV2!lstm_6/dropout_1/GreaterEqual:z:0lstm_6/dropout_1/Mul:z:0!lstm_6/dropout_1/Const_1:output:0*
T0*-
_output_shapes
:         мА[
lstm_6/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_6/dropout_2/MulMullstm_6/ones_like:output:0lstm_6/dropout_2/Const:output:0*
T0*-
_output_shapes
:         мА_
lstm_6/dropout_2/ShapeShapelstm_6/ones_like:output:0*
T0*
_output_shapes
:д
-lstm_6/dropout_2/random_uniform/RandomUniformRandomUniformlstm_6/dropout_2/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0d
lstm_6/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╟
lstm_6/dropout_2/GreaterEqualGreaterEqual6lstm_6/dropout_2/random_uniform/RandomUniform:output:0(lstm_6/dropout_2/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мА]
lstm_6/dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╜
lstm_6/dropout_2/SelectV2SelectV2!lstm_6/dropout_2/GreaterEqual:z:0lstm_6/dropout_2/Mul:z:0!lstm_6/dropout_2/Const_1:output:0*
T0*-
_output_shapes
:         мА[
lstm_6/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?П
lstm_6/dropout_3/MulMullstm_6/ones_like:output:0lstm_6/dropout_3/Const:output:0*
T0*-
_output_shapes
:         мА_
lstm_6/dropout_3/ShapeShapelstm_6/ones_like:output:0*
T0*
_output_shapes
:д
-lstm_6/dropout_3/random_uniform/RandomUniformRandomUniformlstm_6/dropout_3/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0d
lstm_6/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╟
lstm_6/dropout_3/GreaterEqualGreaterEqual6lstm_6/dropout_3/random_uniform/RandomUniform:output:0(lstm_6/dropout_3/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мА]
lstm_6/dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ╜
lstm_6/dropout_3/SelectV2SelectV2!lstm_6/dropout_3/GreaterEqual:z:0lstm_6/dropout_3/Mul:z:0!lstm_6/dropout_3/Const_1:output:0*
T0*-
_output_shapes
:         мАЭ

lstm_6/mulMul0embedding_6/embedding_lookup/Identity_1:output:0 lstm_6/dropout/SelectV2:output:0*
T0*-
_output_shapes
:         мАА
lstm_6/Read/ReadVariableOpReadVariableOp#lstm_6_read_readvariableop_resource* 
_output_shapes
:
АД*
dtype0j
lstm_6/IdentityIdentity"lstm_6/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДД
lstm_6/Read_1/ReadVariableOpReadVariableOp%lstm_6_read_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0n
lstm_6/Identity_1Identity$lstm_6/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БД
lstm_6/Read_2/ReadVariableOpReadVariableOp%lstm_6_read_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0i
lstm_6/Identity_2Identity$lstm_6/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Дщ
lstm_6/PartitionedCallPartitionedCalllstm_6/mul:z:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/Identity:output:0lstm_6/Identity_1:output:0lstm_6/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *k
_output_shapesY
W:         Б:         мБ:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_153739`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ,Ч  Л
flatten_6/ReshapeReshapelstm_6/PartitionedCall:output:1flatten_6/Const:output:0*
T0*)
_output_shapes
:         моЖ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
мо*
dtype0Н
dense_6/MatMulMatMulflatten_6/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_6/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Б
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^embedding_6/embedding_lookup^lstm_6/Read/ReadVariableOp^lstm_6/Read_1/ReadVariableOp^lstm_6/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2<
embedding_6/embedding_lookupembedding_6/embedding_lookup28
lstm_6/Read/ReadVariableOplstm_6/Read/ReadVariableOp2<
lstm_6/Read_1/ReadVariableOplstm_6/Read_1/ReadVariableOp2<
lstm_6/Read_2/ReadVariableOplstm_6/Read_2/ReadVariableOp:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
А├
є
;__inference___backward_gpu_lstm_with_fallback_150817_150993
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бf
gradients/grad_ys_1Identityplaceholder_1*
T0*-
_output_shapes
:         мБa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:г
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*-
_output_shapes
:м         Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:╣
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:м         Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         Б√
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*-
_output_shapes
:м         Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Е
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*e
_output_shapesS
Q:м         А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╥
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:         мАu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Дt
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*-
_output_shapes
:         мАu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*°
_input_shapesц
у:         Б:         мБ:         Б:         Б: :м         Б::         Б:         Б::м         А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_d85f6601-81ff-4f05-a906-9959122fcc9c*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_150992*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:3/
-
_output_shapes
:         мБ:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :3/
-
_output_shapes
:м         Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::3
/
-
_output_shapes
:м         А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЕM
д
'__forward_gpu_lstm_with_fallback_154973

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  Бq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  Б[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_84413503-16bc-43a1-936e-1d20c16521ed*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_154798_154974*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
ш├
є
;__inference___backward_gpu_lstm_with_fallback_151261_151437
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бn
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  Бa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:л
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:┴
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         БГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Н
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  Аu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Д|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  Аu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         Б:                  Б:         Б:         Б: :                  Б::         Б:         Б::                  А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_4941204e-9086-4766-bfd3-740a6c05f569*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_151436*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:;7
5
_output_shapes#
!:                  Б:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :;7
5
_output_shapes#
!:                  Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Х	
┴
while_cond_150636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_150636___redundant_placeholder04
0while_while_cond_150636___redundant_placeholder14
0while_while_cond_150636___redundant_placeholder24
0while_while_cond_150636___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
н
╕
'__inference_lstm_6_layer_call_fn_154049
inputs_0
unknown:
АД
	unknown_0:
БД
	unknown_1:	Д
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  Б*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_151439}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  Б`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs_0
╒(
╧
while_body_151081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
╬:
└
 __inference_standard_lstm_155134

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_155049*
condR
while_cond_155048*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ─
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:м         Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:         мБ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_1:y:0*
T0*-
_output_shapes
:         мБY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_03c82371-8bc0-4ea6-9994-017a23f92d6c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
╒(
╧
while_body_151555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
▄L
д
'__forward_gpu_lstm_with_fallback_155404

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╥
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_03c82371-8bc0-4ea6-9994-017a23f92d6c*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_155229_155405*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
н
╕
'__inference_lstm_6_layer_call_fn_154060
inputs_0
unknown:
АД
	unknown_0:
БД
	unknown_1:	Д
identityИвStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:                  Б*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_151913}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:                  Б`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs_0
Дi
▀
"__inference__traced_restore_156078
file_prefix;
'assignvariableop_embedding_6_embeddings:
Ё.А5
!assignvariableop_1_dense_6_kernel:
мо-
assignvariableop_2_dense_6_bias:@
,assignvariableop_3_lstm_6_lstm_cell_7_kernel:
АДJ
6assignvariableop_4_lstm_6_lstm_cell_7_recurrent_kernel:
БД9
*assignvariableop_5_lstm_6_lstm_cell_7_bias:	Д&
assignvariableop_6_iteration:	 *
 assignvariableop_7_learning_rate: D
0assignvariableop_8_adam_m_embedding_6_embeddings:
Ё.АD
0assignvariableop_9_adam_v_embedding_6_embeddings:
Ё.АH
4assignvariableop_10_adam_m_lstm_6_lstm_cell_7_kernel:
АДH
4assignvariableop_11_adam_v_lstm_6_lstm_cell_7_kernel:
АДR
>assignvariableop_12_adam_m_lstm_6_lstm_cell_7_recurrent_kernel:
БДR
>assignvariableop_13_adam_v_lstm_6_lstm_cell_7_recurrent_kernel:
БДA
2assignvariableop_14_adam_m_lstm_6_lstm_cell_7_bias:	ДA
2assignvariableop_15_adam_v_lstm_6_lstm_cell_7_bias:	Д=
)assignvariableop_16_adam_m_dense_6_kernel:
мо=
)assignvariableop_17_adam_v_dense_6_kernel:
мо5
'assignvariableop_18_adam_m_dense_6_bias:5
'assignvariableop_19_adam_v_dense_6_bias:%
assignvariableop_20_total_1: %
assignvariableop_21_count_1: #
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╒

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*√	
valueё	Bю	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHв
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B Ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOpAssignVariableOp'assignvariableop_embedding_6_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_6_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╢
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_6_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_3AssignVariableOp,assignvariableop_3_lstm_6_lstm_cell_7_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_4AssignVariableOp6assignvariableop_4_lstm_6_lstm_cell_7_recurrent_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_5AssignVariableOp*assignvariableop_5_lstm_6_lstm_cell_7_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_6AssignVariableOpassignvariableop_6_iterationIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_learning_rateIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_8AssignVariableOp0assignvariableop_8_adam_m_embedding_6_embeddingsIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_9AssignVariableOp0assignvariableop_9_adam_v_embedding_6_embeddingsIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_10AssignVariableOp4assignvariableop_10_adam_m_lstm_6_lstm_cell_7_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_11AssignVariableOp4assignvariableop_11_adam_v_lstm_6_lstm_cell_7_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_12AssignVariableOp>assignvariableop_12_adam_m_lstm_6_lstm_cell_7_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_13AssignVariableOp>assignvariableop_13_adam_v_lstm_6_lstm_cell_7_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_14AssignVariableOp2assignvariableop_14_adam_m_lstm_6_lstm_cell_7_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adam_v_lstm_6_lstm_cell_7_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_m_dense_6_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_v_dense_6_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_m_dense_6_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_v_dense_6_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ▀
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: ╠
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
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
▄L
д
'__forward_gpu_lstm_with_fallback_152911

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╥
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_1946a85c-0bb1-4e75-9690-b63ca59f8f00*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_152736_152912*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
▄L
д
'__forward_gpu_lstm_with_fallback_153531

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╥
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_301bd268-0493-4194-af09-6b37d73f1aba*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_153356_153532*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
ш├
є
;__inference___backward_gpu_lstm_with_fallback_151735_151911
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бn
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  Бa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:л
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:┴
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         БГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Н
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  Аu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Д|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  Аu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         Б:                  Б:         Б:         Б: :                  Б::         Б:         Б::                  А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_8b8cd6c7-b94d-4e26-99a3-599d8b814456*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_151910*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:;7
5
_output_shapes#
!:                  Б:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :;7
5
_output_shapes#
!:                  Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╒(
╧
while_body_150637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
б

Ў
C__inference_dense_6_layer_call_and_return_conditional_losses_152400

inputs2
matmul_readvariableop_resource:
мо-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
мо*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         мо: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         мо
 
_user_specified_nameinputs
Х	
┴
while_cond_151554
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_151554___redundant_placeholder04
0while_while_cond_151554___redundant_placeholder14
0while_while_cond_151554___redundant_placeholder24
0while_while_cond_151554___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Х	
┴
while_cond_152555
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_152555___redundant_placeholder04
0while_while_cond_152555___redundant_placeholder14
0while_while_cond_152555___redundant_placeholder24
0while_while_cond_152555___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Х	
┴
while_cond_154154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_154154___redundant_placeholder04
0while_while_cond_154154___redundant_placeholder14
0while_while_cond_154154___redundant_placeholder24
0while_while_cond_154154___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
п
F
*__inference_flatten_6_layer_call_fn_155875

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         мо* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_152387b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:         мо"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         мБ:U Q
-
_output_shapes
:         мБ
 
_user_specified_nameinputs
╒(
╧
while_body_154155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
А├
є
;__inference___backward_gpu_lstm_with_fallback_155229_155405
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бf
gradients/grad_ys_1Identityplaceholder_1*
T0*-
_output_shapes
:         мБa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:г
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*-
_output_shapes
:м         Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:╣
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:м         Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         Б√
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*-
_output_shapes
:м         Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Е
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*e
_output_shapesS
Q:м         А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╥
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:         мАu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Дt
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*-
_output_shapes
:         мАu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*°
_input_shapesц
у:         Б:         мБ:         Б:         Б: :м         Б::         Б:         Б::м         А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_03c82371-8bc0-4ea6-9994-017a23f92d6c*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_155404*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:3/
-
_output_shapes
:         мБ:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :3/
-
_output_shapes
:м         Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::3
/
-
_output_shapes
:м         А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Х	
┴
while_cond_153653
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_153653___redundant_placeholder04
0while_while_cond_153653___redundant_placeholder14
0while_while_cond_153653___redundant_placeholder24
0while_while_cond_153653___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
╦;
╛
B__inference_lstm_6_layer_call_and_return_conditional_losses_152914

inputs0
read_readvariableop_resource:
АД2
read_1_readvariableop_resource:
БД-
read_2_readvariableop_resource:	Д

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         БS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         БE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?}
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*-
_output_shapes
:         мАR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?v
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*-
_output_shapes
:         мАO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Т
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мАT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Щ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*-
_output_shapes
:         мАT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?z
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*-
_output_shapes
:         мАQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ц
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▓
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мАV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    б
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*-
_output_shapes
:         мАT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?z
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*-
_output_shapes
:         мАQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ц
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▓
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мАV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    б
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*-
_output_shapes
:         мАT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?z
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*-
_output_shapes
:         мАQ
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ц
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▓
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мАV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    б
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*-
_output_shapes
:         мАe
mulMulinputsdropout/SelectV2:output:0*
T0*-
_output_shapes
:         мАr
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АД*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БДq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Д╕
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *k
_output_shapesY
W:         Б:         мБ:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_152641o

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*-
_output_shapes
:         мБМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         мА: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs
╦;
╛
B__inference_lstm_6_layer_call_and_return_conditional_losses_155870

inputs0
read_readvariableop_resource:
АД2
read_1_readvariableop_resource:
БД-
read_2_readvariableop_resource:	Д

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         БS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         БE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?}
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*-
_output_shapes
:         мАR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?v
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*-
_output_shapes
:         мАO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Т
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=м
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мАT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Щ
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*-
_output_shapes
:         мАT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?z
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*-
_output_shapes
:         мАQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ц
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▓
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мАV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    б
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*-
_output_shapes
:         мАT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?z
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*-
_output_shapes
:         мАQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ц
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▓
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мАV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    б
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*-
_output_shapes
:         мАT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?z
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*-
_output_shapes
:         мАQ
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ц
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*-
_output_shapes
:         мА*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▓
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*-
_output_shapes
:         мАV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    б
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*-
_output_shapes
:         мАe
mulMulinputsdropout/SelectV2:output:0*
T0*-
_output_shapes
:         мАr
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АД*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БДq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Д╕
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *k
_output_shapesY
W:         Б:         мБ:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_155597o

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*-
_output_shapes
:         мБМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         мА: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs
Х	
┴
while_cond_155048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_155048___redundant_placeholder04
0while_while_cond_155048___redundant_placeholder14
0while_while_cond_155048___redundant_placeholder24
0while_while_cond_155048___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
к
╛
B__inference_lstm_6_layer_call_and_return_conditional_losses_155407

inputs0
read_readvariableop_resource:
АД2
read_1_readvariableop_resource:
БД-
read_2_readvariableop_resource:	Д

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         БS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         БE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?}
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*-
_output_shapes
:         мА^
mulMulinputsones_like:output:0*
T0*-
_output_shapes
:         мАr
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АД*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БДq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Д╕
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *k
_output_shapesY
W:         Б:         мБ:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_155134o

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*-
_output_shapes
:         мБМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         мА: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs
 @
╠
)__inference_gpu_lstm_with_fallback_152735

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╬
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_1946a85c-0bb1-4e75-9690-b63ca59f8f00*
api_preferred_deviceGPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
╪2
є
C__inference_model_6_layer_call_and_return_conditional_losses_153543

inputs7
#embedding_6_embedding_lookup_153101:
Ё.А7
#lstm_6_read_readvariableop_resource:
АД9
%lstm_6_read_1_readvariableop_resource:
БД4
%lstm_6_read_2_readvariableop_resource:	Д:
&dense_6_matmul_readvariableop_resource:
мо5
'dense_6_biasadd_readvariableop_resource:
identityИвdense_6/BiasAdd/ReadVariableOpвdense_6/MatMul/ReadVariableOpвembedding_6/embedding_lookupвlstm_6/Read/ReadVariableOpвlstm_6/Read_1/ReadVariableOpвlstm_6/Read_2/ReadVariableOpb
embedding_6/CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:         мэ
embedding_6/embedding_lookupResourceGather#embedding_6_embedding_lookup_153101embedding_6/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_6/embedding_lookup/153101*-
_output_shapes
:         мА*
dtype0╚
%embedding_6/embedding_lookup/IdentityIdentity%embedding_6/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_6/embedding_lookup/153101*-
_output_shapes
:         мАЫ
'embedding_6/embedding_lookup/Identity_1Identity.embedding_6/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         мАl
lstm_6/ShapeShape0embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:d
lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
lstm_6/strided_sliceStridedSlicelstm_6/Shape:output:0#lstm_6/strided_slice/stack:output:0%lstm_6/strided_slice/stack_1:output:0%lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :БИ
lstm_6/zeros/packedPacklstm_6/strided_slice:output:0lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    В
lstm_6/zerosFilllstm_6/zeros/packed:output:0lstm_6/zeros/Const:output:0*
T0*(
_output_shapes
:         БZ
lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :БМ
lstm_6/zeros_1/packedPacklstm_6/strided_slice:output:0 lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    И
lstm_6/zeros_1Filllstm_6/zeros_1/packed:output:0lstm_6/zeros_1/Const:output:0*
T0*(
_output_shapes
:         Бv
lstm_6/ones_like/ShapeShape0embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:[
lstm_6/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Т
lstm_6/ones_likeFilllstm_6/ones_like/Shape:output:0lstm_6/ones_like/Const:output:0*
T0*-
_output_shapes
:         мАЦ

lstm_6/mulMul0embedding_6/embedding_lookup/Identity_1:output:0lstm_6/ones_like:output:0*
T0*-
_output_shapes
:         мАА
lstm_6/Read/ReadVariableOpReadVariableOp#lstm_6_read_readvariableop_resource* 
_output_shapes
:
АД*
dtype0j
lstm_6/IdentityIdentity"lstm_6/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДД
lstm_6/Read_1/ReadVariableOpReadVariableOp%lstm_6_read_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0n
lstm_6/Identity_1Identity$lstm_6/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БД
lstm_6/Read_2/ReadVariableOpReadVariableOp%lstm_6_read_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0i
lstm_6/Identity_2Identity$lstm_6/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Дщ
lstm_6/PartitionedCallPartitionedCalllstm_6/mul:z:0lstm_6/zeros:output:0lstm_6/zeros_1:output:0lstm_6/Identity:output:0lstm_6/Identity_1:output:0lstm_6/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *k
_output_shapesY
W:         Б:         мБ:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_153261`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ,Ч  Л
flatten_6/ReshapeReshapelstm_6/PartitionedCall:output:1flatten_6/Const:output:0*
T0*)
_output_shapes
:         моЖ
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource* 
_output_shapes
:
мо*
dtype0Н
dense_6/MatMulMatMulflatten_6/Reshape:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_6/SigmoidSigmoiddense_6/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_6/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Б
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^embedding_6/embedding_lookup^lstm_6/Read/ReadVariableOp^lstm_6/Read_1/ReadVariableOp^lstm_6/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2<
embedding_6/embedding_lookupembedding_6/embedding_lookup28
lstm_6/Read/ReadVariableOplstm_6/Read/ReadVariableOp2<
lstm_6/Read_1/ReadVariableOplstm_6/Read_1/ReadVariableOp2<
lstm_6/Read_2/ReadVariableOplstm_6/Read_2/ReadVariableOp:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
░A
╠
)__inference_gpu_lstm_with_fallback_151734

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  Бq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  Б[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_8b8cd6c7-b94d-4e26-99a3-599d8b814456*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
░A
╠
)__inference_gpu_lstm_with_fallback_151260

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  Бq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  Б[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_4941204e-9086-4766-bfd3-740a6c05f569*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
 @
╠
)__inference_gpu_lstm_with_fallback_150816

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╬
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_d85f6601-81ff-4f05-a906-9959122fcc9c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
╬:
└
 __inference_standard_lstm_153739

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_153654*
condR
while_cond_153653*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ─
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:м         Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:         мБ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_1:y:0*
T0*-
_output_shapes
:         мБY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_e7dd14ab-dca9-4720-9157-8ebd4be0080b*
api_preferred_deviceCPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
З
╢
'__inference_lstm_6_layer_call_fn_154071

inputs
unknown:
АД
	unknown_0:
БД
	unknown_1:	Д
identityИвStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мБ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_152373u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:         мБ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         мА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs
 @
╠
)__inference_gpu_lstm_with_fallback_153355

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╬
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_301bd268-0493-4194-af09-6b37d73f1aba*
api_preferred_deviceGPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
ў
О
(__inference_model_6_layer_call_fn_153080

inputs
unknown:
Ё.А
	unknown_0:
АД
	unknown_1:
БД
	unknown_2:	Д
	unknown_3:
мо
	unknown_4:
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_152407o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
░
В
,__inference_embedding_6_layer_call_fn_154028

inputs
unknown:
Ё.А
identityИвStatefulPartitionedCall╒
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мА*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_151939u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:         мА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:         м: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
ЕM
д
'__forward_gpu_lstm_with_fallback_154510

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  Бq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  Б[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_daf45dfd-0347-4858-8175-df7a2fea3a1a*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_154335_154511*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
А├
є
;__inference___backward_gpu_lstm_with_fallback_152195_152371
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бf
gradients/grad_ys_1Identityplaceholder_1*
T0*-
_output_shapes
:         мБa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:г
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*-
_output_shapes
:м         Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:╣
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:м         Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         Б√
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*-
_output_shapes
:м         Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Е
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*e
_output_shapesS
Q:м         А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╥
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:         мАu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Дt
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*-
_output_shapes
:         мАu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*°
_input_shapesц
у:         Б:         мБ:         Б:         Б: :м         Б::         Б:         Б::м         А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_17499c23-7313-4a05-b62a-3d7f2feee6f2*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_152370*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:3/
-
_output_shapes
:         мБ:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :3/
-
_output_shapes
:м         Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::3
/
-
_output_shapes
:м         А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
▄L
д
'__forward_gpu_lstm_with_fallback_154009

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╥
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_e7dd14ab-dca9-4720-9157-8ebd4be0080b*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_153834_154010*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
■:
└
 __inference_standard_lstm_154703

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_154618*
condR
while_cond_154617*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Б[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  БY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_84413503-16bc-43a1-936e-1d20c16521ed*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
 @
╠
)__inference_gpu_lstm_with_fallback_155228

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╬
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_03c82371-8bc0-4ea6-9994-017a23f92d6c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
 @
╠
)__inference_gpu_lstm_with_fallback_152194

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╬
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_17499c23-7313-4a05-b62a-3d7f2feee6f2*
api_preferred_deviceGPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
■:
└
 __inference_standard_lstm_151640

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_151555*
condR
while_cond_151554*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Б[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  БY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_8b8cd6c7-b94d-4e26-99a3-599d8b814456*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
·
П
(__inference_model_6_layer_call_fn_153002
input_7
unknown:
Ё.А
	unknown_0:
АД
	unknown_1:
БД
	unknown_2:	Д
	unknown_3:
мо
	unknown_4:
identityИвStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_152970o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:         м
!
_user_specified_name	input_7
╒(
╧
while_body_153654
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
░	
ж
G__inference_embedding_6_layer_call_and_return_conditional_losses_151939

inputs+
embedding_lookup_151933:
Ё.А
identityИвembedding_lookupV
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:         м╜
embedding_lookupResourceGatherembedding_lookup_151933Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/151933*-
_output_shapes
:         мА*
dtype0д
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/151933*-
_output_shapes
:         мАГ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         мАy
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:         мАY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:         м: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
╘
Л
$__inference_signature_wrapper_153063
input_7
unknown:
Ё.А
	unknown_0:
АД
	unknown_1:
БД
	unknown_2:	Д
	unknown_3:
мо
	unknown_4:
identityИвStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_151004o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:         м
!
_user_specified_name	input_7
Х	
┴
while_cond_153175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_153175___redundant_placeholder04
0while_while_cond_153175___redundant_placeholder14
0while_while_cond_153175___redundant_placeholder24
0while_while_cond_153175___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
■:
└
 __inference_standard_lstm_151166

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_151081*
condR
while_cond_151080*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Б[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  БY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_4941204e-9086-4766-bfd3-740a6c05f569*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
╒(
╧
while_body_153176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
▄L
д
'__forward_gpu_lstm_with_fallback_155867

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╥
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_d521f16b-e6b1-4a94-a024-9aad9bd143e3*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_155692_155868*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
ю
Ъ
C__inference_model_6_layer_call_and_return_conditional_losses_153042
input_7&
embedding_6_153025:
Ё.А!
lstm_6_153028:
АД!
lstm_6_153030:
БД
lstm_6_153032:	Д"
dense_6_153036:
мо
dense_6_153038:
identityИвdense_6/StatefulPartitionedCallв#embedding_6/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallэ
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallinput_7embedding_6_153025*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мА*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_151939е
lstm_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_6/StatefulPartitionedCall:output:0lstm_6_153028lstm_6_153030lstm_6_153032*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мБ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_152914▌
flatten_6/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         мо* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_152387И
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_6_153036dense_6_153038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_152400w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         п
NoOpNoOp ^dense_6/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:Q M
(
_output_shapes
:         м
!
_user_specified_name	input_7
╒(
╧
while_body_152556
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
▄L
д
'__forward_gpu_lstm_with_fallback_150992

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╥
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_d85f6601-81ff-4f05-a906-9959122fcc9c*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_150817_150993*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
Х	
┴
while_cond_151080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_151080___redundant_placeholder04
0while_while_cond_151080___redundant_placeholder14
0while_while_cond_151080___redundant_placeholder24
0while_while_cond_151080___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
А├
є
;__inference___backward_gpu_lstm_with_fallback_155692_155868
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бf
gradients/grad_ys_1Identityplaceholder_1*
T0*-
_output_shapes
:         мБa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:г
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*-
_output_shapes
:м         Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:╣
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:м         Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         Б√
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*-
_output_shapes
:м         Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Е
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*e
_output_shapesS
Q:м         А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╥
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:         мАu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Дt
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*-
_output_shapes
:         мАu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*°
_input_shapesц
у:         Б:         мБ:         Б:         Б: :м         Б::         Б:         Б::м         А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_d521f16b-e6b1-4a94-a024-9aad9bd143e3*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_155867*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:3/
-
_output_shapes
:         мБ:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :3/
-
_output_shapes
:м         Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::3
/
-
_output_shapes
:м         А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
▄L
д
'__forward_gpu_lstm_with_fallback_152370

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0╥
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_17499c23-7313-4a05-b62a-3d7f2feee6f2*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_152195_152371*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
┼
a
E__inference_flatten_6_layer_call_and_return_conditional_losses_152387

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ,Ч  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         моZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         мо"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         мБ:U Q
-
_output_shapes
:         мБ
 
_user_specified_nameinputs
·
П
(__inference_model_6_layer_call_fn_152422
input_7
unknown:
Ё.А
	unknown_0:
АД
	unknown_1:
БД
	unknown_2:	Д
	unknown_3:
мо
	unknown_4:
identityИвStatefulPartitionedCallН
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_152407o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:         м
!
_user_specified_name	input_7
╬:
└
 __inference_standard_lstm_155597

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_155512*
condR
while_cond_155511*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ─
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:м         Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:         мБ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_1:y:0*
T0*-
_output_shapes
:         мБY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_d521f16b-e6b1-4a94-a024-9aad9bd143e3*
api_preferred_deviceCPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
ы
Щ
C__inference_model_6_layer_call_and_return_conditional_losses_152407

inputs&
embedding_6_151940:
Ё.А!
lstm_6_152374:
АД!
lstm_6_152376:
БД
lstm_6_152378:	Д"
dense_6_152401:
мо
dense_6_152403:
identityИвdense_6/StatefulPartitionedCallв#embedding_6/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallь
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_6_151940*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мА*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_151939е
lstm_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_6/StatefulPartitionedCall:output:0lstm_6_152374lstm_6_152376lstm_6_152378*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мБ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_152373▌
flatten_6/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         мо* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_152387И
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_6_152401dense_6_152403*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_152400w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         п
NoOpNoOp ^dense_6/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
╒(
╧
while_body_155512
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
╬:
└
 __inference_standard_lstm_153261

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_153176*
condR
while_cond_153175*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ─
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:м         Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:         мБ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_1:y:0*
T0*-
_output_shapes
:         мБY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_301bd268-0493-4194-af09-6b37d73f1aba*
api_preferred_deviceCPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
ю
Ъ
C__inference_model_6_layer_call_and_return_conditional_losses_153022
input_7&
embedding_6_153005:
Ё.А!
lstm_6_153008:
АД!
lstm_6_153010:
БД
lstm_6_153012:	Д"
dense_6_153016:
мо
dense_6_153018:
identityИвdense_6/StatefulPartitionedCallв#embedding_6/StatefulPartitionedCallвlstm_6/StatefulPartitionedCallэ
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallinput_7embedding_6_153005*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мА*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_151939е
lstm_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_6/StatefulPartitionedCall:output:0lstm_6_153008lstm_6_153010lstm_6_153012*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:         мБ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_lstm_6_layer_call_and_return_conditional_losses_152373▌
flatten_6/PartitionedCallPartitionedCall'lstm_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:         мо* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_152387И
dense_6/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_6_153016dense_6_153018*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_152400w
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         п
NoOpNoOp ^dense_6/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall^lstm_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2@
lstm_6/StatefulPartitionedCalllstm_6/StatefulPartitionedCall:Q M
(
_output_shapes
:         м
!
_user_specified_name	input_7
Й=
└
B__inference_lstm_6_layer_call_and_return_conditional_losses_154976
inputs_00
read_readvariableop_resource:
АД2
read_1_readvariableop_resource:
БД-
read_2_readvariableop_resource:	Д

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         БS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         БG
ones_like/ShapeShapeinputs_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*5
_output_shapes#
!:                  АR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?~
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*5
_output_shapes#
!:                  АO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ъ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*5
_output_shapes#
!:                  А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=┤
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    б
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*5
_output_shapes#
!:                  АT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*5
_output_shapes#
!:                  АQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ю
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*5
_output_shapes#
!:                  А*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  АV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    й
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*5
_output_shapes#
!:                  АT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*5
_output_shapes#
!:                  АQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ю
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*5
_output_shapes#
!:                  А*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  АV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    й
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*5
_output_shapes#
!:                  АT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*5
_output_shapes#
!:                  АQ
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ю
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*5
_output_shapes#
!:                  А*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  АV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    й
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*5
_output_shapes#
!:                  Аo
mulMulinputs_0dropout/SelectV2:output:0*
T0*5
_output_shapes#
!:                  Аr
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АД*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БДq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Д└
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         Б:                  Б:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_154703w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:                  БМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:                  А
"
_user_specified_name
inputs_0
Х	
┴
while_cond_152014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_152014___redundant_placeholder04
0while_while_cond_152014___redundant_placeholder14
0while_while_cond_152014___redundant_placeholder24
0while_while_cond_152014___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Х	
┴
while_cond_154617
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_154617___redundant_placeholder04
0while_while_cond_154617___redundant_placeholder14
0while_while_cond_154617___redundant_placeholder24
0while_while_cond_154617___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
А├
є
;__inference___backward_gpu_lstm_with_fallback_152736_152912
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бf
gradients/grad_ys_1Identityplaceholder_1*
T0*-
_output_shapes
:         мБa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:г
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*-
_output_shapes
:м         Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:╣
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:м         Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         Б√
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*-
_output_shapes
:м         Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Е
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*e
_output_shapesS
Q:м         А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╥
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:         мАu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Дt
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*-
_output_shapes
:         мАu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*°
_input_shapesц
у:         Б:         мБ:         Б:         Б: :м         Б::         Б:         Б::м         А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_1946a85c-0bb1-4e75-9690-b63ca59f8f00*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_152911*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:3/
-
_output_shapes
:         мБ:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :3/
-
_output_shapes
:м         Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::3
/
-
_output_shapes
:м         А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЕM
д
'__forward_gpu_lstm_with_fallback_151910

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  Бq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  Б[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_8b8cd6c7-b94d-4e26-99a3-599d8b814456*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_151735_151911*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
ш├
є
;__inference___backward_gpu_lstm_with_fallback_154798_154974
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бn
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  Бa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:л
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:┴
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         БГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Н
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  Аu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Д|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  Аu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         Б:                  Б:         Б:         Б: :                  Б::         Б:         Б::                  А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_84413503-16bc-43a1-936e-1d20c16521ed*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_154973*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:;7
5
_output_shapes#
!:                  Б:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :;7
5
_output_shapes#
!:                  Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
│9
▓
!__inference__wrapped_model_151004
input_7?
+model_6_embedding_6_embedding_lookup_150562:
Ё.А?
+model_6_lstm_6_read_readvariableop_resource:
АДA
-model_6_lstm_6_read_1_readvariableop_resource:
БД<
-model_6_lstm_6_read_2_readvariableop_resource:	ДB
.model_6_dense_6_matmul_readvariableop_resource:
мо=
/model_6_dense_6_biasadd_readvariableop_resource:
identityИв&model_6/dense_6/BiasAdd/ReadVariableOpв%model_6/dense_6/MatMul/ReadVariableOpв$model_6/embedding_6/embedding_lookupв"model_6/lstm_6/Read/ReadVariableOpв$model_6/lstm_6/Read_1/ReadVariableOpв$model_6/lstm_6/Read_2/ReadVariableOpk
model_6/embedding_6/CastCastinput_7*

DstT0*

SrcT0*(
_output_shapes
:         мН
$model_6/embedding_6/embedding_lookupResourceGather+model_6_embedding_6_embedding_lookup_150562model_6/embedding_6/Cast:y:0*
Tindices0*>
_class4
20loc:@model_6/embedding_6/embedding_lookup/150562*-
_output_shapes
:         мА*
dtype0р
-model_6/embedding_6/embedding_lookup/IdentityIdentity-model_6/embedding_6/embedding_lookup:output:0*
T0*>
_class4
20loc:@model_6/embedding_6/embedding_lookup/150562*-
_output_shapes
:         мАл
/model_6/embedding_6/embedding_lookup/Identity_1Identity6model_6/embedding_6/embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         мА|
model_6/lstm_6/ShapeShape8model_6/embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:l
"model_6/lstm_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$model_6/lstm_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$model_6/lstm_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
model_6/lstm_6/strided_sliceStridedSlicemodel_6/lstm_6/Shape:output:0+model_6/lstm_6/strided_slice/stack:output:0-model_6/lstm_6/strided_slice/stack_1:output:0-model_6/lstm_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
model_6/lstm_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ба
model_6/lstm_6/zeros/packedPack%model_6/lstm_6/strided_slice:output:0&model_6/lstm_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
model_6/lstm_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
model_6/lstm_6/zerosFill$model_6/lstm_6/zeros/packed:output:0#model_6/lstm_6/zeros/Const:output:0*
T0*(
_output_shapes
:         Бb
model_6/lstm_6/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бд
model_6/lstm_6/zeros_1/packedPack%model_6/lstm_6/strided_slice:output:0(model_6/lstm_6/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
model_6/lstm_6/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    а
model_6/lstm_6/zeros_1Fill&model_6/lstm_6/zeros_1/packed:output:0%model_6/lstm_6/zeros_1/Const:output:0*
T0*(
_output_shapes
:         БЖ
model_6/lstm_6/ones_like/ShapeShape8model_6/embedding_6/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:c
model_6/lstm_6/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?к
model_6/lstm_6/ones_likeFill'model_6/lstm_6/ones_like/Shape:output:0'model_6/lstm_6/ones_like/Const:output:0*
T0*-
_output_shapes
:         мАо
model_6/lstm_6/mulMul8model_6/embedding_6/embedding_lookup/Identity_1:output:0!model_6/lstm_6/ones_like:output:0*
T0*-
_output_shapes
:         мАР
"model_6/lstm_6/Read/ReadVariableOpReadVariableOp+model_6_lstm_6_read_readvariableop_resource* 
_output_shapes
:
АД*
dtype0z
model_6/lstm_6/IdentityIdentity*model_6/lstm_6/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДФ
$model_6/lstm_6/Read_1/ReadVariableOpReadVariableOp-model_6_lstm_6_read_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0~
model_6/lstm_6/Identity_1Identity,model_6/lstm_6/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БДП
$model_6/lstm_6/Read_2/ReadVariableOpReadVariableOp-model_6_lstm_6_read_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0y
model_6/lstm_6/Identity_2Identity,model_6/lstm_6/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Дб
model_6/lstm_6/PartitionedCallPartitionedCallmodel_6/lstm_6/mul:z:0model_6/lstm_6/zeros:output:0model_6/lstm_6/zeros_1:output:0 model_6/lstm_6/Identity:output:0"model_6/lstm_6/Identity_1:output:0"model_6/lstm_6/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *k
_output_shapesY
W:         Б:         мБ:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_150722h
model_6/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ,Ч  г
model_6/flatten_6/ReshapeReshape'model_6/lstm_6/PartitionedCall:output:1 model_6/flatten_6/Const:output:0*
T0*)
_output_shapes
:         моЦ
%model_6/dense_6/MatMul/ReadVariableOpReadVariableOp.model_6_dense_6_matmul_readvariableop_resource* 
_output_shapes
:
мо*
dtype0е
model_6/dense_6/MatMulMatMul"model_6/flatten_6/Reshape:output:0-model_6/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Т
&model_6/dense_6/BiasAdd/ReadVariableOpReadVariableOp/model_6_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ж
model_6/dense_6/BiasAddBiasAdd model_6/dense_6/MatMul:product:0.model_6/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         v
model_6/dense_6/SigmoidSigmoid model_6/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:         j
IdentityIdentitymodel_6/dense_6/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ▒
NoOpNoOp'^model_6/dense_6/BiasAdd/ReadVariableOp&^model_6/dense_6/MatMul/ReadVariableOp%^model_6/embedding_6/embedding_lookup#^model_6/lstm_6/Read/ReadVariableOp%^model_6/lstm_6/Read_1/ReadVariableOp%^model_6/lstm_6/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 2P
&model_6/dense_6/BiasAdd/ReadVariableOp&model_6/dense_6/BiasAdd/ReadVariableOp2N
%model_6/dense_6/MatMul/ReadVariableOp%model_6/dense_6/MatMul/ReadVariableOp2L
$model_6/embedding_6/embedding_lookup$model_6/embedding_6/embedding_lookup2H
"model_6/lstm_6/Read/ReadVariableOp"model_6/lstm_6/Read/ReadVariableOp2L
$model_6/lstm_6/Read_1/ReadVariableOp$model_6/lstm_6/Read_1/ReadVariableOp2L
$model_6/lstm_6/Read_2/ReadVariableOp$model_6/lstm_6/Read_2/ReadVariableOp:Q M
(
_output_shapes
:         м
!
_user_specified_name	input_7
ш├
є
;__inference___backward_gpu_lstm_with_fallback_154335_154511
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бn
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  Бa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:л
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:┴
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         БГ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Н
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*m
_output_shapes[
Y:                  А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  Аu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Д|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  Аu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Р
_input_shapes■
√:         Б:                  Б:         Б:         Б: :                  Б::         Б:         Б::                  А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_daf45dfd-0347-4858-8175-df7a2fea3a1a*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_154510*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:;7
5
_output_shapes#
!:                  Б:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :;7
5
_output_shapes#
!:                  Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::;
7
5
_output_shapes#
!:                  А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
░A
╠
)__inference_gpu_lstm_with_fallback_154797

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  Бq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  Б[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_84413503-16bc-43a1-936e-1d20c16521ed*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
╒(
╧
while_body_155049
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
 @
╠
)__inference_gpu_lstm_with_fallback_155691

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╬
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_d521f16b-e6b1-4a94-a024-9aad9bd143e3*
api_preferred_deviceGPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
В8
П
__inference__traced_save_155996
file_prefix5
1savev2_embedding_6_embeddings_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop8
4savev2_lstm_6_lstm_cell_7_kernel_read_readvariableopB
>savev2_lstm_6_lstm_cell_7_recurrent_kernel_read_readvariableop6
2savev2_lstm_6_lstm_cell_7_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop<
8savev2_adam_m_embedding_6_embeddings_read_readvariableop<
8savev2_adam_v_embedding_6_embeddings_read_readvariableop?
;savev2_adam_m_lstm_6_lstm_cell_7_kernel_read_readvariableop?
;savev2_adam_v_lstm_6_lstm_cell_7_kernel_read_readvariableopI
Esavev2_adam_m_lstm_6_lstm_cell_7_recurrent_kernel_read_readvariableopI
Esavev2_adam_v_lstm_6_lstm_cell_7_recurrent_kernel_read_readvariableop=
9savev2_adam_m_lstm_6_lstm_cell_7_bias_read_readvariableop=
9savev2_adam_v_lstm_6_lstm_cell_7_bias_read_readvariableop4
0savev2_adam_m_dense_6_kernel_read_readvariableop4
0savev2_adam_v_dense_6_kernel_read_readvariableop2
.savev2_adam_m_dense_6_bias_read_readvariableop2
.savev2_adam_v_dense_6_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ╥

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*√	
valueё	Bю	B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЯ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B │
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_6_embeddings_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop4savev2_lstm_6_lstm_cell_7_kernel_read_readvariableop>savev2_lstm_6_lstm_cell_7_recurrent_kernel_read_readvariableop2savev2_lstm_6_lstm_cell_7_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop8savev2_adam_m_embedding_6_embeddings_read_readvariableop8savev2_adam_v_embedding_6_embeddings_read_readvariableop;savev2_adam_m_lstm_6_lstm_cell_7_kernel_read_readvariableop;savev2_adam_v_lstm_6_lstm_cell_7_kernel_read_readvariableopEsavev2_adam_m_lstm_6_lstm_cell_7_recurrent_kernel_read_readvariableopEsavev2_adam_v_lstm_6_lstm_cell_7_recurrent_kernel_read_readvariableop9savev2_adam_m_lstm_6_lstm_cell_7_bias_read_readvariableop9savev2_adam_v_lstm_6_lstm_cell_7_bias_read_readvariableop0savev2_adam_m_dense_6_kernel_read_readvariableop0savev2_adam_v_dense_6_kernel_read_readvariableop.savev2_adam_m_dense_6_bias_read_readvariableop.savev2_adam_v_dense_6_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *'
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*▄
_input_shapes╩
╟: :
Ё.А:
мо::
АД:
БД:Д: : :
Ё.А:
Ё.А:
АД:
АД:
БД:
БД:Д:Д:
мо:
мо::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
Ё.А:&"
 
_output_shapes
:
мо: 

_output_shapes
::&"
 
_output_shapes
:
АД:&"
 
_output_shapes
:
БД:!

_output_shapes	
:Д:

_output_shapes
: :

_output_shapes
: :&	"
 
_output_shapes
:
Ё.А:&
"
 
_output_shapes
:
Ё.А:&"
 
_output_shapes
:
АД:&"
 
_output_shapes
:
АД:&"
 
_output_shapes
:
БД:&"
 
_output_shapes
:
БД:!

_output_shapes	
:Д:!

_output_shapes	
:Д:&"
 
_output_shapes
:
мо:&"
 
_output_shapes
:
мо: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
■:
└
 __inference_standard_lstm_154240

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_154155*
condR
while_cond_154154*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╠
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  Б[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  БY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_daf45dfd-0347-4858-8175-df7a2fea3a1a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
Х	
┴
while_cond_155511
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_155511___redundant_placeholder04
0while_while_cond_155511___redundant_placeholder14
0while_while_cond_155511___redundant_placeholder24
0while_while_cond_155511___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         Б:         Б: ::::: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
╬:
└
 __inference_standard_lstm_152641

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_152556*
condR
while_cond_152555*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ─
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:м         Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:         мБ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_1:y:0*
T0*-
_output_shapes
:         мБY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_1946a85c-0bb1-4e75-9690-b63ca59f8f00*
api_preferred_deviceCPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
б

Ў
C__inference_dense_6_layer_call_and_return_conditional_losses_155901

inputs2
matmul_readvariableop_resource:
мо-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
мо*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         мо: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:         мо
 
_user_specified_nameinputs
░	
ж
G__inference_embedding_6_layer_call_and_return_conditional_losses_154038

inputs+
embedding_lookup_154032:
Ё.А
identityИвembedding_lookupV
CastCastinputs*

DstT0*

SrcT0*(
_output_shapes
:         м╜
embedding_lookupResourceGatherembedding_lookup_154032Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/154032*-
_output_shapes
:         мА*
dtype0д
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/154032*-
_output_shapes
:         мАГ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*-
_output_shapes
:         мАy
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*-
_output_shapes
:         мАY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:         м: 2$
embedding_lookupembedding_lookup:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
█
╛
B__inference_lstm_6_layer_call_and_return_conditional_losses_151439

inputs0
read_readvariableop_resource:
АД2
read_1_readvariableop_resource:
БД-
read_2_readvariableop_resource:	Д

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         БS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         БE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*5
_output_shapes#
!:                  Аf
mulMulinputsones_like:output:0*
T0*5
_output_shapes#
!:                  Аr
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АД*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БДq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Д└
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         Б:                  Б:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_151166w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:                  БМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
ЕM
д
'__forward_gpu_lstm_with_fallback_151436

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0┌
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  Бq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  Б[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_4941204e-9086-4766-bfd3-740a6c05f569*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_151261_151437*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
░A
╠
)__inference_gpu_lstm_with_fallback_154334

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╓
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ж
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  Бq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Бg

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  Б[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*{
_input_shapesj
h:                  А:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_daf45dfd-0347-4858-8175-df7a2fea3a1a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
А├
є
;__inference___backward_gpu_lstm_with_fallback_153356_153532
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бf
gradients/grad_ys_1Identityplaceholder_1*
T0*-
_output_shapes
:         мБa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:г
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*-
_output_shapes
:м         Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:╣
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:м         Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         Б√
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*-
_output_shapes
:м         Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Е
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*e
_output_shapesS
Q:м         А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╥
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:         мАu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Дt
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*-
_output_shapes
:         мАu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*°
_input_shapesц
у:         Б:         мБ:         Б:         Б: :м         Б::         Б:         Б::м         А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_301bd268-0493-4194-af09-6b37d73f1aba*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_153531*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:3/
-
_output_shapes
:         мБ:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :3/
-
_output_shapes
:м         Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::3
/
-
_output_shapes
:м         А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
 <
╛
B__inference_lstm_6_layer_call_and_return_conditional_losses_151913

inputs0
read_readvariableop_resource:
АД2
read_1_readvariableop_resource:
БД-
read_2_readvariableop_resource:	Д

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         БS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         БE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*5
_output_shapes#
!:                  АR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?~
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*5
_output_shapes#
!:                  АO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ъ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*5
_output_shapes#
!:                  А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=┤
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    б
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*5
_output_shapes#
!:                  АT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*5
_output_shapes#
!:                  АQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ю
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*5
_output_shapes#
!:                  А*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  АV
dropout_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    й
dropout_1/SelectV2SelectV2dropout_1/GreaterEqual:z:0dropout_1/Mul:z:0dropout_1/Const_1:output:0*
T0*5
_output_shapes#
!:                  АT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*5
_output_shapes#
!:                  АQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ю
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*5
_output_shapes#
!:                  А*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  АV
dropout_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    й
dropout_2/SelectV2SelectV2dropout_2/GreaterEqual:z:0dropout_2/Mul:z:0dropout_2/Const_1:output:0*
T0*5
_output_shapes#
!:                  АT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*5
_output_shapes#
!:                  АQ
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Ю
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*5
_output_shapes#
!:                  А*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  АV
dropout_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    й
dropout_3/SelectV2SelectV2dropout_3/GreaterEqual:z:0dropout_3/Mul:z:0dropout_3/Const_1:output:0*
T0*5
_output_shapes#
!:                  Аm
mulMulinputsdropout/SelectV2:output:0*
T0*5
_output_shapes#
!:                  Аr
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АД*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БДq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Д└
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         Б:                  Б:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_151640w

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*5
_output_shapes#
!:                  БМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  А: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:                  А
 
_user_specified_nameinputs
╬:
└
 __inference_standard_lstm_152100

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:╤
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         А*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Д_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Дe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ДT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ДQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :║
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         БW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         БT
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         БO
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         БV
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         БU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         БW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         БL
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         БZ
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         Бn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ╢
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╛
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*g
_output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_152015*
condR
while_cond_152014*f
output_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    Б   ─
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*-
_output_shapes
:м         Б*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ш
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*-
_output_shapes
:         мБ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_1:y:0*
T0*-
_output_shapes
:         мБY

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         БY

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_17499c23-7313-4a05-b62a-3d7f2feee6f2*
api_preferred_deviceCPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias
ў
О
(__inference_model_6_layer_call_fn_153097

inputs
unknown:
Ё.А
	unknown_0:
АД
	unknown_1:
БД
	unknown_2:	Д
	unknown_3:
мо
	unknown_4:
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_152970o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         м: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         м
 
_user_specified_nameinputs
┼
a
E__inference_flatten_6_layer_call_and_return_conditional_losses_155881

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ,Ч  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:         моZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:         мо"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:         мБ:U Q
-
_output_shapes
:         мБ
 
_user_specified_nameinputs
А├
є
;__inference___backward_gpu_lstm_with_fallback_153834_154010
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         Бf
gradients/grad_ys_1Identityplaceholder_1*
T0*-
_output_shapes
:         мБa
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         Бa
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         БO
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:г
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*-
_output_shapes
:м         Б*
shrink_axis_maskЬ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:╣
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:м         Бq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:е
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         Бu
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:й
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         Б√
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*-
_output_shapes
:м         Бc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Е
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*e
_output_shapesS
Q:м         А:         Б:         Б:МФЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╥
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*-
_output_shapes
:         мАu
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:╞
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         Бy
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:╩
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         Б^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: i
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:АБk
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:БВk
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:БВj
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Бj
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:Бk
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:Б°
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::э
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:АБё
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:БВё
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:БВЁ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:БЁ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:Бє
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:Бm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   г
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   А   й
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
БАo
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ББo
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"Б   Б   й
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ББi
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:Бi
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бд
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:Бj
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Бз
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:БЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╖
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╣
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╣
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╣
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
АБЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╣
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╣
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:╣
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББЬ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:╣
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ББч
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:И░
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
АД╢
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
БД\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Дh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Д╩
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::╥
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:Д╓
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Дt
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*-
_output_shapes
:         мАu

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бw

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         Бg

Identity_3Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
АДi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
БДd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:Д"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*°
_input_shapesц
у:         Б:         мБ:         Б:         Б: :м         Б::         Б:         Б::м         А:         Б:         Б:МФ::         Б:         Б: ::::::::: : : : *=
api_implements+)lstm_e7dd14ab-dca9-4720-9157-8ebd4be0080b*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_154009*
go_backwards( *

time_major( :. *
(
_output_shapes
:         Б:3/
-
_output_shapes
:         мБ:.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :3/
-
_output_shapes
:м         Б: 

_output_shapes
::2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:	

_output_shapes
::3
/
-
_output_shapes
:м         А:2.
,
_output_shapes
:         Б:2.
,
_output_shapes
:         Б:"

_output_shapes

:МФ: 

_output_shapes
::.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
╒(
╧
while_body_152015
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    А   з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         А*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ДГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         Дw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         Дp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ДW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╠
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         Б:         Б:         Б:         Б*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         Бm
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         Б[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         Бh
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         Бg
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         Бc
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         БX
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         Бl
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         Б╕
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         Б`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         Б"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*f
_input_shapesU
S: : : : :         Б:         Б: : :
АД:
БД:Д: 
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
: :.*
(
_output_shapes
:         Б:.*
(
_output_shapes
:         Б:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
АД:&	"
 
_output_shapes
:
БД:!


_output_shapes	
:Д
к
╛
B__inference_lstm_6_layer_call_and_return_conditional_losses_152373

inputs0
read_readvariableop_resource:
АД2
read_1_readvariableop_resource:
БД-
read_2_readvariableop_resource:	Д

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бs
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         БS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Бw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         БE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?}
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*-
_output_shapes
:         мА^
mulMulinputsones_like:output:0*
T0*-
_output_shapes
:         мАr
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
АД*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
АДv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
БД*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
БДq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:Д*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Д╕
PartitionedCallPartitionedCallmul:z:0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *k
_output_shapesY
W:         Б:         мБ:         Б:         Б: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference_standard_lstm_152100o

Identity_3IdentityPartitionedCall:output:1^NoOp*
T0*-
_output_shapes
:         мБМ
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         мА: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs
 @
╠
)__inference_gpu_lstm_with_fallback_153833

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          o
	transpose	Transposeinputstranspose/perm:output:0*
T0*-
_output_shapes
:м         АP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         БR
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         БQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
splitSplitsplit/split_dim:output:0kernel*
T0*D
_output_shapes2
0:
АБ:
АБ:
АБ:
АБ*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ББ:
ББ:
ББ:
ББ*
	num_splitY

zeros_likeConst*
_output_shapes	
:Д*
dtype0*
valueBД*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ИS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : е
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:Б:Б:Б:Б:Б:Б:Б:Б*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0* 
_output_shapes
:
БАZ
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0* 
_output_shapes
:
БА\
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:АБa
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:БВa
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ББ\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:БВ\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:Б\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:Б]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:БO
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : а
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:МФ╬
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*a
_output_shapesO
M:м         Б:         Б:         Б:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         Б*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*-
_output_shapes
:         мБq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         Б*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         Б_

Identity_1Identitytranspose_9:y:0*
T0*-
_output_shapes
:         мБ[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         Б]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         БI

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*s
_input_shapesb
`:         мА:         Б:         Б:
АД:
БД:Д*=
api_implements+)lstm_e7dd14ab-dca9-4720-9157-8ebd4be0080b*
api_preferred_deviceGPU*
go_backwards( *

time_major( :U Q
-
_output_shapes
:         мА
 
_user_specified_nameinputs:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         Б
 
_user_specified_nameinit_c:HD
 
_output_shapes
:
АД
 
_user_specified_namekernel:RN
 
_output_shapes
:
БД
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:Д

_user_specified_namebias"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*л
serving_defaultЧ
<
input_71
serving_default_input_7:0         м;
dense_60
StatefulPartitionedCall:0         tensorflow/serving/predict:ёк
Є
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
╡
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
е
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
╗
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses

+kernel
,bias"
_tf_keras_layer
J
0
-1
.2
/3
+4
,5"
trackable_list_wrapper
J
0
-1
.2
/3
+4
,5"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
0non_trainable_variables

1layers
2metrics
3layer_regularization_losses
4layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╒
5trace_0
6trace_1
7trace_2
8trace_32ъ
(__inference_model_6_layer_call_fn_152422
(__inference_model_6_layer_call_fn_153080
(__inference_model_6_layer_call_fn_153097
(__inference_model_6_layer_call_fn_153002┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z5trace_0z6trace_1z7trace_2z8trace_3
┴
9trace_0
:trace_1
;trace_2
<trace_32╓
C__inference_model_6_layer_call_and_return_conditional_losses_153543
C__inference_model_6_layer_call_and_return_conditional_losses_154021
C__inference_model_6_layer_call_and_return_conditional_losses_153022
C__inference_model_6_layer_call_and_return_conditional_losses_153042┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z9trace_0z:trace_1z;trace_2z<trace_3
╠B╔
!__inference__wrapped_model_151004input_7"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ь
=
_variables
>_iterations
?_learning_rate
@_index_dict
A
_momentums
B_velocities
C_update_step_xla"
experimentalOptimizer
,
Dserving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ё
Jtrace_02╙
,__inference_embedding_6_layer_call_fn_154028в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zJtrace_0
Л
Ktrace_02ю
G__inference_embedding_6_layer_call_and_return_conditional_losses_154038в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zKtrace_0
*:(
Ё.А2embedding_6/embeddings
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

Lstates
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ц
Rtrace_0
Strace_1
Ttrace_2
Utrace_32√
'__inference_lstm_6_layer_call_fn_154049
'__inference_lstm_6_layer_call_fn_154060
'__inference_lstm_6_layer_call_fn_154071
'__inference_lstm_6_layer_call_fn_154082╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
╥
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32ч
B__inference_lstm_6_layer_call_and_return_conditional_losses_154513
B__inference_lstm_6_layer_call_and_return_conditional_losses_154976
B__inference_lstm_6_layer_call_and_return_conditional_losses_155407
B__inference_lstm_6_layer_call_and_return_conditional_losses_155870╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
"
_generic_user_object
°
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`_random_generator
a
state_size

-kernel
.recurrent_kernel
/bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
ю
gtrace_02╤
*__inference_flatten_6_layer_call_fn_155875в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zgtrace_0
Й
htrace_02ь
E__inference_flatten_6_layer_call_and_return_conditional_losses_155881в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zhtrace_0
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
ь
ntrace_02╧
(__inference_dense_6_layer_call_fn_155890в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zntrace_0
З
otrace_02ъ
C__inference_dense_6_layer_call_and_return_conditional_losses_155901в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zotrace_0
": 
мо2dense_6/kernel
:2dense_6/bias
-:+
АД2lstm_6/lstm_cell_7/kernel
7:5
БД2#lstm_6/lstm_cell_7/recurrent_kernel
&:$Д2lstm_6/lstm_cell_7/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
(__inference_model_6_layer_call_fn_152422input_7"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
(__inference_model_6_layer_call_fn_153080inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
(__inference_model_6_layer_call_fn_153097inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
(__inference_model_6_layer_call_fn_153002input_7"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
C__inference_model_6_layer_call_and_return_conditional_losses_153543inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ФBС
C__inference_model_6_layer_call_and_return_conditional_losses_154021inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
C__inference_model_6_layer_call_and_return_conditional_losses_153022input_7"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
C__inference_model_6_layer_call_and_return_conditional_losses_153042input_7"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
~
>0
r1
s2
t3
u4
v5
w6
x7
y8
z9
{10
|11
}12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
J
r0
t1
v2
x3
z4
|5"
trackable_list_wrapper
J
s0
u1
w2
y3
{4
}5"
trackable_list_wrapper
┐2╝╣
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
╦B╚
$__inference_signature_wrapper_153063input_7"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
рB▌
,__inference_embedding_6_layer_call_fn_154028inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
√B°
G__inference_embedding_6_layer_call_and_return_conditional_losses_154038inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПBМ
'__inference_lstm_6_layer_call_fn_154049inputs_0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
'__inference_lstm_6_layer_call_fn_154060inputs_0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
'__inference_lstm_6_layer_call_fn_154071inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
НBК
'__inference_lstm_6_layer_call_fn_154082inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
кBз
B__inference_lstm_6_layer_call_and_return_conditional_losses_154513inputs_0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
кBз
B__inference_lstm_6_layer_call_and_return_conditional_losses_154976inputs_0"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
иBе
B__inference_lstm_6_layer_call_and_return_conditional_losses_155407inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
иBе
B__inference_lstm_6_layer_call_and_return_conditional_losses_155870inputs"╘
╦▓╟
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
-0
.1
/2"
trackable_list_wrapper
5
-0
.1
/2"
trackable_list_wrapper
 "
trackable_list_wrapper
░
~non_trainable_variables

layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
├2└╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
├2└╜
┤▓░
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_flatten_6_layer_call_fn_155875inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_flatten_6_layer_call_and_return_conditional_losses_155881inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
▄B┘
(__inference_dense_6_layer_call_fn_155890inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_dense_6_layer_call_and_return_conditional_losses_155901inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
Г	variables
Д	keras_api

Еtotal

Жcount"
_tf_keras_metric
c
З	variables
И	keras_api

Йtotal

Кcount
Л
_fn_kwargs"
_tf_keras_metric
/:-
Ё.А2Adam/m/embedding_6/embeddings
/:-
Ё.А2Adam/v/embedding_6/embeddings
2:0
АД2 Adam/m/lstm_6/lstm_cell_7/kernel
2:0
АД2 Adam/v/lstm_6/lstm_cell_7/kernel
<::
БД2*Adam/m/lstm_6/lstm_cell_7/recurrent_kernel
<::
БД2*Adam/v/lstm_6/lstm_cell_7/recurrent_kernel
+:)Д2Adam/m/lstm_6/lstm_cell_7/bias
+:)Д2Adam/v/lstm_6/lstm_cell_7/bias
':%
мо2Adam/m/dense_6/kernel
':%
мо2Adam/v/dense_6/kernel
:2Adam/m/dense_6/bias
:2Adam/v/dense_6/bias
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
0
Е0
Ж1"
trackable_list_wrapper
.
Г	variables"
_generic_user_object
:  (2total
:  (2count
0
Й0
К1"
trackable_list_wrapper
.
З	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperУ
!__inference__wrapped_model_151004n-./+,1в.
'в$
"К
input_7         м
к "1к.
,
dense_6!К
dense_6         м
C__inference_dense_6_layer_call_and_return_conditional_losses_155901e+,1в.
'в$
"К
inputs         мо
к ",в)
"К
tensor_0         
Ъ Ж
(__inference_dense_6_layer_call_fn_155890Z+,1в.
'в$
"К
inputs         мо
к "!К
unknown         ┤
G__inference_embedding_6_layer_call_and_return_conditional_losses_154038i0в-
&в#
!К
inputs         м
к "2в/
(К%
tensor_0         мА
Ъ О
,__inference_embedding_6_layer_call_fn_154028^0в-
&в#
!К
inputs         м
к "'К$
unknown         мА░
E__inference_flatten_6_layer_call_and_return_conditional_losses_155881g5в2
+в(
&К#
inputs         мБ
к ".в+
$К!
tensor_0         мо
Ъ К
*__inference_flatten_6_layer_call_fn_155875\5в2
+в(
&К#
inputs         мБ
к "#К 
unknown         мо┌
B__inference_lstm_6_layer_call_and_return_conditional_losses_154513У-./PвM
FвC
5Ъ2
0К-
inputs_0                  А

 
p 

 
к ":в7
0К-
tensor_0                  Б
Ъ ┌
B__inference_lstm_6_layer_call_and_return_conditional_losses_154976У-./PвM
FвC
5Ъ2
0К-
inputs_0                  А

 
p

 
к ":в7
0К-
tensor_0                  Б
Ъ ┬
B__inference_lstm_6_layer_call_and_return_conditional_losses_155407|-./Aв>
7в4
&К#
inputs         мА

 
p 

 
к "2в/
(К%
tensor_0         мБ
Ъ ┬
B__inference_lstm_6_layer_call_and_return_conditional_losses_155870|-./Aв>
7в4
&К#
inputs         мА

 
p

 
к "2в/
(К%
tensor_0         мБ
Ъ ┤
'__inference_lstm_6_layer_call_fn_154049И-./PвM
FвC
5Ъ2
0К-
inputs_0                  А

 
p 

 
к "/К,
unknown                  Б┤
'__inference_lstm_6_layer_call_fn_154060И-./PвM
FвC
5Ъ2
0К-
inputs_0                  А

 
p

 
к "/К,
unknown                  БЬ
'__inference_lstm_6_layer_call_fn_154071q-./Aв>
7в4
&К#
inputs         мА

 
p 

 
к "'К$
unknown         мБЬ
'__inference_lstm_6_layer_call_fn_154082q-./Aв>
7в4
&К#
inputs         мА

 
p

 
к "'К$
unknown         мБ╕
C__inference_model_6_layer_call_and_return_conditional_losses_153022q-./+,9в6
/в,
"К
input_7         м
p 

 
к ",в)
"К
tensor_0         
Ъ ╕
C__inference_model_6_layer_call_and_return_conditional_losses_153042q-./+,9в6
/в,
"К
input_7         м
p

 
к ",в)
"К
tensor_0         
Ъ ╖
C__inference_model_6_layer_call_and_return_conditional_losses_153543p-./+,8в5
.в+
!К
inputs         м
p 

 
к ",в)
"К
tensor_0         
Ъ ╖
C__inference_model_6_layer_call_and_return_conditional_losses_154021p-./+,8в5
.в+
!К
inputs         м
p

 
к ",в)
"К
tensor_0         
Ъ Т
(__inference_model_6_layer_call_fn_152422f-./+,9в6
/в,
"К
input_7         м
p 

 
к "!К
unknown         Т
(__inference_model_6_layer_call_fn_153002f-./+,9в6
/в,
"К
input_7         м
p

 
к "!К
unknown         С
(__inference_model_6_layer_call_fn_153080e-./+,8в5
.в+
!К
inputs         м
p 

 
к "!К
unknown         С
(__inference_model_6_layer_call_fn_153097e-./+,8в5
.в+
!К
inputs         м
p

 
к "!К
unknown         б
$__inference_signature_wrapper_153063y-./+,<в9
в 
2к/
-
input_7"К
input_7         м"1к.
,
dense_6!К
dense_6         