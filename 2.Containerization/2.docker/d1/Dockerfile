FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y -q curl gnupg2
RUN curl http://nginx.org/keys/nginx_signing.key | apt-key add -

RUN apt-get update && \
    apt-get install -y -q nginx

EXPOSE 443 80

CMD ["nginx", "-g", "daemon off;"]
