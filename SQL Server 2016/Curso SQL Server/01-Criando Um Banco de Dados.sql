/* 
	Criando um Banco de Dados
	Autor: Daniel Ramos
	Data: 01/01/2022
*/

-- Criando um Banco via T-SQL
CREATE DATABASE DepartamentoPessoal;

-- Colocando um Banco em Uso
USE DepartamentoPessoal;

--Excluir um Banco de Dados
-- o mesmo não poderá estar em uso
USE master;
DROP DATABASE DepartamentoPessoal;