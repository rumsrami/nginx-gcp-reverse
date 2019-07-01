FROM gcr.io/cloud-marketplace/google/nginx1:latest
RUN rm /etc/nginx/conf.d/default.conf
COPY ./assets/html/index.html /usr/share/nginx/html/
COPY ./assets/conf/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]