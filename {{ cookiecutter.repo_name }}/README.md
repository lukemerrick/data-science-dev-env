{{cookiecutter.project_name}}
==============================

{{cookiecutter.description}}


## Getting Started
1. Install Docker: 
    - For Mac: https://store.docker.com/editions/community/docker-ce-desktop-mac
    - For Windows: https://store.docker.com/editions/community/docker-ce-desktop-windows
    - For Linux: Go to this page and choose the appropriate install for your Linux distro: https://www.docker.com/community-edition
2. Install Docker Compose (https://docs.docker.com/compose/install/#install-compose):
3. Start the Docker container:
    ``` bash
    $ make start
    ```
4. After the project image builds check which host port is being forwarded to the Jupyter notebook server inside the running container:
    ``` bash
    $ docker ps 
    ```
5. Using any browser access jupyter lab at localhost:{port}
6. Start working!
7. Shut down the docker image
    ``` bash
    $ make stop
    ```

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
