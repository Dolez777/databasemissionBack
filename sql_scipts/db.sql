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

DROP TABLE IF EXISTS games;
CREATE TABLE games (
	id int primary key AUTO_INCREMENT,
    name varchar(100) NOT NULL unique,
    releaseDate date,
    rating decimal(2,2),
    revenue decimal(10,2),
    image VARCHAR(255)
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
INSERT into games (name, genre_id, image) values ("Outlast", 1, "https://cdn.discordapp.com/attachments/958753464316469251/972873669795799090/outlast.jpg");
INSERT into games (name, genre_id, image) values ("CS", 2, "https://cdn.discordapp.com/attachments/958753464316469251/972873859244113990/csgo.jpg");
INSERT into games (name, genre_id, image) values ("Overwatch", 2, "https://cdn.discordapp.com/attachments/958753464316469251/972874151369015406/overwatch.png");
INSERT into games (name, genre_id, image) values ("Apex Legends", 2, "https://cdn.discordapp.com/attachments/958753464316469251/972874278968127518/apex.jpg");
INSERT into games (name, genre_id, image) values ("Call of Duty", 2, "https://cdn.discordapp.com/attachments/958753464316469251/972874363911168060/cod.png");
INSERT into games (name, genre_id, image) values ("DayZ", 2, "https://cdn.discordapp.com/attachments/958753464316469251/972874449349148672/dayz.jpg");
INSERT into games (name, genre_id, image) values ("Dead by Daylight", 1, "https://cdn.discordapp.com/attachments/958753464316469251/972874612247494706/dbd.jpg");
INSERT into games (name, genre_id, image) values ("Dying Light", 1, "https://cdn.discordapp.com/attachments/958753464316469251/972874766220398652/dyinglight.jpg");
INSERT into games (name, genre_id, image) values ("Resident Evil Village", 1, "https://cdn.discordapp.com/attachments/958753464316469251/972874910584172655/revillage.jpg");
INSERT into games (name, genre_id, image) values ("Phasmophobia", 1, "https://cdn.discordapp.com/attachments/958753464316469251/972875269025185842/phasmo.jpg");
INSERT into games (name, genre_id, image) values ("Dota 2", 3, "https://cdn.discordapp.com/attachments/958753464316469251/972875387442978836/dota.jpg");
INSERT into games (name, genre_id, image) values ("Civilization VI", 3, "https://cdn.discordapp.com/attachments/958753464316469251/972875474147627079/civil.jpg");
INSERT into games (name, genre_id, image) values ("Stellaris", 3, "https://cdn.discordapp.com/attachments/958753464316469251/972875635821256764/stellaris.jpg");
INSERT into games (name, genre_id, image) values ("Humankind", 3, "https://cdn.discordapp.com/attachments/958753464316469251/972875788577816596/humankind.jpg");
INSERT into games (name, genre_id, image) values ("Dawn Of Man", 3, "https://cdn.discordapp.com/attachments/958753464316469251/972875928076169296/dawn.jpg");
INSERT into games (name, genre_id, image) values ("Forza Horizon 5", 4, "https://cdn.discordapp.com/attachments/958753464316469251/972876014604664983/forza.jpg");
INSERT into games (name, genre_id, image) values ("iRacing", 4, "https://cdn.discordapp.com/attachments/958753464316469251/972876131856445510/iracing.jpg");
INSERT into games (name, genre_id, image) values ("F1 2020", 4, "https://cdn.discordapp.com/attachments/958753464316469251/972876400354803792/f1.jpg");
INSERT into games (name, genre_id, image) values ("TrackMania 2", 4, "https://cdn.discordapp.com/attachments/958753464316469251/972876558773653594/trackmania2.jpg");
INSERT into games (name, genre_id, image) values ("My Summer Car", 4, "https://cdn.discordapp.com/attachments/958753464316469251/972876665011183626/mysummer.jpg");
INSERT into games (name, genre_id, image) values ("Roblox", 5, "https://cdn.discordapp.com/attachments/958753464316469251/972876780904017951/rob.jpg");
INSERT into games (name, genre_id, image) values ("Undertale", 5, "https://cdn.discordapp.com/attachments/958753464316469251/972876880401285150/under.jpg");
INSERT into games (name, genre_id, image) values ("Elden Ring", 5, "https://cdn.discordapp.com/attachments/958753464316469251/972876961120682074/elden.jpg");
INSERT into games (name, genre_id, image) values ("The Witcher 3: Wild Hunt", 5, "https://cdn.discordapp.com/attachments/958753464316469251/972877040443330631/witcher.jpg");
INSERT into games (name, genre_id, image) values ("Dark Souls", 5, "https://cdn.discordapp.com/attachments/958753464316469251/972877165324542002/darksouls.jpg");
INSERT into games (name, genre_id, image) values ("Super Smash Bros. Ultimate", 6, "https://cdn.discordapp.com/attachments/958753464316469251/972877260891775097/supersmash.jpg");
INSERT into games (name, genre_id, image) values ("Dead or Alive 6", 6, "https://cdn.discordapp.com/attachments/958753464316469251/972877382925049876/deadoralive.jpg");
INSERT into games (name, genre_id, image) values ("Dragon Ball FighterZ", 6, "https://cdn.discordapp.com/attachments/958753464316469251/972877464185503855/dragonball.jpg");
INSERT into games (name, genre_id, image) values ("The Last Blade", 6, "https://cdn.discordapp.com/attachments/958753464316469251/972877592589926520/thelastblade.jpg");
INSERT into games (name, genre_id, image) values ("Mortal Kombat 11", 6, "https://cdn.discordapp.com/attachments/958753464316469251/972877690128449556/mortal.jpg");
INSERT into games (name, genre_id, image) values ("World of Warcraft", 7, "https://cdn.discordapp.com/attachments/958753464316469251/972877833242300416/wow.jpg");
INSERT into games (name, genre_id, image) values ("The Elder Scrolls Online", 7, "https://cdn.discordapp.com/attachments/958753464316469251/972877970085658705/elderscrolls.jpg");
INSERT into games (name, genre_id, image) values ("Black Desert Online", 7, "https://cdn.discordapp.com/attachments/958753464316469251/972878063358607420/blackdesert.jpg");
INSERT into games (name, genre_id, image) values ("RuneScape", 7, "https://cdn.discordapp.com/attachments/958753464316469251/972878177208795136/rune.jpg");
INSERT into games (name, genre_id, image) values ("Lost Ark", 7, "https://cdn.discordapp.com/attachments/958753464316469251/972878309903982612/lostark.jpg");
INSERT into games (name, genre_id, image) values ("Life Is Strange", 8, "https://cdn.discordapp.com/attachments/958753464316469251/972878408138776636/lifeisstrange.jpg");
INSERT into games (name, genre_id, image) values ("Red Dead Redemption 2", 8, "https://cdn.discordapp.com/attachments/958753464316469251/972878532734775346/reddead.jpg");
INSERT into games (name, genre_id, image) values ("The Room", 8, "https://cdn.discordapp.com/attachments/958753464316469251/972878744891056148/theroom.jpg");
INSERT into games (name, genre_id, image) values ("Lake", 8, "https://cdn.discordapp.com/attachments/958753464316469251/972878841787842611/lake.jpg");
INSERT into games (name, genre_id, image) values ("Firewatch", 8, "https://cdn.discordapp.com/attachments/958753464316469251/972878923144781874/firewatch.jpg");