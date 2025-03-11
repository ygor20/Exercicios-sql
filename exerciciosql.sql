--Criando o banco de Dados
CREATE DATABASE maternidade;

--Criando as tabelas

CREATE TABLE crianca (
nome VARCHAR (50) NOT NULL,
peso DECIMAL (5,2) NOT NULL,
altura FLOAT,
datanascimento DATE NOT NULL,
id INT (10) PRIMARY KEY
);

CREATE TABLE nascimento (
id INT (10) PRIMARY KEY,
medico VARCHAR (50) NOT NULL,
idcrianca INT(10) NOT NULL, 
idmae INT (10) NOT NULL
);

CREATE TABLE mae (
datanascimento DATE NOT NULL,
id INT (10) PRIMARY KEY,
nome VARCHAR (50) NOT NULL,
endereco VARCHAR (50) NOT NULL,
telefone VARCHAR (15) NOT NULL

);


CREATE TABLE medico (
   id INT (10) PRIMARY KEY,
   nome VARCHAR (50) NOT NULL,
   especialidade VARCHAR (20) NOT NULL,
   crm INT (6) NOT NULL
);

--Inserindo os dados do médico
INSERT INTO medico (id,nome,especialidade,crm)
VALUES("11245","Juliana Alves Albuquerque", "Obstretícia", "123584"),
("11246", "Pedro da Silva Santos", "Nutrologia Pediátrica", "658985"),
("11546", "Vinicius Lima de Oliveira", "Neonatologia", "458755"),
("11468", "Bruna Paes Chavez", "Obstretícia", "246585");

--Deletando registro da especialidade Neonatologia
DELETE FROM medico Where especialidade = "Neonatologia";
-- Deletando dados da tabela medico
DELETE FROM medico;

--Deletando as tabelas 
DROP TABLE medico;
DROP TABLE nascimento;
DROP TABLE crianca;
DROP TABLE mae;

--Apagando banco de dados
DROP DATABASE maternidade; 

