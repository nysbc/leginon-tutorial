mysql -u root --silent --skip-column-names -e "SHOW TABLES" leginondb | xargs -L1 -I% echo 'DROP TABLE `%`;' | mysql -u root -v leginondb
mysql -u root --silent --skip-column-names -e "SHOW TABLES" projectdb | xargs -L1 -I% echo 'DROP TABLE `%`;' | mysql -u root -v projectdb
# remove ap* databases
mysql -u root --silent -e "SHOW DATABASES" mysql | xargs -L1 -I {} bash -c "if [[ {} == 'ap'* ]]; then echo 'DROP DATABASE '{}; fi" | xargs -L1 -I% mysql -u root -v -e "%"

echo 'REMOVE ALL DATA in /emg/data/leginon'
echo ''
rm -rf /emg/data/leginon/*
echo 'REMOVE ALL DATA in /emg/data/appion'
echo ''
rm -rf /emg/data/appion/*
echo 'REMOVE ALL DATA in /emg/data/frame'
echo ''
rm -rf /emg/data/frame/*

echo 'REINITIALIZE DATABASES'
mysql -u root leginondb < /sw/sql/leginondb.sql
mysql -u root projectdb < /sw/sql/projectdb.sql


