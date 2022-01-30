USE SisDep;

--Bônus de R$100,00 para todos os funcionários
UPDATE Funcionario
SET Salario = Salario + 100;


-- Reajuste de 10% para todos os funcionários
UPDATE Funcionario
-- SET Salario = (Salario * 0.1) + Salario
-- SET Salario = Salario * 1.1
-- Operador Composto
SET Salario *= 1.1;

-- Atualização de mais de uma coluna simultaneamente
-- Com aplicação de filtros
UPDATE Funcionario
SET Salario = Salario * 1.05, idCargo = 2
WHERE idMatricula = 1000;

-- 10% de aumento para funcionarios admitidos até 31/12/2005 e com salário até R$2.000,00
UPDATE Funcionario
SET Salario *= 1.1
WHERE Admissao <= 2005-12-31 AND Salario <= 2000;

SELECT * FROM Funcionario;