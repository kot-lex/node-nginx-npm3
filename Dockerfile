FROM node:argon

MAINTAINER Aleksei Chernov <kot.lex@gmail.com>

# Do the job in one command to save disk space by preventing creation of unneeded layers and
RUN apt-get update \
  && apt-get install -y nginx \
  && rm -r /var/www/html/* \
  && npm i -q -g npm3
