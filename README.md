# Construindo seu Primeiro Projeto Lógico de Banco de Dados

Este projeto tem como objetivo a construção do **modelo lógico de um banco de dados relacional**, aplicando os principais conceitos de modelagem e normalização. A proposta simula um cenário de **E-commerce**, envolvendo clientes, pedidos, produtos, pagamentos, vendedores, fornecedores e estoques.

## 🧠 Objetivos do Projeto

- Desenvolver a estrutura lógica de um banco de dados relacional.
- Criar tabelas com integridade referencial (chaves primárias e estrangeiras).
- Inserir dados fictícios para simulação de um ambiente real.
- Praticar consultas SQL (DQL e DML).
- Representar relações complexas entre entidades.

## 🛠️ Tecnologias Utilizadas

- **MySQL** (versão 8.0+)
- **MySQL Workbench** (para modelagem e execução de scripts SQL)

## 📁 Estrutura do Projeto

- `estrutura.sql`: Contém todos os comandos `CREATE TABLE` para montar o banco de dados.
- `inserts.sql`: Script com dados fictícios para popular as tabelas.
- `queries.sql`: Conjunto de consultas SQL que respondem a perguntas de negócio.
- `README.md`: Documento explicativo do projeto.

## 🧱 Entidades Criadas

- `client`: Tabela de clientes (Pessoa Física ou Jurídica)
- `product`: Produtos disponíveis no sistema
- `orders`: Pedidos realizados por clientes
- `payments`: Formas de pagamento
- `storage`: Estoques
- `supplier`: Fornecedores
- `seller`: Vendedores terceiros
- `productseller`: Relacionamento entre produtos e vendedores
- `productOrder`: Relacionamento entre produtos e pedidos
- `storageLocation`: Relacionamento entre produtos e estoques

## 🔍 Exemplos de Consultas SQL

- Quantidade de pedidos por cliente.
- Clientes com mais de uma forma de pagamento.
- Relação entre fornecedores e produtos.
- Checagem de integridade para tipo de cliente (PJ vs PF).
- Pedidos com status e código de rastreio.


