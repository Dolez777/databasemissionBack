-- CREATE TABLES

DROP DATABASE IF EXISTS gamedp;


CREATE DATABASE gamedp;

-- Person table
USE gamedp;

DROP TABLE IF EXISTS administrator;

CREATE TABLE administrator(  
    ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(150),
    lastname VARCHAR(150),
    username VARCHAR(150) UNIQUE,
    password VARCHAR(150)
);


CREATE TABLE games (
	id int primary key AUTO_INCREMENT,
    name varchar(100) NOT NULL unique,
    releaseDate date,
    rating decimal(2,2),
    revenue decimal(10,2)
);

CREATE TABLE genre (
	id int primary key AUTO_INCREMENT,
    name varchar(100) not null unique
);

CREATE TABLE system (
	id int primary key AUTO_INCREMENT,
    name varchar(100) not null unique,
    type varchar(100),
    releasedate date
);

ALTER TABLE games
ADD system_id int,
ADD genre_id int,
ADD FOREIGN key (system_id) REFERENCES system(id),
ADD FOREIGN key (genre_id) REFERENCES genre(id);



insert into genre (name) values ("Kauhu");
insert into genre (name) values ("FPS");

INSERT into games (name, genre_id) values ("Outlast", 1);
INSERT into games (name, genre_id) values ("CS", 2);