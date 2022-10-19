working...

FEATHER="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/pf-cis-target-db/P.falciparum_cis-targetdb.genes_vs_motifs.rankings.feather"
ANNOS="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/annotation_v1.tsv"
LOOM_FILE="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/filered_matrix.csv"
OUT="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/SCENIC-reg10x_v1.csv"

pyscenic ctx  grn_adj_v2.csv  $FEATHER  --annotations_fname $ANNOS  --expression_mtx_fname $LOOM_FILE   --mode "dask_multiprocessing"  --output $OUT  --num_workers 20   -t -n -a  --rank_threshold 500 --top_n_targets 100 --top_n_regulators 5  --min_genes 2



pyscenic ctx  grn_adj.csv  $FEATHER  --annotations_fname $ANNOS  --expression_mtx_fname $LOOM_FILE   --mode "custom_multiprocessing"  --output $OUT  --num_workers 20   -t -n -a  --rank_threshold 500 --top_n_targets 100 --top_n_regulators 5  --min_genes 2


 






FEATHER="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/pf-cis-target-db/P.falciparum_cis-targetdb.genes_vs_motifs.rankings.feather"
ANNOS="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/anno_file_for_pyscenic.tsv"
LOOM_FILE="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/matrix.csv"
OUT="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/SCENIC-reg10x.csv"




working.. 

 pyscenic ctx  grn_adj.csv  $FEATHER  --annotations_fname $ANNOS  --expression_mtx_fname $LOOM_FILE   --mode "custom_multiprocessing"  --output $OUT  --num_workers 20   -t -n -a  --rank_threshold 500 --top_n_targets 100 --top_n_regulators 20  --min_genes 50 










pyscenic ctx  grn_adj.csv  $FEATHER  --annotations_fname $ANNOS  --expression_mtx_fname $LOOM_FILE   --mode "custom_multiprocessing"  --output $OUT  --num_workers 20   -t -n -a
