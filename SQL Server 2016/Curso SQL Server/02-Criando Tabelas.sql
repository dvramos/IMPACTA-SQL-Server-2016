USE Concessionaria;

--Tabelas
CREATE TABLE tblMarcas
(
	idMarca			int			identity		primary key,
	nomeMarca		char(30)	not null		unique
);

-- Visualizando estruturas de Tabelas
EXEC sp_help tblMarcas;

CREATE TABLE tblModelos
(
	idModelo		int		identity
	Constraint		PK_tblModelos_idModelo
	Primary Key		(idModelo),

	-- FK
	idMarca			int		not null
	Constraint		FK_tblModelos_tblMarcas_idMarca
	Foreign Key		(idMarca)
	References		tblMarcas (idMarca),

	nomeModelo		nchar(30)	not null
	Constraint		UQ_tblModelos_nomeModelo
	Unique	(nomeModelo)

);

EXEC sp_help tblModelos;


