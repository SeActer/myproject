###############
#2020-5-6
#go build
###############

FROM alpine:latest
WORKDIR $GOPATH/src/blog

ADD config　　　　　　  $GOPATH/src/config
ADD myproject/conf　　　　 $GOPATH/src/myproject/conf
ADD  myproject/myproject　　　　$GOPATH/src/myproject/myproject

RUN mkdir /lib64 && ln -s /lib/libc.musl-x86_64.so.1 /lib64/ld-linux-x86-64.so.2

EXPOSE 8080

ENTRYPOINT ["./blog"]
