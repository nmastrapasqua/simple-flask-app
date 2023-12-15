FROM ubuntu:22.04

RUN apt-get update && apt-get install -y python python-pip

COPY app.py /opt/
COPY requirements.txt /opt/
COPY templates /opt/templates

RUN pip install -r /opt/requirements.txt

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
