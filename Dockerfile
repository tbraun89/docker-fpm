FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    ruby \
    ruby-dev \
    rubygems \
    build-essential\
  && rm -rf /var/lib/apt/lists/*

RUN gem install --no-document fpm

CMD [ "fpm" ]
