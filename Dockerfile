FROM openjdk:8
ADD https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein /app/bin/lein
RUN chmod +x /app/bin/lein
RUN git clone https://github.com/Commonfare-net/social-wallet-api /app/src
WORKDIR /app/src
ADD freecoin/config/social-wallet-api.yaml resources/social-wallet-api.yaml
ADD faircoin/config/faircoin.conf /faircoin/config/faircoin.conf
