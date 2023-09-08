FROM mysql   #running shellscript in dockerfile
MAINTAINER ravindra_bagale
ENV MYSQL_ROOT_PASSWORD Pass@123
ENV MYSQL_DATABASE wordpressdb
EXPOSE 3306
COPY mysh.sh /docker-entrypoint-initdb.d/mysh.sh  
RUN chmod +x /docker-entrypoint-initdb.d/mysh.sh
CMD ["mysqld"]