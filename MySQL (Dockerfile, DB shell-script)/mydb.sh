#!/bin/bash
set -e
mysql -u root -pPass@123 -e "create database insta;";   #no space in -p and password here
mysql -u root -pPass@123 << EOF
create database mydb;
use mydb;
create table posts( id int,status varchar(200), posturl varchar(200));
insert into posts(id,status,posturl)values (1,"just ckecking in","https://insta.com/image.jpg");
EOF