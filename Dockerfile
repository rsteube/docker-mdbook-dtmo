FROM ekidd/rust-musl-builder

RUN cargo install --git https://github.com/badboy/mdbook-dtmo

FROM alpine

COPY --from=0 \
     /home/rust/.cargo/bin/mdbook-dtmo \
     /usr/local/bin/

WORKDIR /mdbook
