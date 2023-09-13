FROM alpine:3.18 as build
# making my own image for hugo because there doesn't seem to be an official one in repo, lazy so we're going with alpine
RUN ["apk", "update"]
RUN ["apk", "add", "hugo"]
ADD . /root/
WORKDIR /root
# pass in the uri or ip of the comments api so nginx can forward to it
ARG COMMENTS_BACKEND
ENV COMMENTS_BACKEND=${WITH_BACKEND}
RUN ["hugo", "--minify"]

FROM python:3.11-alpine as fiddling
RUN ["mkdir", "/application"]
RUN ["adduser", "-D", "-h", "/application", "application"]
# might need to chown these
ADD ./scripts/template_convert.py /application/template_convert.py
ADD ./nginx.conf.template /application/nginx.conf.template
WORKDIR /application
USER application
RUN ["python", "/application/template_convert.py"]

FROM nginx:1.25-alpine
COPY --from=fiddling /application/nginx.conf /etc/nginx/nginx.conf
COPY --from=build /root/public /usr/share/nginx/html
