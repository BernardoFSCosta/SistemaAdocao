-- Criaçao database:
CREATE DATABASE db_adocoes;

-- Selecao database:
USE db_adocoes;

-- Criacao das tabelas:
CREATE TABLE veterinarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    crm VARCHAR(20),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animal (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    especie VARCHAR(50),
    raca VARCHAR(50),
    idade INT,
    saude TEXT,
    statos VARCHAR(20),
    categoria_id INT,
    vet_id INT,
    FOREIGN KEY (vet_id) REFERENCES veterinarios(id)
);

CREATE TABLE vacinas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    data_aplicacao VARCHAR(20),
    validade VARCHAR (5),
    animal_id INT,
    FOREIGN KEY (animal_id) REFERENCES animal(id)
);

CREATE TABLE adotante (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(15),
    telefone VARCHAR(15),
    Cidade VARCHAR(50),
    Bairro VARCHAR(50),
    Endereço VARCHAR(50),
    Numero INT,
    email VARCHAR(100)
);

CREATE TABLE historico_adocao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(20),
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(100),
    numero VARCHAR(10),
    uf VARCHAR(5),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    id_animal INT
);

-- Selecao das tabelas:
SELECT * FROM animal;
SELECT * FROM veterinarios;
SELECT * FROM vacinas;
SELECT * FROM historico_adocao;
SHOW TABLES;

-- Insercao de dados na tabela animal: 
INSERT INTO animal (id, nome, especie, raca, idade, saude, statos) VALUES 
(NULL, 'N/A', 'Cachorro', 'Labrador', 2, 'Saudável', 'N/A'),
(NULL, 'N/A', 'Cachorro', 'Poodle', 4, 'Necessita acompanhamento', 'N/A'),
(NULL, 'N/A', 'Cachorro', 'Bulldog', 3, 'Saudável', 'N/A'),
(NULL, 'N/A', 'Cachorro', 'Beagle', 1, 'Vacinado', 'N/A'),
(NULL, 'N/A', 'Cachorro', 'Pastor Alemão', 5, 'Doença de pele', 'N/A'),
(NULL, 'N/A', 'Cachorro', 'Golden Retriever', 3, 'Saudável', 'N/A'),
(NULL, 'N/A', 'Cachorro', 'Dachshund', 4, 'Problemas de coluna', 'N/A'),
(NULL, 'N/A', 'Cachorro', 'Husky Siberiano', 5, 'Problemas cardíacos', 'N/A'),
(NULL, 'N/A', 'Gato', 'Persa', 2, 'Saudável', 'N/A'),
(NULL, 'N/A', 'Gato', 'Siamês', 3, 'Vacinado', 'N/A'),
(NULL, 'N/A', 'Gato', 'Angorá', 1, 'Recuperando cirurgia', 'N/A'),
(NULL, 'N/A', 'Gato', 'Maine Coon', 4, 'Saudável', 'N/A'),
(NULL, 'N/A', 'Gato', 'Vira-lata', 5, 'Doença renal', 'N/A'),
(NULL, 'N/A', 'Gato', 'Bengal', 2, 'Doença respiratória', 'N/A'),
(NULL, 'N/A', 'Gato', 'Ragdoll', 1, 'Saudável', 'N/A');

-- Insercao de dados na tabela veterinarios: 
INSERT INTO veterinarios (id, nome, crm, telefone, email) VALUES
(NULL, 'Dr. João Silva', 'CRM12345', '(11) 91234-5678', 'joao.silva@vetclinic.com'),
(NULL, 'Dra. Ana Costa', 'CRM67890', '(21) 98765-4321', 'ana.costa@vetclinic.com'),
(NULL, 'Dr. Pedro Lima', 'CRM54321', '(31) 99876-5432', 'pedro.lima@vetclinic.com');

-- Insercao de dados na tabela vacina:
INSERT INTO vacinas ( id, nome, data_aplicacao, validade, animal_id) VALUES
(NULL, 'Multipla-V3', 'Segunda-Feira', '1Ano', NULL),
(NULL, 'Multipla-V4', 'Terça-Feira', '1Ano', NULL),
(NULL, 'Multipla-V5', 'Quarta-Feira', '1Ano', NULL),
(NULL, 'Multipla-V8-v10', 'Quinta-Feira', '1Ano', NULL),
(NULL, 'Antiarrabica', 'Sexta-Feira', '1Ano', NULL),
(NULL, 'Vermifugo', 'Sabado', '1Ano', NULL);