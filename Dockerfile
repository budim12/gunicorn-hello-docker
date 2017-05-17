FROM python:2.7.13-slim
MAINTAINER Tobias Jakobsson <tobias.jakobsson@elastx.se>

COPY app/ /app/

WORKDIR /app

RUN pip install -r requirements.txt 

EXPOSE 3000

ENTRYPOINT ["/usr/local/bin/gunicorn","-w","4","-b",":3000","helloworld:app"]

