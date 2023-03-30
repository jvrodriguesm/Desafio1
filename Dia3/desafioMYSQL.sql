CREATE DATABASE mercado;

USE mercado;

CREATE TABLE Dados(
	Nome VARCHAR(50),
    Cidade VARCHAR(30),
    Estado VARCHAR(2),
    id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Item(
	Nome VARCHAR(30),
    Peso_Em_Gramas INT,
    Validade DATE,
    id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE Cliente(
	Nome VARCHAR(40),
    Sexo CHAR,
    Número_de_celular VARCHAR(20) PRIMARY KEY
);

ALTER TABLE Dados ADD COLUMN Rua VARCHAR(60);
ALTER TABLE Item ADD COLUMN Marca VARCHAR(30);
ALTER TABLE Cliente ADD COLUMN Email VARCHAR(30);

INSERT INTO Dados (Nome, Cidade, Estado, Rua)
VALUES
('BeMais', 'João Pessoa','PB','Av. Mariângela Lucena Peixoto'),
('Pague Menos', 'João Pessoa','PB','R. Cel. Augusto Fernandes Maia'),
('BeMais','João Pessoa','PB', 'R. Enfermeira Ana Maira Barbosa de Almeida'),
('BeMais','Recife','PE','R. Inspetor José Serqueira');

INSERT INTO Item (Nome, Peso_Em_Gramas, Validade, Marca)
VALUES
('Treloso', 130,'2022-10-10', 'Vitarella'),
('Pippos', 25, '2023-10-10', 'São Braz'),
('Oreo',90, '2024-05-05', 'Nabisco');

INSERT INTO Cliente (Nome, Sexo, Número_de_celular, Email)
VALUES
('João Vitor', 'M', '(83)998267522' ,'jvrmviana17@hotmail.com'),
('Letícia Cavalcante', 'F', '(83)953477312' ,'leticiac@hotmail.com'),
('Brenno José', 'M', '(83)912458812' ,'BrennoVaz@hotmail.com');

ALTER TABLE Dados DROP COLUMN Cidade;
ALTER TABLE Item DROP COLUMN Validade;
ALTER TABLE Cliente DROP COLUMN Email;

SELECT * FROM Dados;
SELECT * FROM Item;
SELECT * FROM Cliente;

SELECT * FROM Dados WHERE Estado = 'PB';
SELECT * FROM Item WHERE Marca = 'São Braz';
SELECT * FROM Cliente WHERE Sexo = 'F';

SELECT * FROM ds_salaries