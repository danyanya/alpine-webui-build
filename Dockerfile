FROM danyanya/alpine-nginx

COPY third_party/webui /webui

ADD src/certs/* /etc/nginx/certs/
ADD src/nginx.conf /etc/nginx/

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
