create database agencia_de_viagens;
use agencia_de_viagens;
create table passageiro(
id_passageiro int not null auto_increment,
nome varchar(100),
idade varchar(3),
sexo char (1),
rg varchar(11),
primary key (id_passageiro)
);

desc passageiro;

create table viagem(
id_viagem int not null auto_increment,
cod_passageiro int,
data_viagem date,
poltrona varchar(100),
valor float,
primary key (id_viagem)
);

desc viagem; 

create table destino(
id_destino int not null auto_increment,
cod_passageiro int,
cidade varchar(100),
estado varchar(100),
primary key (id_destino)
);

desc destino;

create table pacote_viagem(
id_pacote int not null auto_increment,
cod_destino int,
cod_viagem int,
nome_pacote varchar(100),
primary key (id_pacote)
);

desc pacote_viagem;

alter table viagem add foreign key (cod_passageiro) references
passageiro (id_passageiro);

alter table destino add foreign key (cod_passageiro) references
passageiro (id_passageiro);
 
 alter table pacote_viagem add foreign key (cod_destino) references
destino (id_destino);
 
 alter table pacote_viagem add foreign key (cod_viagem) references
viagem (id_viagem);
 
 insert into passageiro (nome, idade, sexo, rg) values
('Kauã','17','M','1.233.456.6-12');

insert into passageiro (nome, idade, sexo, rg) values
('Talita','17','F','1.333.543.1-22');

insert into passageiro (nome, idade, sexo, rg) values
('Rodrigo','29','M','1.555.654.6-9');

insert into passageiro (nome, idade, sexo, rg) values
('Lorraine','24','F','1.213.212.8-9');

select * from passageiro;

insert into viagem (data_viagem, poltrona, valor, cod_passageiro) values
('2025-12-22','12','111.00','3');

insert into viagem (data_viagem, poltrona, valor, cod_passageiro) values
('2025-12-12','13','170.00','2');

insert into viagem (data_viagem, poltrona, valor, cod_passageiro) values
('2025-12-10','4','600.00','4');

insert into viagem (data_viagem, poltrona, valor, cod_passageiro) values
('2025-12-12','45','300,00','1');

select * from viagem;

insert into destino (cidade, estado, cod_passageiro) values
('Curitiba','Gramados','3');

insert into destino (cidade, estado, cod_passageiro) values
('Curitiba','Gramados','2');

insert into destino (cidade, estado, cod_passageiro) values
('Curitiba','Gramados','4');

insert into destino (cidade, estado, cod_passageiro) values
('Curitiba','Gramados','1');

select * from destino;

insert into pacote_viagem (nome_pacote, cod_destino, cod_viagem) values
('Natal','2','4');

insert into pacote_viagem (nome_pacote, cod_destino, cod_viagem) values
('Natal','4','2');

insert into pacote_viagem (nome_pacote, cod_destino, cod_viagem) values
('Natal','3','1');

insert into pacote_viagem (nome_pacote, cod_destino, cod_viagem) values
('Natal','1','3');

select * from pacote_viagem;


select viagem.id_viagem, passageiro.nome, viagem.data_viagem
FROM viagem
INNER JOIN passageiro ON viagem.cod_passageiro=passageiro.id_passageiro;
 
 
 