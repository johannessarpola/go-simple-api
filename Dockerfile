FROM golang:1.19-alpine
WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY simple-api/*.go ./
RUN go build -o /simple-api
EXPOSE 8080
CMD [ "/simple-api" ]