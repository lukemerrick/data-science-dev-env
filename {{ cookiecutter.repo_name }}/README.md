{{cookiecutter.repo_name}}
==============================

## Warning: Docker In Development
Please note that the dockerized experience is currently in development. Many commands in the
Makefile may not work properly, CPU/GPU issues may exist, etc.

## Dockerfile Setup
If no Dockerfile has been generated (i.e. there is no file `docker/Dockerfile`) or if you
would like to re-generate the file to user newer verssions of GPU drivers or deep learning
libraries, run the Dockerfie generation command. You should commit this to version control once you create or update it.
``` bash
$ make dockerfile
```

## Getting Started
1. Install Docker: 
    - For Mac: https://store.docker.com/editions/community/docker-ce-desktop-mac
    - For Windows: https://store.docker.com/editions/community/docker-ce-desktop-windows
    - For Linux: Go to this page and choose the appropriate install for your Linux distro: https://www.docker.com/community-edition
2. Install Docker Compose (https://docs.docker.com/compose/install/#install-compose)
3. (Only if the host has a GPU) Install nvidia-docker2 (https://github.com/nvidia/nvidia-docker/wiki/Installation-(version-2.0).
4. Start the Docker container:
    ``` bash
    $ make start
    ```
5. Using any browser access Jupyter lab at `localhost:8888/lab` (or stick to the 
old Jupyter notebook tool by visiting `localhost:8888/tree`)
6. Start working!
7. Shut down the docker image
    ``` bash
    $ make stop
    ```
    
## Modifying Requirements

#### Installing Python Packages
If you just need to add a python requirement, you can add that to the `requirements.txt` file
and rebuild the Docker image without needing to regenerate the Dockerfile. If versions are not
explicitly managed in the requirements file, rebuilding the Docker image may cause some packages
to be updated since the install will likely default to the most recent version, so do be careful
to specify version numbers in `requirements.txt` if this might cause issues for you.
``` bash
$ make build
```

#### Deep Learning Frameworks
If you need to install a new deep learning framework or change the CUDA/CUDNN version used,
edit `deep_learning_requirements.txt` file, then regenerate the Dockerfile. Lastly, rebuild
the docker image. If you regenerate the Dockerfile, the versions of the deep learning
frameworks installed may be updated automatically. If that update would be problematic for you,
you will instead need to edit the Dockerfile by hand instead.

``` bash
$ make dockerfile build
```


***Note: if you change project requirements and/or regenerate the Dockerfile, be sure to commit your
changes to these files in git!***

Project Organization
------------

    ├── LICENSE
    ├── Makefile                         <- Makefile with commands like `make data` or `make train`
    ├── README.md                        <- The top-level README for developers using this project.
    ├── data
    │   ├── misc                         <- Miscellaneous data stuff that does not fit in "raw" or "processed"
    │   ├── processed                    <- Data programatically derived from the raw data.
    │   └── raw                          <- The original, immutable data dump.
    │
    ├── saved_models                     <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks                        <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                                       the creator's initials, and a short `-` delimited description, e.g.
    │                                       `1.0-jqp-initial-data-exploration`.
    │
    ├── references                       <- Data dictionaries, manuals, and all other explanatory materials.
    │
    ├── reports                          <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures                      <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt                 <- The requirements file for reproducing the analysis environment, e.g.
    │                                       generated with `pip freeze > requirements.txt`
    │
    ├── deep_learning_requirements.txt   <- A requirements file specifically for the deep learning libraries
    │                                       and GPU drivers installed
    │
    ├── src                              <- Source code for use in this project.
    │   ├── __init__.py                  <- Makes src a Python module
    │   │
    │   ├── data                         <- Scripts/tools to download or generate data or engineer features
    │   │   └── make_dataset.py
    │   │
    │   └── learn                        <- Scripts/tools to train/evaluate/execute/tune models and handle
    │                                       other learning actions
    │
    └── tox.ini                          <- tox file with settings for running tox; see tox.testrun.org


--------
