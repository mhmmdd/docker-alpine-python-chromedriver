FROM joyzoursky/python-chromedriver:3.7-alpine3.8-selenium
MAINTAINER Muhammed Doğan <mhmmd.dd@gmail.com>

RUN apk update
RUN apk add --update --no-cache g++ gcc libxslt-dev build-base jpeg-dev zlib-dev python3-tkinter python3-dev
RUN pip install --no-cache-dir bs4 lxml pyautogui pandas