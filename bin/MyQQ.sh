#!/bin/sh
#coding:utf-8

### MySQL 區塊
###
###
###
### 更新
apt-get -qq update                         >> log.txt                        
apt-get -qq dist-upgrade                   >> log.txt    
## 首先安裝MySQL client 和 server ：
# apt-get  -qq install mysql-client mysql-server        >> log.txt  
############################################################
# apt-get install  mysql-server=5.7.29-0ubuntu0.18.04.1    >> log.txt       
# apt-get install  mysql-server=5.7.29-0ubuntu0.18.04.1
apt-get install  mysql-server=5.7.21-1ubuntu1           >> log.txt       
############################################################
# apt-get install  mysql-client=5.7.29-0ubuntu0.18.04.1    >> log.txt       
# apt-get install  mysql-client=5.7.29-0ubuntu0.18.04.1
apt-get install  mysql-client=5.7.21-1ubuntu1           >> log.txt       
############################################
## [mysqld] 內文關鍵字 ############## 修改 ##
echo default-authentication-plugin=mysql_native_password  >>  /etc/mysql/mysql.conf.d/mysqld.cnf
### 第一步

## 啟動服務 ##　 Starting MySQL database server mysqld
service mysql start  　　             >> log.txt  　      
# !apt-get -qq -y install tcl
apt-get -qq -y install expect         >> log.txt  
# chmod +x MySQL.sh
# wget -qq https://raw.githubusercontent.com/moon-start/heroku/master/bin/MySQL.sh
wget -O MySQL.sh -c  https://raw.githubusercontent.com/moon-start/heroku/master/bin/MySQL.sh
# tail -f wget-log  ##  查看 進度

################# 固定寫法 ###
chmod +x MySQL.sh
./MySQL.sh                            >> log.txt  
#############################

## 5.6
mysql  -e "use mysql;set global validate_password_length=4;"
mysql  -e "USE mysql;CREATE USER 'moon'@'%' IDENTIFIED BY '0516';GRANT ALL PRIVILEGES ON *.* TO 'moon'@'%';FLUSH PRIVILEGES;"

# ### 8.0
# ### 建立使用者 + 資料庫授權  
# mysql  -e "use mysql;create user 'moon'@'%' identified by 'moon0516';grant all privileges on *.* to 'moon'@'%' with grant option;"  >> log.txt  


echo "表示成功">> GoOK.txt 