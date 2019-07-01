FROM gcr.io/cloud-marketplace/google/nginx1
RUN rm /etc/nginx/conf.d/default.conf
COPY ./assets/html/ /usr/share/nginx/html/
COPY ./assets/conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]