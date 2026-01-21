#  Olist Data Engineering Pipeline

Pipeline de Engenharia de Dados completo usando PostgreSQL para modelar mais de 100 mil pedidos. Inclui DDL, restrições (chave primária/chave estrangeira) e análises.
Este projeto demonstra a construção de um ecossistema de dados do zero, simulando um ambiente real de Engenharia de Dados com foco em performance e integridade.

##  Tecnologias Utilizadas
* **Banco de Dados:** PostgreSQL 16
* **Linguagem:** SQL (DDL, DML, DQL)
* **Versionamento:** Git & GitHub

##  O que foi resolvido?
1. **Modelagem Relacional:** Criação de tabelas com chaves primárias e estrangeiras para garantir integridade.
2. **Ingestão de Dados (ETL):** Carga massiva de mais de **100.000 linhas** de dados reais utilizando o comando `COPY` (Bulk Load).
3. **Análise de Negócio:** Desenvolvimento de queries para identificar faturamento por categoria, performance logística e status de pedidos.

##  Como rodar o projeto
1. Execute 'a_create_table.sql' para criar a estrutura.
2. Utilize o 'b_load_in_table.sql' para popular as tabelas.
3. Explore os insights em 'c_rank-faturamento.sql' e 'd_consultas_extra'.
