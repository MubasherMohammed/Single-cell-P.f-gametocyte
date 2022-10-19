#!/bin/bash
#SBATCH -A snic2021-22-492
#SBATCH -p core 
#SBATCH -n 5
#SBATCH -t 0-3:00:00
#SBATCH -J 10x_bigwig
#SBATCH --mail-user mubasher.mohammed@su.se
#SBATCH -o /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/stdout.%j
#SBATCH -e /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/stderr.%j
#SBATCH --mail-type=ALL
#SBATCH --tmp=20480

module load bioinfo-tools
module load deepTools/3.1.0





   bamCoverage -b /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/clus_bam/1.bam  -o coverage_1.bw   
 #--outFileFormat bigwig \
 #--normalizeUsing RPKM
 #--ignoreDuplicates \
 #--scaleFactor 0.5 

 



