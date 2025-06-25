FROM python:3.11-alpine

WORKDIR /webhook

RUN apk add --no-cache ansible docker-cli

COPY app.py .
COPY selfheal.yml .

RUN pip install flask

CMD ["python", "app.py"]
