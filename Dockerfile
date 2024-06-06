FROM tensorflow/tensorflow:2.16.1-gpu

WORKDIR /src

#dependencies
RUN pip install scipy sklearn

COPY . .
