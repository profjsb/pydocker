FROM python:3.9-alpine

MAINTAINER Josh Bloom "profjsb@gmail.com"

## Uncomment this if you want to add numpy, cython etc.
#RUN apk add --update curl gcc g++ \
#    && rm -rf /var/cache/apk/*
#RUN ln -s /usr/include/locale.h /usr/include/xlocale.h
#RUN pip install numpy

# Uncomment this if you want bash
# RUN apk add --update bash && rm -rf /var/cache/apk/*

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]