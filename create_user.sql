-- Lage bruker med passord

CREATE USER 'brukernavn'@'localhost' IDENTIFIED BY 'hemmelig';
CREATE USER 'brukernavn'@'192.168.0.3' IDENTIFIED BY 'hemmelig';
CREATE USER 'brukernavn'@'%' IDENTIFIED BY 'hemmelig';

-- Gi rettigheter

GRANT SELECT ON database.tabell to 'brukernavn'@'localhost';
GRANT SELECT ON pizza.* to 'brukernavn'@'%';
GRANT SELECT, INSERT, UPDATE ON database_name.* TO 'test'@'172.24.147.18';




-- Den vanligste kombinasjonen for dere nå:

CREATE USER 'root'@'localhost' IDENTIFIED BY 'hemmelig';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'vanligbruker'@'localhost' IDENTIFIED BY 'hemmelig2';
GRANT SELECT, INSERT, UPDATE ON pizza.* TO 'vanligbruker'@'localhost';
FLUSH PRIVILEGES;





