Youtube-Comments-Analysis
==============================

Chrome plugin to detect youtube comment sentiments

Project Organization
------------

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- Trained and serialized models, model predictions, or model summaries
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
    ├── setup.py           <- makes project pip installable (pip install -e .) so src can be imported
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.readthedocs.io


--------

<p><small>Project based on the <a target="_blank" href="https://drivendata.github.io/cookiecutter-data-science/">cookiecutter data science project template</a>. #cookiecutterdatascience</small></p>
# YouTube Comments Analysis (Chrome Plugin + MLOps Backend)

A full-stack **YouTube Comments Analytics system** that performs **sentiment analysis and visual analytics** on YouTube comments.

The project combines:

- **Machine Learning** for sentiment classification
- **Flask API** for real-time inference
- **DVC + MLflow** for experiment tracking and model management
- **Docker** for containerized deployment
- **AWS CodeDeploy + ECR** for automated deployment
- Designed to integrate with a **Chrome Extension frontend**

This project demonstrates **end-to-end MLOps + ML deployment** for real-world NLP applications.

---

# Project Overview

YouTube videos often receive thousands of comments. Analyzing sentiment manually is impossible.

This system automatically:

- Classifies comment sentiment
- Generates analytics charts
- Extracts common words
- Tracks sentiment trends over time

The backend is exposed via a **REST API** which can be used by:

- Chrome extensions
- Web dashboards
- Data pipelines
- External applications

---

# Features

### Sentiment Analysis
Classifies comments into:

- Positive
- Neutral
- Negative

---

### Comment Analytics

The API generates:

- Sentiment distribution charts
- Word clouds
- Sentiment trend graphs

---

### Reproducible ML Pipeline

Training pipeline managed using **DVC**:

- Data ingestion
- Data preprocessing
- Model training
- Model evaluation
- Model registration

---

### MLflow Integration

- Tracks experiments
- Logs metrics
- Logs artifacts
- Registers models
- Serves models for inference

---

### Dockerized Inference API

Flask API runs inside Docker container for:

- reproducibility
- scalability
- cloud deployment

---

### AWS Deployment Ready

Supports deployment using:

- AWS ECR
- AWS CodeDeploy
- EC2

---

# Architecture
<img width="1562" height="931" alt="image" src="https://github.com/user-attachments/assets/8625e29c-3a10-48cd-962b-b1a93efe1eae" />
