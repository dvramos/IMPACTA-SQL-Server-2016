USE Consorcio;

--Visualiza��o dados da tabela carteiras
SELECT * FROM Carteiras;

-- Excluindo Registros
DELETE FROM Carteiras
WHERE Cpf = 74632202244;

DELETE FROM Carteiras
WHERE Uf = 'GO';

USE SisDep;

-- Exclus�o Bem Sucedida
DELETE FROM Funcionario
WHERE idMatricula = 1001;

-- Exclus�o Mal Sucedida (ERRO)
DELETE FROM Funcionario
WHERE idMatricula = 1000;
--Mensagem 547, N�vel 16, Estado 0, Linha 20
--A instru��o DELETE conflitou com a restri��o do REFERENCE "FK_DEPENDENTE_FUNCIONARIO". O conflito ocorreu no banco de dados "SisDep", tabela "dbo.Dependente", column 'idMatricula'.
SELECT * FROM Dependente
WHERE idMatricula = 1000;

