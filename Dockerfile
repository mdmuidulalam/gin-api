FROM golang:latest

LABEL maintainer="Md. Muidul Alam <md.muidul.alam@gmail.com>"

WORKDIR /

COPY go.mod .

COPY go.sum .

RUN go mod download

COPY . .

RUN go build

CMD ["./gin-api"]