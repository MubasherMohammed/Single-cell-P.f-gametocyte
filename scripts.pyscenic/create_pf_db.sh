## use dirs: 

create_cistarget_databases_dir='/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/create_cisTarget_databases'
fasta_filename="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/target-genes.fa"
motifs_dir="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/motifs_cb_format/"
motifs_list_filename="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/motifs.lst"
db_prefix="test"
original_species_fasta_filename='/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/pf_up_TSS_1500.fa'
 nbr_threads=60


python ${create_cistarget_databases_dir}/create_cistarget_motif_databases.py \
>     -f "${fasta_filename}" \
>     -F "${original_species_fasta_filename}" \
>     -M "${motifs_dir}" \
>     -m "${motifs_list_filename}" \
>     -o "${db_prefix}" \
>     -t "${nbr_threads}"
>     -g "region_id@@gene_id" 


