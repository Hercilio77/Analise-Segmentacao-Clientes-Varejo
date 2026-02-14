# Análise de Segmentação de Clientes e Estratégia de Varejo

## Visão Geral do Projeto
Este projeto apresenta uma solução completa de análise de dados para o setor varejista, focada na identificação de perfis de consumo e estratégias de retenção. O objetivo principal foi utilizar dados históricos de transações para segmentar a base de clientes através da metodologia RFM (Recência, Frequência e Monetário), permitindo ações de marketing direcionadas para recuperação de receita.

## Problema de Negócio
A empresa enfrentava dificuldades em rentabilizar sua base ativa e carecia de visibilidade sobre o comportamento de compra dos clientes. Não haviam métricas claras para distinguir clientes fiéis de clientes em risco de churn (cancelamento).

A análise buscou responder:

1. Quem são os clientes mais valiosos para o negócio?
2. Qual o volume de receita em risco (clientes inativos)?
3. Quais ações podem ser tomadas para cada grupo de comportamento?

## Metodologia e Ferramentas
O desenvolvimento seguiu o pipeline clássico de dados:

**Extração e Armazenamento (SQL/MySQL):** Consultas para extração, filtragem e agregação dos dados brutos transacionais.

**Processamento e Análise (Python):** Limpeza de dados, tratamento de nulos, engenharia de atributos e cálculo dos scores RFM utilizando Pandas e NumPy.

**Visualização (Power BI):** Construção de dashboard interativo para monitoramento de KPIs e distribuição dos segmentos.

## Resultados Obtidos
A segmentação revelou quatro grupos estratégicos principais. A análise indicou que uma parcela reduzida da base (Campeões) é responsável pela maior parte da receita, enquanto um volume significativo de faturamento potencial encontra-se no grupo "Em Risco".

Impacto estimado: Identificação de oportunidades de recuperação de receita através de campanhas específicas para os clusters de baixa recência.

## Estrutura do Repositório

/notebooks: Contém os scripts Python (Jupyter) com a análise exploratória e modelagem RFM.

/sql: Scripts de consulta e manipulação de banco de dados utilizados na extração.

/dashboard: Arquivo do Power BI (.pbix) com a visualização final.

## Visualização do Dashboard
Abaixo, a visão gerencial desenvolvida no Power BI:

images/dashboard_final.jpg
requirements.txt: Lista de dependências e bibliotecas necessárias.

