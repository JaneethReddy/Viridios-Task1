# syntax=docker/dockerfile:1
FROM python:3.8-slim-buster

WORKDIR /Task1

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3", "api-route.py", "--host=0.0.0.0"]