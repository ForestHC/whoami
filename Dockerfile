FROM golang:1.18.5-alpine3.16 AS binary

ADD . /app
WORKDIR /app
RUN go build -o http

FROM alpine:3.16

WORKDIR /app
ENV PORT 8000
EXPOSE 8000
COPY --from=binary /app/http /app
CMD ["/app/http"]
