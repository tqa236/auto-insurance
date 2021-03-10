FROM jupyter/datascience-notebook:python-3.8.8

USER $NB_UID

RUN pip install --upgrade pip setuptools wheel

WORKDIR /auto_insurance

COPY requirements.txt /auto_insurance/requirements.txt
RUN pip install  --no-cache-dir --default-timeout=1000 -r requirements.txt

USER $NB_UID
ADD catboost_info /auto_insurance/catboost_info/
ADD data /auto_insurance/data/
ADD *.ipynb /auto_insurance/