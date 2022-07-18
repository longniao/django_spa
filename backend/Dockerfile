# Build step #1: build the API
FROM python:3.9.0-slim
WORKDIR /backend

COPY . .

RUN apt-get update
RUN apt-get -y install libpq-dev gcc
RUN pip install -r ./requirements.txt

EXPOSE 8000
CMD ["gunicorn", "-b", ":8000", "backend.wsgi"]
