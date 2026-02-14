Análise de Segmentação de Clientes e RFM
Este repositório contém a análise completa de uma base de varejo, focada em segmentação de clientes para estratégias de retenção e recuperação de receita.

O projeto foi estruturado em três etapas: limpeza de dados, análise exploratória (RFM) e construção de um dashboard executivo para monitoramento de KPIs.

Contexto e Problema de Negócio
O objetivo principal foi responder à pergunta: Como classificar a base de clientes para otimizar ações de marketing e vendas?

A partir de dados transacionais, buscamos identificar perfis de consumo e isolar grupos críticos, como clientes de alto valor (VIPs) e clientes em risco de churn (inativos recentes).

Principais Descobertas:

Receita em Risco: Detectamos aproximadamente 31 Milhões em potencial de faturamento retido em clientes classificados como "Risco de Churn" ou "Inativos".

Ticket Médio: O ticket médio global é de 556,03, mas a segmentação revelou que o grupo "VIP/Elite" sustenta tickets significativamente superiores, validando a estratégia de retenção focada neste grupo.

Tendência: A análise temporal mostrou uma estabilização no crescimento do faturamento no último período, indicando a necessidade de reativação da base inativa.

Estrutura do Projeto
O repositório está organizado para reproduzir o pipeline de dados de ponta a ponta:

1. Notebooks (Python)
01_data_cleaning.ipynb: Processamento inicial dos dados brutos. Inclui tratamento de valores nulos, conversão de tipos de dados e remoção de registros inconsistentes.

02_eda_rfm.ipynb:

Cálculo das métricas de Recência (dias desde a última compra), Frequência (quantidade de compras) e Monetário (valor total gasto).

Aplicação das regras de segmentação para classificar os clientes em grupos como "VIP", "Promissor", "Em Risco", etc.

2. Dashboard (Power BI)
Customer_Intelligence_Hub.pbix: Arquivo do Power BI contendo o modelo de dados (relacionamento entre tabela Fato e Dimensão) e as visualizações finais.

O dashboard foi desenhado com foco em usabilidade executiva, destacando os KPIs de topo e permitindo drill-down através da Matriz de Dispersão.

3. Dados
rfm_segmentacao_final.csv: Base final processada contendo o ID do cliente e sua respectiva classificação, pronta para consumo no Power BI.

Visualização Final
O painel abaixo consolida as análises, permitindo filtrar a base de clientes por segmento e entender o impacto financeiro de cada grupo.

Tecnologias
Python (Pandas, NumPy)

Power BI (DAX, Modelagem de Dados)

SQL (para consultas exploratórias iniciais)