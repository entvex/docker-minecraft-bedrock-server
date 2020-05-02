# docker-minecraft-bedrock-server

The following command starts Minecraft Bedrock Dedicated Linux Server running version 1.14.60.5 and
exposing the default UDP port: 

```bash
docker run -d -it -p 19132:19132/udp entvex/minecraft-bedrock-server
```

## Volumes

- `/data` : Is location where the server is downloaded and extracted. This volume also has the
  configuration properties file `server.properties`.
  
## Connecting

### On Local Area Network(Lan)

When running the container on your LAN, you can find and connect to the server
in "Friends" tab under the "LAN Games" section.

### When hosting and playing on the same windows 10 pc

Windows 10 prevents UWP applications from accessing a loopback connection with "localhost" (i.e. network resources running on the same machine). You will need to enable loopback for Minecraft for Windows 10 if both of the following conditions are satisfied:

- You are hosting the server on a Windows 10 PC.
- You want to connect to the server as a client using the same Windows 10 PC that is hosting the server.

Using an administrator account
1. Press the `WIN` + `R` keys to open the Run dialog.
2. Type `cmd`.
3. Select "OK", or press the `return` or `enter` key to open the Command Prompt.
4. Type the following command:
```bash
CheckNetIsolation.exe LoopbackExempt –a –p=S-1-15-2-1958404141-86561845-1752920682-3514627264-368642714-62675701-733520436
```