-- Criar Tabela
CREATE DATABASE Gerenciamento;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessar Banco de Dados
USE Gerenciamento;

-- Criar Tabela
CREATE TABLE Clientes (
    ClienteID INT auto_increment PRIMARY KEY,
    PedidoID int,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Telefone VARCHAR(30) NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidosID)
);

CREATE TABLE Pedidos(
    PedidoID INT auto_increment PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    ValorTotal DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserindo Registros
INSERT INTO Clientes (ClienteID, Nome, Email, Telefone)
VALUES
    (1, 'Bruno Silva', 'Brunivis@gmail.com', '71 98522-6776'),
    (2, 'Maria damasceno', 'maria@gmail.com', '71 98357-4080'),
    (3, 'Matheus Lima', 'Matheus@gmail.com', '71 99235-4040'),
    (4, 'Ana Oliveira', 'ana@gmail.com', '71 98231-2990'),
    (5, 'Carlos Anderson', 'professor @gmail.com', '71 98205-2502');

-- Trazer todos os dados
SELECT * FROM Clientes;

-- APAGAR TABELA
DROP TABLE Clientes;


