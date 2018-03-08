FROM    centos

RUN     yum install -y epel-release
RUN     yum install -y nodejs npm

RUN mkdir /src
COPY package.json /src/package.json
RUN cd /src; npm install --save

COPY . /src

EXPOSE  8080

CMD ["node", "/src/bin/www"]
