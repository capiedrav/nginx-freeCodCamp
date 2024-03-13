FROM nginx:1.25.1-alpine

# nginx will listen in port 80
EXPOSE 80

# copy nginx congfiguration file
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d/

# copy static content
WORKDIR /var/www/my_site/
COPY ./my_site/ .
