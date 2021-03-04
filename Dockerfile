FROM python:3.9-alpine3.13
RUN ["apk", "add", "--update", \
  "musl-dev", "gcc", "make", \
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
  "py3-virtualenv"]
RUN ["apk", "add", "nodejs", "npm", "sassc"]
# github.com/actions/cache uses --posix, which breaks busybox tar
RUN ["apk", "add", "tar"]
# for Codecov
RUN ["apk", "add", "bash", "curl"]
RUN ["apk", "add", "py3-wheel"]
