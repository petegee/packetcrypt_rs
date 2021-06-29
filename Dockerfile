FROM rust:buster

RUN mkdir /src && mkdir /src/packetcrypt
WORKDIR /src/packetcrypt

COPY . /src
RUN cargo build --release

CMD /src/target/release/packetcrypt ann -p pkt1qsfm5e0ujwcarxyhqlvl6ct6nrpvenm0wgpgd7m http://pool.srizbi.com http://pool.pktpool.io http://pool.pkt.world http://pool.pkteer.com http://noworries.tech/pool