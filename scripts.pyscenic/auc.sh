


LOOM_FILE="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/filtered_matrix.tsv"
TF_FILE="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/TF.txt"
REG="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/SCENIC-reg10x_v1.csv"
OUT="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data//SCENIC_OUT_10x.loom"


working
pyscenic aucell   filtered_matrix.csv   SCENIC-reg10x_v1.csv  -o SCENIC-10X_auc_mtx_v1.csv --num_workers 20 --t

pyscenic aucell   filtered_matrix.tsv   SCENIC-reg10x_v1.csv  -o SCENIC-10X_auc_mtx_v1.loom --num_workers 20 --t



pyscenic aucell   matrix.csv   SCENIC-reg10x.csv  -o SCENIC-10X_auc_mtx.csv --num_workers 6 --t 




pyscenic aucell \
    {f_loom_path_scenic} \
    reg.csv \
    --output {f_pyscenic_output} \
    --num_workers 20
