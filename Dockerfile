FROM nginx:1.25.1-alpine

# copy nginx congfiguration file
COPY ./nginx.conf /usr/local/etc/nginx/

# nginx will listen in port 80
EXPOSE 80

# copy static content
WORKDIR /usr/share/nginx/html/
COPY ./my_site/ .
