CREATE DATABASE film_db;

USE film_db;

CREATE TABLE film (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tittel varchar(255) NOT NULL,
    utgitt year,
    lengde int
);

CREATE TABLE sjanger (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    sjanger varchar(50) NOT NULL
);

CREATE TABLE film_has_sjanger (
    film_id int NOT NULL,
    sjanger_id int NOT NULL,
    CONSTRAINT PK_film_has_sjanger PRIMARY KEY (film_id, sjanger_id),
    CONSTRAINT FK_film FOREIGN KEY (film_id) REFERENCES film(id),
    CONSTRAINT FK_sjanger FOREIGN KEY (sjanger_id) REFERENCES sjanger(id)
);

CREATE TABLE person (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fornavn varchar(255) NOT NULL,
    etternavn varchar(255) NOT NULL
);

CREATE TABLE rolle (
    id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    rolle varchar(50) NOT NULL
);

CREATE TABLE person_has_rolle_in_film (
    person_id int NOT NULL,
    film_id int NOT NULL,
    rolle_id int NOT NULL,
    CONSTRAINT PK_film_has_sjanger PRIMARY KEY (person_id, film_id, rolle_id),
    CONSTRAINT FK_person FOREIGN KEY (person_id) REFERENCES person(id),
    CONSTRAINT FK_film_person FOREIGN KEY (film_id) REFERENCES film(id),
    CONSTRAINT FK_rolle FOREIGN KEY (rolle_id) REFERENCES rolle(id)
);

