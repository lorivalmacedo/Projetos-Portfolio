# 📈 Monitoramento de Uso — Análise do Engajamento nas Listas Nominais

## 🎯 Objetivo do Projeto

Este projeto tem como foco analisar o **comportamento dos usuários** em relação à principal funcionalidade do produto: as **listas nominais**. Essas listas consolidam informações por cidadão (como atendimentos, exames e procedimentos) e são utilizadas por **gestores do SUS** e **profissionais da saúde** como instrumento para ações estratégicas nas unidades de saúde.

O propósito da análise é fornecer **insights claros sobre o uso real da ferramenta**, identificando padrões de engajamento, variações entre perfis de usuários e o comportamento de acesso à plataforma.

---

## 🧩 Contexto

As **listas nominais** permitem aos usuários realizar:

- Filtragem e ordenação de dados por cidadão;
- Busca de casos específicos;
- Impressão da lista em PDF ou uso físico em papel.

Por isso, compreender como e por quem essas ferramentas estão sendo utilizadas é fundamental para direcionar melhorias no produto, identificar boas práticas de uso e mapear oportunidades de capacitação ou comunicação.

---

## 📁 Base de Dados

A análise se apoia em dois conjuntos de dados fornecidos:

### 1. `usuarios_cadastrados_ip.csv`
Contém os cadastros dos usuários com permissão de acesso à área logada.

- `usuario_id`: identificador único
- `data_criacao_cadastro`: data do cadastro
- `municipio`: localidade de atuação
- `cargo`: função/cargo do usuário

### 2. `dias_ativo_usuarios_ip.csv`
Registra os dias em que os usuários estiveram ativos na plataforma.

- `usuario_id`: identificador único
- `data_ativo`: data de acesso
- `acessou_listas_nominais`: se houve acesso à funcionalidade
- `clicks_imprimir_lista`: número de cliques para imprimir listas
- `clicks_filtrar_lista`: número de cliques para aplicar filtros

---

## 🔍 Questões-Chave de Análise

- Taxa de Primeiro Acesso
- Perfil dos usuários, com comparação entre cargos e região
- Padrões de Comportamento
- Adesão da plataforma

---

## 📌 Considerações Finais

Este projeto busca contribuir com a melhoria contínua do produto, fornecendo uma base analítica clara para orientar decisões estratégicas voltadas ao **engajamento e sucesso dos usuários**.