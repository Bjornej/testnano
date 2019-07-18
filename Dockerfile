FROM microsoft/dotnet:2.1-sdk-nanoserver-1809 AS build

USER ContainerAdministrator 
RUN curl.exe -o node.zip https://nodejs.org/dist/v9.2.0/node-v9.2.0-win-x64.zip && \
  mkdir "C:\\Program Files\\node" && \
  tar.exe -xf node.zip -C "C:\\Program Files\\node" --strip-components=1

#Add node to PATH
RUN setx /M PATH "%PATH%;C:\Program Files\node"
