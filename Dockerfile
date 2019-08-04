FROM python:3.7.4-alpine3.10
MAINTAINER Muhammed Doğan <mhmmd.dd@gmail.com>

# update apk repo
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.10/main" >> /etc/apk/repositories && \
    echo "http://dl-4.alpinelinux.org/alpine/v3.10/community" >> /etc/apk/repositories

RUN apk update
RUN apk add --update --no-cache g++ chromium chromium-chromedriver gcc libxslt-dev build-base jpeg-dev zlib-dev python3-tkinter python3-dev

# install python packages
RUN pip install --no-cache-dir selenium==3.13.0 bs4 lxml pyautogui pandas