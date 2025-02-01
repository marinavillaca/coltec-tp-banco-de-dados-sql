### Descrição do Projeto de Modelagem de Banco de Dados

A modelagem de banco de dados desenvolvida neste projeto foi concebida para representar um Sistema de Contabilidade e Departamento Pessoal, simulando de forma aproximada a realidade de uma empresa. O objetivo foi criar uma estrutura que refletisse os principais processos administrativos, contábeis, financeiros, garantindo a integridade dos dados e a eficiência na recuperação das informações.

A separação das entidades foi realizada de forma a contemplar os principais domínios operacionais de uma empresa, organizando o banco de dados em cinco entidades principais: Contabilidade, Pessoal, Funcionário, Departamento e Pagamento. Essa divisão permite a organização lógica e clara dos dados.

## Etapas do Projeto
O trabalho é divido em 3 etapas: 

## 1. Primeira etapa - Modelo Conceitual:
O modelo conceitual foi elaborado no software BrModelo. Esse passo foi crucial para definir as entidades e os relacionamentos iniciais com base nas necessidades do sistema. O foco foi na identificação de:
- Entidades e seus respectivos atributos;
- Implementação dos relacionamentos.

## 2. Segunda etapa - Modelo Lógico:
Com base no modelo conceitual, foi desenvolvido o modelo lógico utilizando o MySQL Workbench 8.0. Nesta etapa, as entidades e relacionamentos foram traduzidos para uma estrutura mais técnica, incluindo:
- Ajuste de tipos de dados adequados, como VARCHAR, DATE e DECIMAL;
- Implementação de chaves primárias e estrangeiras para garantir a integridade referencial.

## 3. Terceira etapa - Modelo Físico:
O modelo físico foi implementado diretamente no MySQL. Foram criadas tabelas para cada entidade definida no modelo lógico, respeitando as restrições de integridade e os tipos de dados definidos previamente. O uso de AUTO_INCREMENT nas chaves primárias simplifica a inclusão de novos registros, e a aplicação de chaves estrangeiras garante a consistência dos dados entre as tabelas. Além disso, foram consideradas operações básicas de manipulação de dados. A seguir, detalhamos as ações realizadas no modelo físico:
- Criação do Banco de Dados e Tabelas através do CREATE database e CREATE table;
- Inserção de Dados em cada tabela por meio do INSERT INTO;
- Consultas de Dados por meio da comando SELECT;
- Alterações de Dados por meio da comando UPDATE;
- Exclusões de Dados por meio do comando DELETE.
