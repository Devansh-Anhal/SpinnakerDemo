FROM ubuntu:18.04

LABEL maintainer="Your Name <youremailaddress@provider.com>"

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

CMD [ "python", "./app.py" ]
