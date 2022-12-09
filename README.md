# Multi_omics

## Summary :

This GitHub repository aims at producing interactive visualizations, analyses and integration of multi-omics data.
This data is the result of transcriptomic and proteomic experiments on dental pulp mesenchymal stem cell growth.

To view the results you can click on the button below :

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/victordeguise/Multi_omics/HEAD?urlpath=%2Fvoila%2Frender%2FScript.ipynb)

[https://mybinder.org/v2/gh/victordeguise/Multi_omics/HEAD?urlpath=%2Fvoila%2Frender%2FScript.ipynb](https://mybinder.org/v2/gh/victordeguise/Multi_omics/HEAD?urlpath=%2Fvoila%2Frender%2FScript.ipynb)


## Notebooks:
- **script.ipynb** : Interactive visualisations, currently accessible under the Binder link above, includes: 
  - Volcano plots for proteomic and transcriptomic datasets by experience
  - Sortable tables for each experience with filters
  - Venn diagram comparing gene symbols appearing in the different datasets
- **gsea.ipynb** : Enrichment analysis, includes:
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
