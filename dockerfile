
FROM nginx:latest
RUN apt-get update && apt-get install -y php7.0-fpm php7.0-mysql php7.0-curl php7.0-json php7.0-cgi php7.0-cli php7.0-common php7.0-gd php7.0-mbstring php7.0-mcrypt php7.0-opcache php7.0-readline php7.0-xml php7.0-zip
ENV satu="12"
ADD kok /var/www/html
# expose port 80
EXPOSE 80