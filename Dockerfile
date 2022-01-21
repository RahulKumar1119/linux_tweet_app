FROM nginx:latest

RUN apt-get update && apt-get install zip curl wget openssl  -y

COPY index.html /usr/share/nginx/html
COPY linux.png /usr/share/nginx/html

EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
