# Sistema de Gerenciamento de Academia – FITMAX

Projeto acadêmico desenvolvido utilizando **SQLite**, representando o modelo de banco de dados de uma academia. O sistema contempla criação de tabelas, inserção de dados, consultas, atualizações e exclusões.

## ✔ Requisitos Atendidos

- Criação da estrutura do banco (DDL)
- Povoamento com INSERT
- Consultas SQL (SELECT com WHERE, JOIN, ORDER BY, LIMIT)
- Atualizações com UPDATE
- Exclusões com DELETE
- DER via dbdiagram.io
- Banco funcional (`fitmax.db`)
- Repositório completo no GitHub com scripts e documentação

## 📁 Estrutura do Repositório

fitmaxIV/

├─ 01_create_tables.sql

├─ 02_insert_data.sql

├─ 03_select_queries.sql

├─ 04_update_delete.sql

├─ fitmax.db

└─ README.md

## 📊 Diagrama Entidade-Relacionamento (DER)

[Visualizar DER](https://dbdiagram.io/d/6928cb81a0c4ebcc2b0f23de)

## ▶ Como Executar o Projeto

1. Abrir o **SQLite Studio**
2. Acessar: `Database → Add a database`
3. Selecionar o arquivo **fitmax.db**
4. Executar os scripts na ordem:

01_create_tables.sql
02_insert_data.sql
03_select_queries.sql
04_update_delete.sql

## 🔎 Detalhamento dos Scripts

| Ordem | Script                   | Objetivo                                   |
|------|---------------------------|--------------------------------------------|
| 1️⃣  | 01_create_tables.sql      | Criação das tabelas                        |
| 2️⃣  | 02_insert_data.sql        | Inserção de dados (povoamento)             |
| 3️⃣  | 03_select_queries.sql     | Consultas demonstrativas                   |
| 4️⃣  | 04_update_delete.sql      | Atualizações e exclusões de registros      |

## 🧪 Exemplos de comandos utilizados

- **SELECT com JOIN**

SELECT m.id_mensalidade, m.data_vencimento, m.valor, a.nome FROM Mensalidade m JOIN Aluno a ON m.id_aluno = a.id_aluno;

- **UPDATE com condição**

UPDATE Mensalidade SET valor = 130.00 WHERE id_mensalidade = 3;

- **DELETE com condição**

DELETE FROM Pagamento WHERE id_pagamento = 1;

## 👨‍💻 Autor
Desenvolvido por **Paulo César de Azevedo Silva Cotrim**  
📚 Curso: Análise e Desenvolvimento de Sistemas – Cruzeiro do Sul 
📅 Entrega IV – Nov/2025
📫 [LinkedIn](https://www.linkedin.com/in/paulocotrimprofissional) • [GitHub](https://github.com/paulorj33)

## 📚 Licença

Este projeto tem finalidade exclusivamente acadêmica.
Uso livre para fins educacionais.

✔ Scripts testados e funcionando corretamente via SQLite Studio.

✔ Banco pronto para importação e execução direta.

