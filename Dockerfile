FROM ubuntu:20.04

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    unzip \
    && apt-get clean

# Default minecraft bedrock port
EXPOSE 19132/udp

RUN curl https://minecraft.azureedge.net/bin-linux/bedrock-server-1.14.60.5.zip --output bedrock-server.zip
RUN unzip bedrock-server.zip -d bedrock-server
RUN rm bedrock-server.zip && mv bedrock-server data

WORKDIR /data

ENV LD_LIBRARY_PATH=.

CMD ./bedrock_server
VOLUME ["/data"]