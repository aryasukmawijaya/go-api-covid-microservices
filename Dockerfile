FROM golang:1.15.5
ADD . /go/src/covid-app
WORKDIR /go/src/covid-app
COPY . . 
EXPOSE 80
RUN go build -o main
CMD ["./main"] 