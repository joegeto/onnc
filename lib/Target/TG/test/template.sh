#!/bin/bash -ex
onnx_as=$1
onnx2tg=$2
$onnx_as ${asm_name} -o ${onnx_name}
$onnx2tg ${onnx_name} -march ${OPT_MARCH} -print-machineinstrs ${OPT_ONNX2TG_ARGS} | tee ${log_name} | FileCheck ${asm_name}