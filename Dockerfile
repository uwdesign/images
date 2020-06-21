FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf

# RUN git clone --depth=1 --recurse-submodules --shallow-submodules https://github.com/uwdesign/images.git /var/www/imagesweserv
WORKDIR /var/www/imagesweserv/build
CMD /bin/bash -c "envsubst '\$PORT' < /var/www/imagesweserv/nginx.conf > /var/www/imagesweserv/nginx.conf" && nginx -g 'daemon off;'