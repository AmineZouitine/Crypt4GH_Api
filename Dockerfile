FROM rust:alpine3.16

RUN mkdir /Cryp4GH
WORKDIR /Cryp4GH
COPY ./ /Cryp4GH
RUN apk add build-base
RUN cargo build --release
RUN mv /rmt/target/release/rmt /usr/local/bin

ENTRYPOINT ["tail", "-f", "/dev/null"]