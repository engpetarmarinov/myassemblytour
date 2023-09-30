FROM alpine:latest

# Update package repositories and install nasm and build-base packages
RUN apk update && \
    apk add --no-cache nasm build-base

CMD ["/bin/sh"]
