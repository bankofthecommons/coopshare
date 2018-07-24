FROM openjdk:8
ADD https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein /app/bin/lein
RUN chmod +x /app/bin/lein
RUN git clone https://github.com/Commonfare-net/social-wallet-api /app/src
WORKDIR /app/src
EXPOSE 3000
