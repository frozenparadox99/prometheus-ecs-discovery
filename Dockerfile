FROM golang:1.22-alpine3.20 AS builder
WORKDIR /src
RUN apk --no-cache add git ca-certificates
COPY go.mod ./
COPY *.go ./
RUN go mod tidy
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -ldflags '-extldflags "-static"' -o /bin/prometheus-ecs-discovery .

FROM alpine:3.20
RUN apk --no-cache add ca-certificates
COPY --from=builder /bin/prometheus-ecs-discovery /bin/
ENTRYPOINT ["prometheus-ecs-discovery"]
