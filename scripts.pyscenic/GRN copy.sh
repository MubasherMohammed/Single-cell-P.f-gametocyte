#!/bin/bash
#SBATCH -A snic2021-22-492
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 12:00:00
#SBATCH -J GRN_10x
 
if ! command -v pyscenic &> /dev/null
then
        echo "PYSCENIC could not be found, activate conda env"
	    exit
	fi


pyscenic grn  LOOM_FILE="/crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/Sc_10x_gams.loom"
TF_FILE="/crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/TF.txt"
OUT="/crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/SCENIC_adj_GRN_10xgams.csv"
LOGS="/crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/logs/"

if test -f "$LOGS/10x_GRN.out"; then
    rm $LOGS/10x_GRN.out
    rm $LOGS/10x_GRN.err
fi

