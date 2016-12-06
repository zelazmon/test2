FROM nginx
COPY static-html-directory /usr/share/nginx/html
CMD docker build -t website-content-nginx
CMD docker run --name website-nginx -d -p 8080:80 website-content-nginx
