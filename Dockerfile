FROM golang:1.22-alpine

WORKDIR /usr/src/app

# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY . .

CMD ["go", "run" , "helloworld.go"]