FROM alpine:edge
RUN >/etc/apk/repositories
RUN echo http://nl.alpinelinux.org/alpine/edge/main >>/etc/apk/repositories
RUN echo http://nl.alpinelinux.org/alpine/edge/testing >>/etc/apk/repositories
RUN echo http://nl.alpinelinux.org/alpine/edge/community >>/etc/apk/repositories
RUN apk update
RUN apk add diod
RUN apk add tor
RUN rm -r /var/cache/
CMD /bin/sh
