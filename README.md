Reproducible Engineering
========================

A boilerplate for reproducible and transparent engineering with close resemblances to the philosophy of [Cookiecutter Data Science](https://github.com/mkrapp/cookiecutter-reproducible-science): *A logical, reasonably standardized, but flexible project structure for doing and sharing science work.*

Requirements
------------
Install `cookiecutter` command line: `pip install cookiecutter`    

Usage
-----
To start a new science project:

`cookiecutter gh:mkrapp/cookiecutter-reproducible-engineering`

Project Structure
-----------------

```
.
├── AUTHORS.md
├── LICENSE
├── README.md
├── 0_research              <- Documentation, e.g., doxygen or scientific papers (not tracked by git)
├── 1_configuration          <- Configuration files for testing
    ├── instrumentation     <- Configuration files for instrumentation
    ├── doxygen             <- Configuration file for doxgen
    ├── models              <- Configuration files for software models
├── 2_data
│   ├── test_1              <- Data from test 1.
│       ├── external        <- Data from third party sources.
│       ├── interim         <- Intermediate data that has been transformed.
│       ├── processed       <- The final, canonical data sets for modeling.
│       └── raw             <- he original, immutable data dump.
│   └── test_2...           <- Data from test 2.
├── 3_media
│   ├── photographs         <- Photographs of the test setup and results
│   ├── video               <- Video of tests
└── 4_analysis              <- Analysis for this project
│   ├── test_1              <- Analysis of test data 1
│       ├── notebooks       <- Jupyter or R notebooks
│       ├── external        <- Any external source code, e.g., pull other git projects, or external libraries
│       ├── models          <- Source code for your own model
│       ├── tools           <- Any helper scripts go here
│       └── visualization   <- Scripts for visualisation of your results, e.g., matplotlib, ggplot2 related.
│   └── test_2...
├── reports                 <- For a manuscript source, e.g., LaTeX, Markdown, etc., or any project reports
│   ├── bibliogrpahy        <- Bibliography file, e.g., bibtex, Mendeley, Papers.
│   └── figures              <- Figures for the manuscript or reports
├── presentations           <- For a presentation source, e.g., Jupyter notebook, Keynote, etc., or any project presentations
```


License
-------
This project is licensed under the terms of the [BSD License](/LICENSE)
