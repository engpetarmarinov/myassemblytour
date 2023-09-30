FROM arm64v8/alpine:latest

# Update package repositories and install nasm and build-base packages
RUN apk update && \
    apk add --no-cache build-base

CMD ["/bin/sh"]
