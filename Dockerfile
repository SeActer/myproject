###############
#2020-5-6
#go build
###############

FROM alpine:latest
WORKDIR $GOPATH/src/myproject


ADD ./conf/app.conf     $GOPATH/src/myproject/conf/app.conf
ADD ./myproject         $GOPATH/src/myproject/myproject
ADD ./views/index.tpl   $GOPATH/src/myproject/views/index.tpl
ADD ./static/*          $GOPATH/src/myproject/static/

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

EXPOSE 8080

ENTRYPOINT ["./myproject"]
