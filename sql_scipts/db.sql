-- CREATE TABLES

DROP DATABASE IF EXISTS gamedp;


CREATE DATABASE gamedp;

-- Person table
USE gamedp;

DROP TABLE IF EXISTS users;

CREATE TABLE users(  
    ID int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(150) UNIQUE,
    password VARCHAR(150),
    admin int(0)
);

INSERT into users (username, password) values ("admin", "qwerty");


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



insert into genre (name) values ("Kauhupelit");
insert into genre (name) values ("FPS");
insert into genre (name) values ("Strategiapelit");
insert into genre (name) values ("Ajopelit");
insert into genre (name) values ("Roolipelit");
insert into genre (name) values ("Tappelupelit");
insert into genre (name) values ("MMO");
insert into genre (name) values ("Seikkailupelit");

INSERT into games (name, genre_id) values ("Outlast", 1);
INSERT into games (name, genre_id) values ("CS", 2);
INSERT into games (name, genre_id) values ("Overwatch", 2);
INSERT into games (name, genre_id) values ("Apex Legends", 2);
INSERT into games (name, genre_id) values ("Call of Duty", 2);
INSERT into games (name, genre_id) values ("DayZ", 2);
INSERT into games (name, genre_id) values ("Dead by Daylight", 1);
INSERT into games (name, genre_id) values ("Dying Light", 1);
INSERT into games (name, genre_id) values ("Resident Evil Village", 1);
INSERT into games (name, genre_id) values ("Phasmophobia", 1);
INSERT into games (name, genre_id) values ("Dota 2", 3);
INSERT into games (name, genre_id) values ("Civilization VI", 3);
INSERT into games (name, genre_id) values ("Stellaris", 3);
INSERT into games (name, genre_id) values ("Humankind", 3);
INSERT into games (name, genre_id) values ("Dawn Of Man", 3);
INSERT into games (name, genre_id) values ("Forza Horizon 5", 4);
INSERT into games (name, genre_id) values ("iRacing", 4);
INSERT into games (name, genre_id) values ("F1 2020", 4);
INSERT into games (name, genre_id) values ("TrackMania 2", 4);
INSERT into games (name, genre_id) values ("My Summer Car", 4);
INSERT into games (name, genre_id) values ("Roblox", 5);
INSERT into games (name, genre_id) values ("Undertale", 5);
INSERT into games (name, genre_id) values ("Elden Ring", 5);
INSERT into games (name, genre_id) values ("The Witcher 3: Wild Hunt", 5);
INSERT into games (name, genre_id) values ("Dark Souls", 5);
INSERT into games (name, genre_id) values ("Super Smash Bros. Ultimate", 6);
INSERT into games (name, genre_id) values ("Dead or Alive 6", 6);
INSERT into games (name, genre_id) values ("Dragon Ball FighterZ", 6);
INSERT into games (name, genre_id) values ("The Last Blade", 6);
INSERT into games (name, genre_id) values ("Mortal Kombat 11", 6);
INSERT into games (name, genre_id) values ("World of Warcraft", 7);
INSERT into games (name, genre_id) values ("The Elder Scrolls Online", 7);
INSERT into games (name, genre_id) values ("Black Desert Online", 7);
INSERT into games (name, genre_id) values ("RuneScape", 7);
INSERT into games (name, genre_id) values ("Lost Ark", 7);
INSERT into games (name, genre_id) values ("Life Is Strange", 8);
INSERT into games (name, genre_id) values ("Red Dead Redemption 2", 8);
INSERT into games (name, genre_id) values ("The Room", 8);
INSERT into games (name, genre_id) values ("Lake", 8);
INSERT into games (name, genre_id) values ("Firewatch", 8);