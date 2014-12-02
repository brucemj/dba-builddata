#!/bin/bash
HOSTNAME="172.21.12.59"
PORT="3306"
USERNAME="root"
PASSWORD="root"
DBNAME="dba"
TABLENAME1="awk"

#create db
create_db_sql="create database IF NOT EXISTS ${DBNAME} default charset utf8"
mysql -h${HOSTNAME}   -P${PORT}   -u${USERNAME} -p${PASSWORD} -e "${create_db_sql}"

#create table
create_table_sql="create table IF NOT EXISTS ${TABLENAME1} ( \
id int not null primary key auto_increment, \
ln varchar(50) not null, \
fn varchar(50) not null, \
dob date not null , \
key(ln, fn, dob)
)"

mysql -h${HOSTNAME}   -P${PORT}   -u${USERNAME} -p${PASSWORD} ${DBNAME} -e "${create_table_sql}"

#ITEM=$(python pynamesgenerator.py)
#echo $ITEM
