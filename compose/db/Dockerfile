FROM mariadb

MAINTAINER Elias Alves <elias.alves@ufvjm.edu.br>


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    locales \
    tzdata \
    && locale-gen pt \
    && echo "pt_BR pt_BR.UTF-8" >> /etc/locale.alias \
    && unlink /etc/localtime \
    && ln -s /usr/share/zoneinfo/Brazil/East /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV LANG='pt_BR.UTF-8' LANGUAGE='pt_BR:pt:en' LC_ALL='pt_BR.UTF-8'

EXPOSE 3306

CMD ["mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]