FROM jupyter/datascience-notebook:python-3.8.8

USER root

RUN apt-get update && apt-get install -y \
    build-essential \
    swig \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID

RUN curl https://raw.githubusercontent.com/automl/auto-sklearn/master/requirements.txt | xargs -n 1 -L 1 pip install

RUN pip install --upgrade pip setuptools wheel

WORKDIR /auto_insurance

COPY requirements.txt /auto_insurance/requirements.txt
RUN pip install  --no-cache-dir --default-timeout=1000 -r requirements.txt

ADD data /auto_insurance/
ADD *.ipynb /auto_insurance/