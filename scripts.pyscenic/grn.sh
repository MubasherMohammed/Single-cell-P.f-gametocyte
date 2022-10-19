#!/bin/bash
# Make sure the right conda env is activated
if ! command -v pyscenic &> /dev/null
then
        echo "PYSCENIC could not be found, activate conda env"
	    exit
	fi
DATA_FOLDER="./scenic_data/"



working..
DATA_FOLDER="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data"

pyscenic grn --num_workers 10 "${DATA_FOLDER}/filered_matrix.csv" -t  "${DATA_FOLDER}/TF.txt" -o "${DATA_FOLDER}/grn_adj_v1.csv"




#pyscenic grn --num_workers 10 "${DATA_FOLDER}/Sc_10x_gams.loom" "${DATA_FOLDER}/TF.txt" -o "${DATA_FOLDER}/grn_adj.csv"


