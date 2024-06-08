FROM python:3.12.4-slim-bullseye

COPY . /src

WORKDIR /src

# Terminal requirements
RUN apt-get update && apt-get install vim -y
RUN apt-get install -y iputils-ping curl

# python 
RUN pip install --upgrade pip

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
