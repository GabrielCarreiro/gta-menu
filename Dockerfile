FROM nginx:latest

LABEL com.example.version="1.0.0"
LABEL com.example.release-date="30-09-2023"
LABEL com.example.production="True"

RUN apt-get -y update  && apt-get -y install npm

WORKDIR /build

COPY . .

RUN npm i minify -g

RUN npm run build
