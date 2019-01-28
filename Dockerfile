FROM alpine
MAINTAINER "peetg" <peet@gouws.com>

LABEL org.label-schema.vcs-url="e.g. https://github.com/Airhtorn/docker-build"
###
### Install
###

RUN apk add bash
RUN apk add bind
RUN mkdir /var/cache/bind
RUN mkdir /var/log/named

###
### Bootstrap Scipts
###
COPY ./data/docker-entrypoint.sh /

###
### Ports
###
EXPOSE 53
EXPOSE 53/udp


####
#### Entrypoint
####
#ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/docker-entrypoint.sh"]
