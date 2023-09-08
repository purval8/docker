FROM mysql         #/usr/local/bin folder for storing shellscript file
MAINTAINER ravindra_bagale
ENV MYSQL_ROOT_PASSWORD Pass@123
EXPOSE 3306
COPY mysh.sh /usr/local/bin/mysh.sh
RUN chmod +x /usr/local/bin/mysh.sh
CMD ["mysqld","--init-file=/usr/local/bin/mysh.sh"]