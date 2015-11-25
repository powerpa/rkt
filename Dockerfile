FROM alpine:edge
RUN apk update
RUN apk add diod
RUN apk add tor
RUN rm -r /var/cache/
