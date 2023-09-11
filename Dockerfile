FROM alpine:3.18 as build
# making my own image for hugo because there doesn't seem to be an official one in repo, lazy so we're going with alpine
RUN ["apk", "update"]
RUN ["apk", "add hugo"]
ADD . /root/
WORKDIR /root
ARG WITH_COMMENTS=0
RUN ["hugo", "--minify"]

FROM nginx:1.25

RUN
