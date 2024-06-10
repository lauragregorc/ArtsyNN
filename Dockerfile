FROM jupyter/minimal-notebook:python-3.11.6

COPY ./src /work

WORKDIR /work

# python 
RUN pip install --upgrade pip

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

