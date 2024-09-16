CREATE USER 'joffrey'@'192.168.0.3';
CREATE USER 'joffrey'@'%';
GRANT SELECT ON test.t1 to 'joffrey'@'192.168.0.3';
GRANT SELECT ON test.t2 to 'joffrey'@'%';

CREATE USER 'test'@'172.24.147.18' IDENTIFIED BY 'hemmelig';
CREATE USER 'test'@'%' IDENTIFIED BY 'hemmelig';
CREATE USER 'joffrey'@'%';

GRANT SELECT, INSERT, UPDATE ON database_name.* TO 'test'@'172.24.147.18';

GRANT ALL PRIVILEGES ON * . * TO 'matthew'@'%';


