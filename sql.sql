-- 1. Criar Banco de Dados: CREATE DATABASE
/*CREATE DATABASE Supermercado;*/
USE Supermercado;

-- 2. Criar Tabelas: CREATE TABLE
/*CREATE TABLE Fornecedores (
    Cod_Fornec SMALLINT PRIMARY KEY AUTO_INCREMENT,
    Nome_Fornec VARCHAR(50)
);

CREATE TABLE Produtos (
	ID_Prod SMALLINT PRIMARY KEY AUTO_INCREMENT,
    Nome_Prod VARCHAR(50) NOT NULL,
    Quant_Prod VARCHAR(50) NOT NULL,
    Preco_Prod DECIMAL(10,2),
    Cod_Fornec SMALLINT,
    CONSTRAINT fk_cod_fornec FOREIGN KEY (Cod_Fornec) 
    REFERENCES Fornecedores(Cod_Fornec)
);

-- 3. Inserir dados nas tabelas: INSERT INTO
INSERT INTO Fornecedores (Cod_Fornec, Nome_Fornec)
VALUES (1,"Acme");

INSERT INTO Produtos
VALUE 
(100, "Monitor LCD", 12, 550.00, 1),
(101, "Roteador", 8, 130.00, 1),
(102, "Teclado", 15, 40.00, 1),
(103, "Pendrive", 22, 48.00, 1),
(104, "Webcam", 6, 170.00, 1);

-- 4. Efetuar consulta trazendo colunas especificas
SELECT Nome_Fornec FROM fornecedores;
SELECT Nome_Prod, Preco_Prod FROM produtos;
SELECT Nome_Prod FROM produtos WHERE ID_Prod = 104;

UPDATE produtos SET Preco_Prod = 300.00 WHERE ID_Prod = 100;

DELETE FROM produtos WHERE ID_Prod = 101;

SELECT Nome_Prod, Nome_Fornec FROM fornecedores
INNER JOIN produtos
ON fornecedores.Cod_Fornec = produtos.Cod_Fornec;*/

SELECT Nome_Prod, Preco_Prod
FROM produtos
ORDER BY Preco_Prod;
