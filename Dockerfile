FROM python:3.6-slim-stretch
RUN apt-get update && apt-get install -y --no-install-recommends git g++ netcat libglib2.0-0 && apt-get clean

WORKDIR /usr/local/ezyinsights
ENV PYTHONPATH=.
RUN pip install --no-cache-dir flask uwsgi
COPY wsgi.py .
