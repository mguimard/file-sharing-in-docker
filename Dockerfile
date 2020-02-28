FROM alpine:latest

ARG USERID
ARG GROUPID

RUN addgroup --gid $GROUPID whatever
RUN adduser --disabled-password --ingroup whatever -u $USERID whatever 
RUN mkdir /data && \
    chown -R whatever:whatever /data && \
    chmod 775 /data && \
    chmod g+s /data

USER whatever
VOLUME ["data"]
