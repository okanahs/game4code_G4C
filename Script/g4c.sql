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


create table pergunta1 (
    id Integer not null auto_increment,
    cabecalho Varchar(255) not null,
    a Varchar(255) not null,
    b Varchar(255) not null,
    c Varchar(255) not null,
    d Varchar(255) not null,
    op Varchar(255) not null,
	primary key (id)
    );

select * from users;
select * from pergunta1;
select * from pergunta;
select * from codigo;


