USE SisDep;

--Todas as colunas de uma tabelas
SELECT * FROM Funcionario;

--Somente algumas colunas
SELECT IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario;

--Ordenar Dados
SELECT IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY NomeFuncionario ASC;

SELECT IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

--Ordenação por mais de uma coluna
SELECT IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY idDepartamento ASC, Salario DESC;

--Ordernar por posição da coluna
SELECT IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY 1 ASC, 5 DESC;

-- RANK TOP
-- 5 Primeiras linhas da tabela
SELECT TOP 20 IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario

-- 10% de Registros
SELECT TOP 10 PERCENT IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario

-- 10 Maiores Salários
SELECT TOP 10 IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

-- Com empates
SELECT TOP 9 WITH TIES IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

-- Retornar 5 funcionarios mais antigos
SELECT TOP 5 WITH TIES IdDepartamento, idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Admissao ASC;