FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf

# RUN git clone --depth=1 --recurse-submodules --shallow-submodules https://github.com/uwdesign/images.git /var/www/imagesweserv
CMD /bin/bash -c "envsubst '\$PORT' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf" && nginx -g 'daemon off;'