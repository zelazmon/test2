FROM nginx
COPY website/* /usr/share/nginx/html
#CMD docker build -t website-content-nginx https://github.com/zelazmon/test2.git
#CMD docker run --name website-nginx -d -p 8180:80 website-content-nginx
EXPOSE 8180
