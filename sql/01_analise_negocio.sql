-- ==================

-- 1. O Raio-X (KPIs Gerais)
-- Pergunta: Qual foi o faturamento Total, Quantidade de Pedidos e Clientes Únicos?

-- ==================

SELECT
	COUNT(DISTINCT CustomerID) AS clientes_unicos,
	COUNT(DISTINCT Invoice) AS quantidade_pedidos,
	SUM(Total_Price) AS faturamento_total
FROM vendas_uk;

-- ==================

-- 2. A Tendência (Sazonalidade)
-- Pergunta: Qual o faturamento mensal?

-- ==================

SELECT
	DATE_FORMAT(InvoiceDate, '%Y-%m') AS mes,
	SUM(Total_Price) AS faturamento_mensal
FROM vendas_uk
GROUP BY DATE_FORMAT(InvoiceDate, '%Y-%m')
ORDER BY faturamento_mensal DESC;

-- ==================

-- 3. Os Campeões de Venda
-- Pergunta: Quais são os 10 produtos que mais faturaram?
	
-- ==================

SELECT
	Description AS descricao_produto,
	SUM(Total_Price) AS faturamento
FROM vendas_uk
GROUP BY Description 
ORDER BY faturamento DESC
LIMIT 10;

-- ==================

-- 4. O Valor do Cliente (Ticket Médio)
-- Pergunta: Em média, qual o valor de um pedido na loja?

-- ==================

SELECT
	ROUND(SUM(Total_Price) / COUNT(DISTINCT Invoice), 2) AS Ticket_Medio
FROM vendas_uk;

-- ==================

-- 5. A Base do RFM (ESSENCIAL PARA O PYTHON)
-- Pergunta: Gere uma lista com ID do Cliente, Data da Última Compra, 
-- Qtd de Pedidos e Gasto Total.

-- ==================

SELECT
	CustomerID AS id_cliente,
	MAX(InvoiceDate) AS data_ultima_compra,
	COUNT(DISTINCT Invoice) AS quantidade_pedidos,
	SUM(Total_Price) AS gasto_total
FROM vendas_uk
GROUP BY CustomerID 
ORDER BY gasto_total DESC;














