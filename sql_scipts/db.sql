-- CREATE TABLES


DROP TABLE IF EXISTS gamedp;


CREATE DATABASE gamedp

-- Person table

DROP TABLE IF EXISTS person;

CREATE TABLE person (
     ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
     username VARCHAR(150), NOT NULL, UNIQUE,
     password VARCHAR(150), NOT NULL,

);

CREATE TABLE games(
	game_id int NOT NULL AUTO_INCREMENT UNIQUE,
    game_name varchar(100) NOT NULL,
    releaseDate date,
    rating decimal(2,2),
    revenue decimal(10,2),
    PRIMARY KEY (game_id)
);

CREATE TABLE genre(
	genre_id int not null AUTO_INCREMENT UNIQUE,
    genre_name varchar(100) not null,
    primary key (genre_id)
);

CREATE TABLE system(
	system_id int not null AUTO_INCREMENT UNIQUE,
    system_name varchar(100) not null,
    type varchar(100),
    releasedate date,
    primary key (system_id)
);

ALTER TABLE games
ADD system_id int,
ADD FOREIGN key (system_id) REFERENCES system(system_id)

ALTER TABLE games
ADD genre_id int,
ADD FOREIGN key (genre_id) REFERENCES genre(genre_id)

insert into genre (genre_name) values ("Kauhu");
insert into genre (genre_name) values ("FPS");

INSERT into games (game_name, genre_id) values ("Outlast", 1);
INSERT into games (game_name, genre_id) values ("CS", 2);