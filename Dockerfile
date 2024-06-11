FROM jupyter/minimal-notebook:python-3.11.6

# Change to root in order to create folders, change paths,...
USER root

COPY . ./work

WORKDIR /work/src

# python 
RUN pip install --upgrade pip

# Install dependencies
COPY ./requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
