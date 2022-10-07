-- Comandos Uteis
create database db_g4c default character set utf8 collate utf8_general_ci;

USE db_g4c;

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(16) DEFAULT NULL,
  `cpassword` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP Table `user`;

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
  
ALTER TABLE `user`
 MODIFY `id` int NOT NULL AUTO_INCREMENT;

select * from `user`;

SELECT `id`, `username`, `email`, `password`, `cpassword` FROM `user` WHERE `username` = 'romeu' and `password` = '123456'; 




describe `user`;

insert into `user` (`id`, `username`, `email`, `password`, `cpassword`) values(1,'joel', 'j@gmail.com', '123456', '123456'); 
insert into `user` (`id`, `username`, `email`, `password`, `cpassword`) values(2,'romeu', 'shakispere@gmail.com', '123456', '123456'); 

-- Comandos caso necessário
drop database db_g4c;
drop database db_g4c;