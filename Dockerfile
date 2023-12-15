FROM python:latest

# RUN apt-get update && apt-get install -y python python-pip
# RUN pip install --upgrade pip

COPY app.py /opt/
COPY requirements.txt /opt/
COPY templates /opt/templates

RUN pip install -r /opt/requirements.txt

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
