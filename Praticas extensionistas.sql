CREATE DATABASE FeiraAdoção;
USE FeiraAdoção;

CREATE TABLE Categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Veterinarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    crm VARCHAR(20) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Animal (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raca VARCHAR(50),
    idade INT,
    saude TEXT,
    foto VARCHAR(255),
    categoria_id INT,
    vet_id INT,
    FOREIGN KEY (categoria_id) REFERENCES Categoria(id),
    FOREIGN KEY (vet_id) REFERENCES Veterinarios(id)
);

CREATE TABLE Adotante (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(15) NOT NULL,
    telefone VARCHAR(15),
    endereco TEXT,
    email VARCHAR(100)
);

CREATE TABLE Adoção (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data DATE NOT NULL,
    status VARCHAR(50) NOT NULL,
    adotante_id INT,
    animal_id INT,
    FOREIGN KEY (adotante_id) REFERENCES Adotante(id),
    FOREIGN KEY (animal_id) REFERENCES Animal(id)
);

CREATE TABLE Historico_Adoção (
    id INT PRIMARY KEY AUTO_INCREMENT,
    adocao_id INT,
    data_inicial DATE,
    data_final DATE,
    status VARCHAR(50),
    FOREIGN KEY (adocao_id) REFERENCES Adoção(id)
);

CREATE TABLE Vacinas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    data_aplicacao DATE NOT NULL,
    validade DATE,
    animal_id INT,
    FOREIGN KEY (animal_id) REFERENCES Animal(id)
);
