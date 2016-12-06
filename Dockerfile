FROM nginx
COPY https://github.com/zelazmon/test2.git/website/main.html /usr/share/nginx/html
CMD docker build -t website-content-nginx
CMD docker run --name website-nginx -d -p 8080:80 website-content-nginx
