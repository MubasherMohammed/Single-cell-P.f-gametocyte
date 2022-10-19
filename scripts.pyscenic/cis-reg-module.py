## in python after pyscenic conda activation
import seaborn as sns
from pyscenic.aucell import aucell
from pyscenic.prune import prune2df, df2regulons
from pyscenic.utils import modules_from_adjacencies
from pyscenic.rnkdb import FeatherRankingDatabase as RankingDatabase
from arboreto.algo import grnboost2
from arboreto.utils import load_tf_names
import pickle
import os, glob
import numpy as np
import pandas as pd

#load dirs
DATA_FOLDER="/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data"
DATABASE_FOLDER = "/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/pf-cis-target-db"
DATABASES_GLOB = os.path.join(DATABASE_FOLDER, "*.feather")
MM_TFS_FNAME = os.path.join(DATA_FOLDER, 'TF.txt')
ex_matrix = pd.read_csv("filered_matrix.csv", header=0, index_col=0).T
ADJACENCIES_FNAME = os.path.join(DATA_FOLDER, "grn_adj.csv")
MOTIFS_FNAME = os.path.join(DATA_FOLDER, "motifs.lst")
adjancencies = pd.read_csv(ADJACENCIES_FNAME)
annos = pd.read_table('annos.tbl')

adjancencies.head()
ex_matrix.shape

## top 50 modules
 modules = list(modules_from_adjacencies(adjancencies, ex_matrix))

db_fnames = glob.glob(DATABASES_GLOB)
>>> def name(fname):
...     return os.path.splitext(os.path.basename(fname))[0]
... 
>>> dbs = [RankingDatabase(fname=fname, name=name(fname)) for fname in db_fnames]
>>> dbs











