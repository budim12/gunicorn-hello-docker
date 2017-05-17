# gunicorn hello docker

A simple docker image running gunicorn and a hello world-app.

## How to build and run

```bash
$ docker build -t gunicorn-hello-docker .
$ docker run -p 3000:3000 -ti gunicorn-hello-docker

```
