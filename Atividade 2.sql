-- Criar Banco de Dados
CREATE DATABASE Comentarios;

-- Usar o banco de dados

USE Comentarios;

-- Tabela Artigos_diego
CREATE TABLE Artigos_diego (
    ArtigoID INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Conteudo TEXT,
    DataPublicacao DATE
);

-- Tabela Comentarios_diego
CREATE TABLE Comentarios_diego (
    ComentarioID INT PRIMARY KEY,
    ArtigoID INT,
    Autor VARCHAR(50),
    Texto TEXT,
    DataComentario DATE,
    FOREIGN KEY (ArtigoID) REFERENCES Artigos_diego(ArtigoID)
);

-- Inserir registros na tabela Artigos_diego
INSERT INTO Artigos_diego (ArtigoID, Titulo, Conteudo, DataPublicacao)
VALUES
    (1, 'Barcelona ou real madrid', 'Vamos dissertar um pouco sobre por que o Barça é melhor que o Real Madrid', '2005-04-30'),
    (2, 'Por que não tomar café de manhã?', 'Basicamente vamos mostrar por que não tomar café de manhã, mais abaixo você verá o motivo', '2014-04-17'),
    (3, 'Como treinar o seu dragão', 'No conteúdo de hoje, vamos mostrar como treinar o seu dragão', '2026-07-16'),
    (4, 'Lula x Bolsonaro', 'Hoje veremos um conteúdo sobre Lula x Bolsonaro', '2022-05-10'),
    (5, 'Qual o motivo de existir uma sexta-feira?', 'Para que seja possível haver uma aula de Carlão', '2023-09-08');

-- Inserir registros na tabela Comentarios_diego
INSERT INTO Comentarios_diego (ComentarioID, ArtigoID, Autor, Texto, DataComentario)
VALUES
    (1, 1, 'Carlos Anderson', 'Muito interessante, não sabia que o Barcelona era tão bom', '2023-04-08'),
    (2, 1, 'Faz o L', 'Eu prefiro o Real, porém máximo de respeito ao Barcelona', '2022-12-19'),
    (3, 2, 'Bolota', 'Eu prefiro a modelagem conceitual para tomar café', '2023-09-10'),
    (4, 3, 'Negro01', 'Faz o L agora po', '2025-07-12'),
    (5, 4, 'Anonimo', 'Nada a declarar', '2022-12-12');
    
    
-- Trazer todos os dados
 SELECT * FROM Artigos_diego;
 
 -- Mostrar comentarios
 SELECT * FROM Comentarios_diego;

-- Apagar Tabela
DROP TABLE Comentarios_diego;

DROP TABLE Artigos_diego;