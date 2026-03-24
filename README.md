# BI Multicel – Dashboard Comercial
Projeto de Business Intelligence desenvolvido para a Multicel Pigmentos, com foco na análise comercial, faturamento, metas, carteira de pedidos, margens e estoques.  
Autor: **Alyfher Cambarotto de Souza**

---

## 📌 Visão Geral do Projeto  
Este repositório apresenta o desenvolvimento completo do **Dashboard Comercial da Multicel**, criado como projeto interno de modernização e desenvolvimento autoral de painel de BI antes terceirizado.

O objetivo do projeto foi **modernizar, acelerar e promover alta disponibilidade no processo de análise comerical**, fornecendo informações estratégicas em tempo real para gestores e diretoria.

---

## 🎯 Objetivos do Dashboard
- Consolidar indicadores comerciais e financeiros com atualização direta no SQL Server  
- Reduzir tempo de análise
- Promover alta disponibilidade
- Pormover atualização de informações em tempo real
- Fornecer KPI’s críticos para tomada de decisão  
- Integrar tabelas fiscais, comerciais, produtivas e de estoque  
- Entregar análises de faturamento, metas, evolução histórica, margens e pedidos  

---

## 🛠 Tecnologias Utilizadas
- **Microsoft Power BI (DAX / Power Query / Direct Query)**  
- **Microsoft SQL Server 2022**  
- **TOTVS Protheus (tabelas SD, SC, SB, SA, SCT, SBM)**  
- **On-Premises Data Gateway** (para atualização em tempo real)  
- **Canva** (elementos visuais)  

---

## 🏗 Arquitetura do Sistema

### 🔹 Fonte de Dados
- Queries SQL diretamente no banco Protheus (SQL Server)
- Conexão via serviço **On-Premises Data Gateway**
- Atualização em tempo real via **Direct Query**

### 🔹 Transformações
- Cálculo de impostos (ICMS, PIS, COFINS)
- Dedução para valores líquidos
- Junção de informações de produtos, clientes, vendedores e grupos
- Projeções de pedidos ainda não faturados

### 🔹 Modelagem
- Relacionamento entre:
  - Faturamento
  - Devoluções
  - Metas
  - Pedidos de Venda
  - Produtos
  - Grupos
  - Vendedores
  - Histórico desde 2019

---

## 📊 Painéis Disponíveis

### ✔ Comercial / Metas
- Faturamento diário e mensal  
- Metas por grupo, categoria e vendedor  
- Carteira de pedidos  
- Progresso da meta  

### ✔ Gráficos / Evolução
- Tendências desde 2019  
- Comparação entre períodos  
- Variação percentual  

### ✔ Clientes
- Top clientes  
- Volume por estado  
- Quantidade e valor  

### ✔ Grupo de Produtos
- Faturamento por linha  
- Categoria e subcategoria  

### ✔ Margens
- Margem Bruta  
- Margem Líquida  
- Margem de Contribuição  
- Identificação de vendas com margens negativas  

### ✔ Estoque
- Estoque por produto  
- Estimativa de valores  
- Grupo de estoque  

---

## 🗄 Queries SQL Utilizadas (Resumo)

### 🔹 Faturamento – SD2010  
- Valor da NF (líquido)  
- Produto, categoria, grupo  
- Cliente, vendedor, estado  
- Data de emissão e entrega  

### 🔹 Devoluções – SD1010  
- CFOPs específicos  
- Quantidade e valor líquido  

### 🔹 Estoque – SB2010  
- Produto acabado  
- Quantidade e valorização  

### 🔹 Pedidos de Venda – SC6010  
- Previsão de faturamento  
- Conversão cambial quando necessário  
- Dedução fiscal estimada  

### 🔹 Metas – SCT010  
- Valor mensal por grupo e categoria  

### 🔹 Histórico (desde 2019)  
- Tendência de vendas  
- Consolidação mensal  

As queries completas estão na pasta **/sql**.

---

## 📐 Principais Medidas DAX
As medidas aplicadas no Power BI incluem:

- **Acumulado Dia / Mês (R$ e KG)**  
- **Devoluções Dia / Mês**  
- **Carteira de Pedidos**  
- **Progresso da Meta (R$ / KG)**  
- **Margem Bruta / Líquida / Contribuição**  
- **Variação Percentual entre Períodos**  
- **Preço Médio de Venda**  

Todas as medidas estão documentadas na pasta **/dax**.

---

## 🌐 Publicação e Ambiente
- Relatório publicado no Power BI Cloud Service  
- Acesso controlado por **RLS (Row-Level Security)**  
- Dashboard público exibido em monitor interno  
- Integração via On-Premises Data Gateway  

---

## 👨‍💻 Sobre o Autor
**Alyfher Cambarotto de Souza**  
Analista de Suporte / Desenvolvedor BI  
- SQL Server | Power BI | Protheus (ADVPL e Tabelas SIGA)  
- Projetos em ambiente corporativo  
- Foco em performance, automação e análise de dados  

Contato: **alyfhercambarotto@gmail.com**

---
