FROM jupyter/datascience-notebook:python-3.8.8

USER $NB_UID

RUN pip install --upgrade pip setuptools wheel

WORKDIR /auto_insurance

COPY requirements.txt /auto_insurance/requirements.txt
RUN pip install  --no-cache-dir --default-timeout=1000 -r requirements.txt

ADD data /auto_insurance/data/
ADD *.ipynb /auto_insurance/

USER root
RUN chown -R $NB_UID /auto_insurance

USER $NB_UID

