FROM gcr.io/cloud-marketplace/google/nginx1:latest
RUN rm /etc/nginx/conf.d/default.conf
COPY ./assets/html /usr/share/nginx/html
COPY ./assets/conf/nginx.conf /etc/nginx/conf.d/site.conf
VOLUME /usr/share/nginx/html
VOLUME /etc/nginx/conf.d
EXPOSE 80:80
ENTRYPOINT ["nginx", "-g", "daemon off;"]