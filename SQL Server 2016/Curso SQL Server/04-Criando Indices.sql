USE Concessionaria;

--Visualizar �ndices
EXEC sp_help tblEstoque;

-- Criando �ndices
CREATE NONCLUSTERED INDEX IX_tblEstoque
ON tblEstoque(dataEntrada DESC);

EXEC sp_helpindex tblEstoque;

-- Excluir um �ndice
DROP INDEX IX_tblEstoque
ON tblEstoque;