DROP DATABASE eles;

CREATE DATABASE eles;
USE eles;

CREATE TABLE usuario(
idUsuario INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
senha VARCHAR(45),
email VARCHAR(100),
cpf CHAR(14),
telefone CHAR(14)
);

CREATE TABLE categorias(
idCategorias INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(40));

CREATE TABLE produto(
idProduto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(45),
categoria VARCHAR(40),
descricao tinytext,
preco float,
estoque int,
fkIdCategorias INT,
FOREIGN KEY (fkIdCategorias) REFERENCES categorias(idCategorias));

INSERT INTO usuario (nome,senha,email,cpf,telefone) VALUES
('admin','admin','adm','1','1');

INSERT INTO produto (nome, categoria, descricao, preco, estoque) 
VALUES ('Jogo de Rodas Off-Road 18"', 'Acessórios', 'Conjunto de quatro rodas off-road de 18 polegadas', 799.99, 8),
('Jogo de Rodas Off-Road 18"', 'Acessórios', 'Conjunto de quatro rodas off-road de 18 polegadas', 799.99, 8),
('teste', 'teste', 'Conjunto de quatro rodas off-road de 18 polegadas', 199.99, 8);

INSERT INTO categorias (nome) VALUES
('Rodas'),
('Acessórios');

SELECT * FROM USUARIO;
