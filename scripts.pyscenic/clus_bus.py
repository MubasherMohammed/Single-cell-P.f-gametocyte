from Bio import motifs
import os
from pathlib import Path
import numpy as np
from Bio.motifs import matrix
## use  3) python/3.8.7   4) biopython/1.78

>>> with open("/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/converted_motifs.txt", 'rt') as fh:
...     jms = motifs.parse(fh, "JASPAR")
... 
>>> print(jms[0].matrix_id)
>>> print(jms[0].name)
>>> print(jms[0].counts)
>>> print(format(jms[0], "clusterbuster"))


>>> print(mjs[0].name)
PF07_0126_DLD
>>> print(jms[0].counts)
>>> print(format(jms[0], "clusterbuster"))
>>>  outdir = Path('/proj/snic2020-16-146/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/muba/scenic_data/motifs_cb_format')
>>> os.mkdir(outdir)
>>> for jm in jms:
...         motiffile = outdir.joinpath(str(jm.matrix_id + '.cb'))
...         with open(motiffile, 'wt') as fh:
...                 fh.write(format(jm, "clusterbuster"))
... 


