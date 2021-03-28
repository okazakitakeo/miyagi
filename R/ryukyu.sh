#!/bin/bash

# 引数：出力ディレクトリ名

dir_name=$1
input_file="../data/${dir_name}/input.csv"
output_dir="../data/${dir_name}"

cd r

# MSA
echo "MSA LD"
Rscript execution/execution_msa.R "ld" "$input_file" "$output_dir" "T" >/dev/null
echo

echo "MSA PMI"
Rscript execution/execution_msa.R "pmi" "$input_file" "$output_dir" "T" >/dev/null
echo

echo "MSA PF-PMI1"
Rscript execution/execution_msa.R "pf-pmi1" "$input_file" "$output_dir" "T" >/dev/null
echo

echo "MSA PF-PMI2"
Rscript execution/execution_msa.R "pf-pmi2" "$input_file" "$output_dir" "T" >/dev/null
echo

echo "MSA PF-PMI3"
Rscript execution/execution_msa.R "pf-pmi3" "$input_file" "$output_dir" "T" >/dev/null
