FROM alpine:3.13.5
RUN apk update && apk add bash findutils
COPY ./main.sh /tmp
ADD ./test /data
RUN chmod 775 /tmp/main.sh
CMD /tmp/main.sh