{{cookiecutter.project_name}}
==============================

{{cookiecutter.description}}

Project Organization
------------

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── misc           <- Miscellaneous data stuff that does not fit in "raw" or "processed"
    │   ├── processed      <- Data programatically derived from the raw data.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── saved_models       <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0-jqp-initial-data-exploration`.
    │
    ├── references         <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts/tools to download or generate data or engineer features
    │   │   └── make_dataset.py
    │   │
    │   └── learn          <- Scripts/tools to train/evaluate/execute/tune models and handle
    │                         other learning actions
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.testrun.org


--------
