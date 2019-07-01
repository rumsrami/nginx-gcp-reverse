FROM gcr.io/cloud-marketplace/google/nginx1
RUN rm /etc/nginx/conf.d/default.conf
COPY assets/html /usr/share/nginx/html
COPY assets/conf /etc/nginx
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]