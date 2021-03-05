# Auto insurance

## Docker command

Build image:

```console
docker build --tag auto_insurance .
```

Run container:

```console
docker run -it -p 8888:8888 -v "$(pwd):/auto_insurance" auto_insurance
```

## Install dependencies without Docker

```console
pip install  --no-cache-dir --default-timeout=1000 -r requirements.txt
```