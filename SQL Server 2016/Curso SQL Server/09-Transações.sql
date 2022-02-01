USE SeguroVeiculo;

SELECT * FROM Apolices;

-- Iniciar uma transa��o
BEGIN TRANSACTION

--VERIFICAR SE TEM ALGUMA TRANSA��O ATIVA
SELECT @@TRANCOUNT;

UPDATE Apolices
SET valorApolice = valorApolice + 1500;

-- Cancelar uma opera��o
ROLLBACK TRANSACTION

BEGIN TRAN
	UPDATE Apolices
	SET valorApolice = valorApolice + 1500
	WHERE nContrato = 1000;

-- Confirmar Opera��o
COMMIT TRAN

USE SisDep;

BEGIN TRAN
	UPDATE Funcionario
	SET Salario = Salario *1.1
	OUTPUT
		deleted.idMatricula,
		deleted.NomeFuncionario,
		deleted.Salario AS [Sal�rio Anterior],
		inserted.Salario AS [Novo Sal�rio]
	WHERE Salario <=3000

COMMIT

