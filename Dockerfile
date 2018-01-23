FROM ubuntu:14.04

RUN apt-get update
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y nodejs vim

RUN mkdir /app
ADD . /app/

WORKDIR /app
EXPOSE 8000

CMD ["nodejs", "server.js"]
