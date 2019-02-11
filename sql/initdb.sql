
CREATE database leginondb;
CREATE database projectdb;

CREATE USER usr_object@'%' IDENTIFIED BY 'leginon-tutorial';
GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON *.* to usr_object@'localhost' IDENTIFIED BY 'leginon-tutorial';
GRANT DELETE ON leginondb.* to usr_object@'localhost' IDENTIFIED BY 'leginon-tutorial';
GRANT DELETE ON projectdb.* to usr_object@'localhost' IDENTIFIED BY 'leginon-tutorial';
GRANT ALTER, CREATE, INSERT, SELECT, UPDATE ON *.* to usr_object@'%' IDENTIFIED BY 'leginon-tutorial';

flush privileges;
