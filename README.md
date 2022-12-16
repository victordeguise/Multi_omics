# Multi_omics

## Summary :

This GitHub repository aims at producing interactive visualizations, analyses and integration of multi-omics data.
This data is the result of transcriptomic and proteomic experiments on dental pulp mesenchymal stem cell growth.

To view the results you can click on the button below or clone the repository and launch ```script.ipynb``` or ```gsea.ipynb``` on your computer :

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/victordeguise/Multi_omics/HEAD?urlpath=%2Fvoila%2Frender%2FScript.ipynb)

[https://mybinder.org/v2/gh/victordeguise/Multi_omics/HEAD?urlpath=%2Fvoila%2Frender%2FScript.ipynb](https://mybinder.org/v2/gh/victordeguise/Multi_omics/HEAD?urlpath=%2Fvoila%2Frender%2FScript.ipynb)

If you belong to Lyon1, you can access to iCap server via this link : https://momics.univ-lyon1.fr 

## Notebooks:
- ```script.ipynb``` : Interactive visualisations, currently accessible under the Binder link above, includes: 
  - Volcano plots for proteomic and transcriptomic datasets by experience
  - Sortable tables for each experience with filters
  - Venn diagram comparing gene symbols appearing in the different datasets
- ```gsea.ipynb``` : Enrichment analysis, includes:
  - dotplots for Gene Ontology pathways
  - Sortable tables for each experience with filters


## Requirements <a name="requirements.txt"></a>

### Python 3 librairies:

* adjusttext
* contourpy
* cycler
* fonttools
* importlib-metadata
* ipywidgets
* itables
* jupyter-core
* jupyterlab-widgets
* kiwisolver
* matplotlib
* matplotlib-venn
* mistune
* nbconvert
* pillow
* platformdirs
* scipy
* seaborn
* tinycss2
* traitlets
* voila
* websockets
* widgetsnbextension
* zipp


## How to analyse your files ?

You can put your transcriptomics files or your proteomics files into the repositories. Look the headers of the ".txt" files to know how your file should be. Warning : if your file has the wrong header format, it will probably not work. 
