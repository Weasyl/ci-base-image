FROM python:3.10-alpine3.16
RUN ["apk", "add", "--update", \
  "musl-dev", "gcc", "g++", "make", \
  "nodejs", "npm", "sassc", \
  "libxml2-dev", "libxslt-dev", \
  "imagemagick6-dev", \
  "libffi-dev", \
  "libjpeg-turbo-dev", \
  "libmemcached-dev", \
  "libwebp-dev", \
  "openssl-dev", \
  "postgresql-dev", \
  "xz-dev", \
  "zlib-dev", \
  "py3-virtualenv", \
  "py3-wheel"]
# github.com/actions/cache uses --posix, which breaks busybox tar
RUN ["apk", "add", "tar"]
# for Codecov
RUN ["apk", "add", "bash", "curl"]
