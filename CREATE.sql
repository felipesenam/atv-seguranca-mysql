DROP DATABASE IF EXISTS PAGAMENTOS;
CREATE DATABASE PAGAMENTOS;
USE PAGAMENTOS;

CREATE TABLE CADASTRO (
    idCadastro int not null auto_increment,
    nome varchar(60) not null,
    CPF varchar(11) not null,
    telefone varchar(20),
    email varchar(60),

    Primary Key (idCadastro)
);

CREATE TABLE EMPREGADOS (
    idEmpregados int not null auto_increment,
    cadastro_idCadastro int not null,

    Primary Key (idEmpregados),
    Foreign Key (cadastro_idCadastro) REFERENCES CADASTRO (idCadastro)
);

CREATE TABLE PAGAMENTOS (
    idPagamentos int not null auto_increment,

    Primary Key (idPagamentos)
);

CREATE TABLE CLIENTES (
    idClientes int not null auto_increment,
    cadastro_idCadastro int not null,

    Primary Key (idClientes),
    Foreign Key (cadastro_idCadastro) REFERENCES CADASTRO (idCadastro)
);

CREATE TABLE DESCONTOS (
    idDescontos int not null auto_increment,

    Primary Key (idDescontos)
);


