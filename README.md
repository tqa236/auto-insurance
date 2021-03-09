# Auto insurance

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/tqa236/auto-insurance/blob/main/Train.ipynb)
[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/tqa236/auto-insurance/HEAD?filepath=Train.ipynb)

## Run with Docker Hub's image

```console
docker run -it -p 8888:8888 tqa236/auto-insurance:latest
```

## Docker command

Build image:

```console
docker build --tag auto_insurance .
```

Run container:

```console
docker run --rm -it -p 8888:8888 -v "$(pwd):/auto_insurance" auto_insurance
```

## Install dependencies without Docker

```console
pip install  --no-cache-dir --default-timeout=1000 -r requirements.txt
```