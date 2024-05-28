FROM golang:1.8 AS builder

WORKDIR /app

COPY . .

RUN go build -o hello

FROM scratch

COPY --from=builder /app/hello /hello

CMD ["/hello"]