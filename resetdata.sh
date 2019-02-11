mysql -u usr_object -pleginon-tutorial --silent --skip-column-names -e "SHOW TABLES" leginondb | xargs -L1 -I% echo 'DROP TABLE `%`;' | mysql -u usr_object -pleginon-tutorial -v leginondb
mysql -u usr_object -pleginon-tutorial --silent --skip-column-names -e "SHOW TABLES" projectdb | xargs -L1 -I% echo 'DROP TABLE `%`;' | mysql -u usr_object -pleginon-tutorial -v projectdb

rm -rf /emg/data/leginon/*
rm -rf /emg/data/appion/*
rm -rf /emg/data/frame/*

mysql -u usr_object -pleginon-tutorial leginondb < sql/leginondb.sql
mysql -u usr_object -pleginon-tutorial appiondb < sql/appiondb.sql


