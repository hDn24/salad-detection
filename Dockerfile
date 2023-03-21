# syntax=docker/dockerfile:1

FROM python:3.9-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

COPY . .


ENTRYPOINT [ "python" ]

CMD ["main.py" ]
