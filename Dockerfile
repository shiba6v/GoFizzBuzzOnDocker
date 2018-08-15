FROM ubuntu:16.04 
RUN apt-get update -y \
    && apt-get install gcc make -y \
    && apt-get install golang-1.10 -y

ADD fizzbuzz.go ~/
ENV PATH $PATH:/usr/lib/go-1.10/bin
ENV GOPATH $HOME/work
RUN apt-get install git -y
RUN go get -u github.com/gorilla/mux
EXPOSE 8080
CMD ["go","run","~/fizzbuzz.go"]
