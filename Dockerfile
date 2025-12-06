FROM nginx:alpine


COPY project.html /usr/share/nginx/html/


RUN echo 'server { \
    listen $PORT; \
    root /usr/share/nginx/html; \
    index project.html; \
    \
    location / { \
        try_files $uri $uri/ /project.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

EXPOSE $PORT
