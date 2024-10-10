create database entrevista;
use entrevista;
create table cliente(
id_cliente int not null auto_increment,
nome varchar(100),
sexo char(1),
data_nasc date,
primary key (id_cliente)
);
desc cliente;

create table endereco(
id_endereco int not null auto_increment,
cod_cliente int,
rua varchar(100),
numero_casa varchar(10),
cep varchar(15),
bairro varchar(50),
cidade varchar(50),
estado varchar(50),
primary key(id_endereco)
);
desc endereco;

create table telefone(
id_telefone int not null auto_increment,
cod_cliente int,
telefone1 varchar(15),
telefone2 varchar(15),
primary key(id_telefone)
);
desc telefone;

alter table telefone add foreign key (cod_cliente) references
cliente (id_cliente);

alter table endereco add foreign key (cod_cliente) references
cliente (id_cliente);

insert into cliente (nome, sexo, data_nasc)values
('vitinho da granada','M','2007-07-28');

insert into cliente (nome, sexo, data_nasc)values
('Lolo','F','2007-06-11');

select * from cliente;

insert into endereco (cod_cliente, rua, numero_casa, cep, bairro, cidade, estado)
values ('1','Av. domingos peneda','1001','83209-000','estradinha','paranaguá','pr');

select * from endereco;

insert into telefone (cod_cliente, telefone1, telefone2)values
('1','25874127','(25698741');

insert into telefone (cod_cliente, telefone1, telefone2)values
('2','587412369','589632147');

select * from telefone;











