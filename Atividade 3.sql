-- Criar Banco de Dados
CREATE DATABASE Departamento;

-- Usar o banco de dados

USE Comentarios;

CREATE TABLE Departamentos (
    DepartamentoID INT PRIMARY KEY,
    NomeDepartamento VARCHAR(255)
);

CREATE TABLE Funcionarios (
    FuncionarioID INT PRIMARY KEY,
    Nome VARCHAR(50),
    Cargo VARCHAR(50),
    Salario DECIMAL(10, 2),
    DepartamentoID INT,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);


INSERT INTO Departamentos (DepartamentoID, NomeDepartamento)
VALUES
    (1, 'RH'),
    (2, 'Financeiro'),
    (3, 'Vendas'),
    (4, 'TI'),
    (5, 'Marketing');


INSERT INTO Funcionarios (FuncionarioID, Nome, Cargo, Salario, DepartamentoID)
VALUES
    (1, 'Funcionario1', 'Gerente', 6000.00, 1),
    (2, 'Funcionario2', 'Analista', 4500.00, 2),
    (3, 'Funcionario3', 'Vendedor', 3500.00, 3),
    (4, 'Funcionario4', 'Programador', 5000.00, 4),
    (5, 'Funcionario5', 'Marketeiro', 4000.00, 5);
    
-- Trazer todos os dados dos Funcionários
   SELECT * FROM Funcionarios;
   
-- Trazer todos os Dados do Departamento
SELECT * FROM Departamentos;

