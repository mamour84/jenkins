FROM nginx:latest
RUN sed -i 's/nginx/Mamour/g' /usr/share/nginx/html/index.html
EXPOSE 80
