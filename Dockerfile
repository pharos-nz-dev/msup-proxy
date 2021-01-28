FROM openresty/openresty:alpine-fat

ARG configuration
ADD files /
RUN chmod 500 /container_startup
RUN chmod 644 /etc/nginx/nginx.template.conf

RUN apk update && apk add --no-cache curl iputils bind-tools

ENV REDIRECT_SERVER=api.ci.aws.pharos.com
ENV REDIRECT_PATH=aka

CMD [ "/container_startup" ]
