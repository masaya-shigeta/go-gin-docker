FROM golang:1.19-alpine
ENV ROOT=/go/src/app
RUN mkdir ${ROOT}
WORKDIR ${ROOT}

COPY go.mod go.sum ./
COPY . .
RUN go get

RUN CGO_ENABLED=0 GOOS=linux go build -o $ROOT/bin
EXPOSE 8080
CMD ["/go/src/app/bin"]
