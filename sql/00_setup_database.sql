# Criação do Banco de Dados e das tabelas

CREATE DATABASE IF NOT EXISTS retail_db;
USE retail_db;

CREATE TABLE vendas_uk (
    Invoice VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate DATETIME,
    Price DECIMAL(10, 2),
    CustomerID INT,
    Country VARCHAR(50),
    Total_Price DECIMAL(10, 2)
);

SELECT * FROM vendas_uk;