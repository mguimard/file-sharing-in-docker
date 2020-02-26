FROM alpine:latest

RUN addgroup --gid 1099 dev
RUN adduser --disabled-password --ingroup dev -u 1099 dev 
#RUN useradd -m -d /home/dev -s /usr/sbin/nologin -c "developer" -u 1099 -g 1099 dev
RUN mkdir /data && \
    chown -R dev:dev /data && \
    chmod 775 /data && \
    chmod g+s /data

USER dev
VOLUME ["data"]
