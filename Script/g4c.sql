-- Active: 1667498029693@@127.0.0.1@3306@flask_login

CREATE database flask_login;

USE flask_login;

CREATE TABLE users(
	id INTEGER  NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE pergunta(
	id INTEGER  AUTO_INCREMENT,
    pergunta VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
  

CREATE TABLE codigo(
	id INTEGER  AUTO_INCREMENT,
    codigo VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);



drop table users;
drop table pergunta;
drop table codigo;

select * from users;
select * from pergunta;
select * from codigo;
