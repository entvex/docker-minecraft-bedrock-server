FROM ubuntu:20.04

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    unzip \
    && apt-get clean

RUN wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.14.60.5.zip --output bedrock-server.zip && unzip bedrock-server.zip -d bedrock-server && rm bedrock-server.zip

WORKDIR /bedrock-server
ENV LD_LIBRARY_PATH=.

EXPOSE 19132/udp

CMD ./bedrock_server