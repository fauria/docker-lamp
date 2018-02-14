FROM ubuntu:16.04

MAINTAINER Elias Alves <elias.alves@ufvjm.edu.br>

ARG BUILD_DATE
ARG VCS_REF
ARG VCS_BRANCH

LABEL Name="Development Web Server Stack" \
      Version=${VCS_BRANCH} \
      Architecture="x86_64" \
			License="Apache License 2.0" \
      Dockerfile_location="/root/buildinfo" \
			Usage="docker run -d -p [HOST WWW PORT NUMBER]:80 -v [HOST WWW DOCUMENT ROOT]:/var/www/html -v [HOST DB DOCUMENT ROOT]:/var/lib/mysql unixelias/lamp" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Development Web Server Stack" \
      org.label-schema.description="Cutting-edge Web stack, based on Ubuntu 16.04 LTS. Includes .htaccess support and popular PHP7 features, including composer and mail() function." \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/unixelias/docker-lamp" \
      org.label-schema.vendor="Elias Alves at UFVJM" \
      org.label-schema.version=${VCS_BRANCH} \
      org.label-schema.version="0.1" \
      org.label-schema.version="dev" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.docker.cmd="docker run -d -p [HOST WWW PORT NUMBER]:80 -v [HOST WWW DOCUMENT ROOT]:/var/www/html -v [HOST DB DOCUMENT ROOT]:/var/lib/mysql unixelias/lamp"


COPY Dockerfile /root/buildinfo
COPY ./scripts/debconf.selections /tmp/
RUN debconf-set-selections /tmp/debconf.selections

# Install pre dependencies and set locales
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    bzip2 \
    curl \
    git \
    locales \
	openssl \	
	perl \
    tzdata \
    unzip \
    vim \
    xz-utils \
    && locale-gen pt \
    && echo "pt_BR pt_BR.UTF-8" >> /etc/locale.alias \
    && unlink /etc/localtime \
    && ln -s /usr/share/zoneinfo/Brazil/East /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV LANG='pt_BR.UTF-8' LANGUAGE='pt_BR:pt:en' LC_ALL='pt_BR.UTF-8'


RUN apt-get update \
	&& apt-get upgrade -y \
	&& apt-get install -y --no-install-recommends \
	apache2 \
	composer \
	ftp \
	php7.0 \
	libapache2-mod-php7.0 \
	npm \
	postfix \
	php7.0-bz2 \
	php7.0-cgi \
	php7.0-cli \
	php7.0-common \
	php7.0-curl \
	php7.0-dev \
	php7.0-enchant \
	php7.0-fpm \
	php7.0-gd \
	php7.0-gmp \
	php7.0-imap \
	php7.0-interbase \
	php7.0-intl \
	php7.0-json \
	php7.0-ldap \
	php7.0-mcrypt \
	php7.0-mysql \
	php7.0-odbc \
	php7.0-opcache \
	php7.0-pgsql \
	php7.0-phpdbg \
	php7.0-pspell \
	php7.0-readline \
	php7.0-recode \
	php7.0-snmp \
	php7.0-sqlite3 \
	php7.0-sybase \
	php7.0-tidy \
	php7.0-xmlrpc \
	php7.0-xsl \
	tree \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install -g yarn grunt-cli gulp

ENV LOG_STDOUT true
ENV LOG_STDERR true
ENV LOG_LEVEL warn
ENV ALLOW_OVERRIDE All
ENV DATE_TIMEZONE='America/Sao_Paulo'
ENV TERM dumb

COPY ./scripts/index.php /var/www/html/
COPY ./scripts/run-lamp.sh /usr/sbin/
COPY ./root/ ~/

RUN a2enmod rewrite
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN chmod +x /usr/sbin/run-lamp.sh
RUN chown -R www-data:www-data /var/www/html

VOLUME /var/www/html
VOLUME /var/log/httpd

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/run-lamp.sh"]
