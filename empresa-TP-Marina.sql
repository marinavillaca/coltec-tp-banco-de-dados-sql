-- Aluna: Marina Laura Villaça e Melo
-- Traballho Final: Banco de Dados
-- Prof: Marcio Fantini
-- Data: 21/11/2024

-- 1. Criação do Banco de Dados e Tabelas
CREATE DATABASE empresa;
USE empresa;

-- Tabela Departamento
CREATE TABLE Departamento (
    idDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    gerente VARCHAR(100)
);

-- Tabela Funcionario
CREATE TABLE Funcionario (
    idFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    cargo VARCHAR(50),
    nota_Desempenho DECIMAL(10, 2) NOT NULL,
    data_Contratacao DATE NOT NULL,
    data_Demissao DATE,
    idDepartamento INT,
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento)
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
    idPagamento INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10, 2) NOT NULL,
    data DATE NOT NULL,
    tipo VARCHAR(50),
    idFuncionario INT,
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);

-- Tabela Pessoal
CREATE TABLE Pessoal (
    idPessoal INT AUTO_INCREMENT PRIMARY KEY,
    bonus DECIMAL(10, 2),
    licencas INT,
    ferias INT,
    contratacoes INT,
    demissoes INT,
    idFuncionario INT,
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);

-- Tabela Contabilidade
CREATE TABLE Contabilidade (
    idContabilidade INT AUTO_INCREMENT PRIMARY KEY,
    compras DECIMAL(10, 2),
    vendas DECIMAL(10, 2),
    lucros DECIMAL(10, 2),
    patrimonio DECIMAL(10, 2),
    impostos DECIMAL(10, 2),
    idDepartamento INT,
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento)
);

-- 2. Inserção de Dados
-- Inserindo dados na tabela Departamento
INSERT INTO Departamento (nome, telefone, gerente) 
VALUES 
('Recursos Humanos', '1234-5678', 'Carlos Silva'),
('Financeiro', '2345-6789', 'Maria Oliveira'),
('TI', '3456-7890', 'João Santos'),
('Administracao', '3344-3222', 'Lucas Reis'),
('Marketing', '2323-4983', 'Jessica Melo');

-- Inserindo dados na tabela Funcionario
INSERT INTO Funcionario (nome, salario, cargo, nota_Desempenho, data_Contratacao, idDepartamento) 
VALUES 
('Pedro Alves', 3000.00, 'Analista de Sistemas', 8.4, '2022-01-15', 3),
('Ana Costa', 4500.00, 'Gerente de TI', 9.2, '2021-05-10', 3),
('Luis Souza', 2800.00, 'Assistente Administrativo', 7, '2023-03-20', 4),
('John', 7400.00, 'Analista de Sistemas', 8.5, '2022-01-15', 3),
('Raiane', 8600.00, 'Designer Gráfico', 9, '2021-05-10', 5),
('Gustavo', 1700.00, 'DBA', 5.9, '2022-01-15', 3),
('Bruno', 12500.00, 'Programador', 9, '2021-05-10', 3),
('Larissa Rodrigues', 8600.00, 'Designer Gráfico', 9, '2021-05-10', 5),
('Gabriela Silva', 1700.00, 'Analista Financeiro', 8, '2022-01-15', 2),
('Laura Lima', 5500.00, 'Recrutadora', 6.7, '2021-05-10', 1);

-- Inserindo dados na tabela Pagamento
INSERT INTO Pagamento (valor, data, tipo, idFuncionario) 
VALUES 
(3000.00, '2024-10-10', 'Insalubridade', 1),
(4500.00, '2024-10-10', 'Hora Extra', 2),
(7000.00, '2024-10-10', 'Hora Extra', 3),
(14500.00, '2024-10-10', 'Participacao Lucro', 4),
(8000.00, '2024-10-10', 'Participacao Lucro', 5),
(14500.00, '2024-10-10', 'Decimo Terceiro', 6),
(8000.00, '2024-10-10', 'Insalubridade', 7),
(9500.00, '2024-10-10', 'Hora Extra', 8),
(2800.00, '2024-10-10', 'Bonus', 9);

-- Inserindo dados na tabela Pessoal
INSERT INTO Pessoal (bonus, licencas, ferias, contratacoes, demissoes, idFuncionario) 
VALUES 
(550.00, 9, 22, 6, 1, 1),
(720.00, 11, 19, 8, 0, 2),
(480.00, 7, 16, 4, 2, 3),
(600.00, 10, 21, 5, 3, 4),
(900.00, 12, 20, 7, 1, 5),
(650.00, 8, 18, 6, 0, 6),
(750.00, 13, 23, 9, 2, 7),
(450.00, 6, 14, 3, 4, 8),
(850.00, 10, 22, 8, 0, 9),
(530.00, 9, 17, 5, 1, 10);

-- Inserindo dados na tabela Contabilidade
INSERT INTO Contabilidade (compras, vendas, lucros, patrimonio, impostos, idDepartamento) 
VALUES 
(17000.00, 23000.00, 6000.00, 52000.00, 2200.00, 2),
(14000.00, 19000.00, 5000.00, 47000.00, 1900.00, 3),
(16000.00, 24000.00, 8000.00, 53000.00, 2500.00, 4),
(11000.00, 17000.00, 6000.00, 41000.00, 1700.00, 5),
(15000.00, 21000.00, 7000.00, 49000.00, 2000.00, 2),
(13000.00, 20000.00, 7000.00, 46000.00, 2100.00, 3),
(18000.00, 25000.00, 7000.00, 55000.00, 2600.00, 4),
(12000.00, 18000.00, 6000.00, 44000.00, 1800.00, 5),
(19000.00, 26000.00, 7000.00, 57000.00, 2700.00, 2),
(14000.00, 22000.00, 8000.00, 50000.00, 2300.00, 3);

-- Visualizar todas tabelas
select *from contabilidade;
select *from departamento;
select *from funcionario;
select *from pagamento;
select *from pessoal;

-- 3. Consultas de Dados
-- Consultar o total de vendas e lucro da contabilidade
SELECT c.vendas, c.lucros 
FROM Contabilidade AS c;

-- Listar todos os funcionários
SELECT nome, salario, cargo
FROM Funcionario;

-- Listar todos os departamentos
SELECT nome as nomeDept
FROM Departamento;

-- Listar quantidade de Funcionarios por Departamento
SELECT d.nome AS nomeDept, COUNT(f.idFuncionario) AS qtdFuncionarios
FROM Departamento AS d
LEFT JOIN Funcionario AS f ON d.idDepartamento = f.idDepartamento
GROUP BY d.idDepartamento;

-- Mostrar o total de vendas da tabela Contabilidade
SELECT SUM(vendas) AS total_vendas_Contabil
FROM Contabilidade;

-- Listar os funcionários com salário acima de 6000,00 reais 
SELECT nome, salario
FROM Funcionario
WHERE salario > 6000;

-- Consultar todos os funcionários do departamento 'TI'
SELECT f.nome, f.salario, f.cargo, f.idDepartamento
FROM Funcionario AS f
JOIN Departamento AS d ON f.idDepartamento = d.idDepartamento
WHERE d.nome = 'TI';

-- Consultar o Total de Impostos e Patrimônio
SELECT SUM(impostos) AS total_impostos, SUM(patrimonio) AS total_patrimonio
FROM Contabilidade;

-- 4. Alterações de Dados
-- Alterar o salário de um funcionário (John)

UPDATE Funcionario
SET salario = 9800
WHERE idFuncionario = 4;  

select *from Departamento;

-- Alterar o gerente de um departamento (TI)
UPDATE Departamento 
SET gerente = 'Bruno Faria'
WHERE idDepartamento = 3;

-- Alterar a Nota de Desempenho de um funcionário
UPDATE Funcionario 
SET nota_Desempenho = 7.5
WHERE idFuncionario = 3;

SELECT *from departamento;

-- 5. Exclusões de Dados
-- Exclusão Baseada em  condição 
DELETE FROM Pagamento WHERE idFuncionario = (SELECT idFuncionario FROM Funcionario WHERE salario = 3000.00 AND idDepartamento = 3);  -- idFuncionario=1

-- Verificar se foi excluido
SELECT *FROM Pagamento;
SELECT *FROM Funcionario;

-- Exclusão com Relação a Datas
DELETE FROM Pessoal WHERE idFuncionario IN (SELECT idFuncionario FROM Funcionario WHERE data_Contratacao = '2022-01-15'); 	-- idFuncionario=1

-- Verificar se foi excluido
SELECT *FROM Pessoal;