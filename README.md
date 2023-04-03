# Salad detection

Supports:

- [x] Check CI with github actions
- [x] flake8, mypy, precommit

## How to start `pre-commit`

```
pre-commit install
```

```
pre-commit run --all-files
```

## How to start API

### Create virtual environment:

```shell
virtualenv env
```

```shell
source env/bin/activate
```

### Install the required libs

```shell
pip install -r requirements.txt
```

### Run API

```shell
python main.py
```

## Docker

```shell
docker build --tag hdn24/food-detection .
```

```
docker run --rm -it -p 5001:5000 hdn24/food-detection:latest
```

### API

- Open `http://localhost:5001/` to check api
  - GET: `http://localhost:5001/` Health check api
  - POST: `http://localhost:5001/detect` Detect api
    - key: file[] (type: `file`)
    - value: Choose a file from local
