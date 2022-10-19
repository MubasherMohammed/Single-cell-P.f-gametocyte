#!/bin/bash
#SBATCH -A snic2021-22-492
#SBATCH -p node 
#SBATCH -C fat
#SBATCH -t 0-10:00:00
#SBATCH -J 10x_GRN
#SBATCH --mail-user mubasher.mohammed@su.se
#SBATCH -o /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/stdout.%j
#SBATCH -e /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/stderr.%j
#SBATCH --mail-type=ALL
#SBATCH --tmp=20480

module load bioinfo-tools
source ~/home/mubasher/.conda/envs/pyscenic 
conda activate pyscenic 

if ! command -v pyscenic &> /dev/null
then
        echo "PYSCENIC could not be found, activate conda env"
	    exit
	fi

LOOM_FILE="/crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/Sc_10x_gams.loom"
TF_FILE="/crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/TF.txt"
OUT="/crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/SCENIC_adj_GRN_10xgams.csv"
LOGS="/crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/logs/"

if test -f "$LOGS/10x_GRN.out"; then
    rm $LOGS/10x_GRN.out
    rm $LOGS/10x_GRN.err
fi

bsub -o $LOGS/10x_GRN.out -e $LOGS/10x_GRN.err -M 80000 -n 24 pyscenic grn $LOOM_FILE $TF_FILE -o $OUT --num_workers 20








