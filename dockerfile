# buat container isinya nginx dan php lasted version set env variable satu="12"

FROM nginx:latest
# tambahkan seluruh extensi php7.0-fpm ke container
RUN apt-get update && apt-get install -y php7.0-fpm php7.0-mysql php7.0-curl php7.0-json php7.0-cgi php7.0-cli php7.0-common php7.0-gd php7.0-mbstring php7.0-mcrypt php7.0-opcache php7.0-readline php7.0-xml php7.0-zip
ENV satu="12"
# tambahkan file di folder "kok" ke folder /var/www/html di container
ADD kok /var/www/html
# expose port 80
EXPOSE 80