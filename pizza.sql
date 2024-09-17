CREATE DATABASE pizza;

use pizza;

CREATE TABLE pizza (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    navn VARCHAR(50)
);

CREATE TABLE fyll (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    navn VARCHAR(50)
);

CREATE TABLE pizza_has_fyll (
    pizza_id int,
    fyll_id int,
    CONSTRAINT FK_pizza FOREIGN KEY (pizza_id) REFERENCES pizza(id),
    CONSTRAINT FK_fyll FOREIGN KEY (fyll_id) REFERENCES fyll(id)
);


INSERT INTO pizza (id, navn) VALUES (11, 'Pepperoni');
INSERT INTO pizza (id, navn) VALUES (22, 'Skinke');
INSERT INTO pizza (id, navn) VALUES (33, 'Kjøtt');
INSERT INTO pizza (id, navn) VALUES (44, 'Mozarella');

INSERT INTO fyll (id, navn) VALUES (111, 'Ost'); 
INSERT INTO fyll (id, navn) VALUES (222, 'Pepperoni'); 
INSERT INTO fyll (id, navn) VALUES (333, 'Saus'); 
INSERT INTO fyll (id, navn) VALUES (444, 'Bunn'); 
INSERT INTO fyll (id, navn) VALUES (555, 'Gluten');

INSERT INTO pizza_has_fyll (pizza_id, fyll_id) VALUES (11, 111);
INSERT INTO pizza_has_fyll (pizza_id, fyll_id) VALUES (11, 222);
INSERT INTO pizza_has_fyll (pizza_id, fyll_id) VALUES (11, 333);
INSERT INTO pizza_has_fyll (pizza_id, fyll_id) VALUES (11, 444);
INSERT INTO pizza_has_fyll (pizza_id, fyll_id) VALUES (11, 555);
INSERT INTO pizza_has_fyll (pizza_id, fyll_id) VALUES (44, 111);
INSERT INTO pizza_has_fyll (pizza_id, fyll_id) VALUES (44, 444);
INSERT INTO pizza_has_fyll (pizza_id, fyll_id) VALUES (44, 333);