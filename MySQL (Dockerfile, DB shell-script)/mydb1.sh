#!/bin/bash              #use /usr/local/bin folder for storing shellscript file
create database hotel;
use hotel;
create table posts( id int,status varchar(200), posturl varchar(200));
insert into posts(id,status,posturl)values (1,"just checking in","https://insta.com/image.jpg");