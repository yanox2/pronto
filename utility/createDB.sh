#!/bin/sh

#/* Copyright 2016 dodat */
#---------------------------------------------------------------------------*
# データベース作成
#---------------------------------------------------------------------------*/

user="root"
passwd="passwd"
dbname="pronto_resource_manager"
sqlfile="./createDB.sql"

mysql -u$user -p$passwd --force $dbname < $sqlfile
