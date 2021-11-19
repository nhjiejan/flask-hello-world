MAINTAINER Nabil Andaloussi
FROM python:3.6

RUN mkdir -p /opt/flask-hello-world
WORKDIR /opt/flask-hello-world

RUN pip3 install --upgrade pip
COPY requirements*.txt ./
RUN pip3 install -r requirements.txt

COPY . ./


ARG commit
LABEL commit="$commit"

ENV PORT 5000
ENV FLASK_APP flask_hw/app.py

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

CMD ["flask", "run", "--host=0.0.0.0"]
