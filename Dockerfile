FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*
COPY site-render.tar.gz /tmp/site-render.tar.gz
RUN tar -xzf /tmp/site-render.tar.gz -C /usr/share/nginx/html \
    && rm /tmp/site-render.tar.gz
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 10000
