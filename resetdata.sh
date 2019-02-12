mysql -u root --silent --skip-column-names -e "SHOW TABLES" leginondb | xargs -L1 -I% echo 'DROP TABLE `%`;' | mysql -u root -v leginondb
mysql -u root --silent --skip-column-names -e "SHOW TABLES" projectdb | xargs -L1 -I% echo 'DROP TABLE `%`;' | mysql -u root -v projectdb
# remove ap* databases
mysql -u root --silent -e "SHOW DATABASES" mysql | xargs -L1 -I {} bash -c "if [[ {} == 'ap'* ]]; then echo 'DROP DATABASE '{}; fi" | xargs -L1 -I% mysql -u root -v -e "%"

rm -rf /emg/data/leginon/*
rm -rf /emg/data/appion/*
rm -rf /emg/data/frame/*

mysql -u root leginondb < /sw/sql/leginondb.sql
mysql -u root projectdb < /sw/sql/projectdb.sql


