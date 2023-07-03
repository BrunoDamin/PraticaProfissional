CREATE DATABASE 'localhost:C:\Users\Bruno Damin\Desktop\PRATICA FINAL\BANCO6.FDB' page_size 8192 USER SYSDBA PASSWORD'masterkey';

CONNECT 'localhost:C:\Users\Bruno Damin\Desktop\PRATICA FINAL\BANCO6.FDB' USER SYSDBA PASSWORD 'masterkey';

CREATE GENERATOR GEN_codPais;
CREATE GENERATOR GEN_codEstado;
CREATE GENERATOR GEN_codCidade;
CREATE GENERATOR GEN_codCliente;
CREATE GENERATOR GEN_codFornecedor;
CREATE GENERATOR GEN_codFuncionario;
CREATE GENERATOR GEN_codMercadoria;
CREATE GENERATOR GEN_codEntrega;

CREATE TABLE Paises(
	codPais 	INTEGER NOT NULL,
	nomePais	VARCHAR (55) NOT NULL,
	siglaPais 	VARCHAR (5),
	ddiPais 	VARCHAR (5),
	moedaPais	VARCHAR (5),
	datCadastro 	VARCHAR (10),
	ultAlteracao 	VARCHAR (10),

	CONSTRAINT PK_Paises PRIMARY KEY (codPais)

);

SET TERM ^ ;

CREATE OR ALTER TRIGGER Paises_BI FOR Paises
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
	IF (NEW.codPais IS NULL) THEN
		NEW.codPais = NEXT VALUE FOR GEN_codPais;
END
^

SET TERM ^; 
 
CREATE TABLE Estados (
	codEstado 	INTEGER NOT NULL,
	nomeEstado 	VARCHAR (55) NOT NULL,
	ufEstado 	VARCHAR (5),
	codPais 	INTEGER NOT NULL,
	datCadastro 	VARCHAR (10),
	ultAlteracao 	VARCHAR (10),

	CONSTRAINT PK_Estados PRIMARY KEY (codEstado),
  	CONSTRAINT FK_Estados FOREIGN KEY (codPais) REFERENCES Paises(codPais)

);

SET TERM ^ ;

CREATE OR ALTER TRIGGER Estados_BI FOR Estados
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
	IF (NEW.codEstado IS NULL) THEN
		NEW.codEstado = NEXT VALUE FOR GEN_codEstado;
END
^

SET TERM ^;

CREATE TABLE Cidades(
	codCidade 	INTEGER NOT NULL,
	nomeCidade	VARCHAR (55) NOT NULL,
	dddCidade 	VARCHAR (5),
	codEstado	INTEGER NOT NULL,
	datCadastro 	VARCHAR (10),
	ultAlteracao 	VARCHAR (10),

	CONSTRAINT PK_Cidades PRIMARY KEY (codCidade),
	CONSTRAINT FK_Cidades FOREIGN KEY (codEstado) REFERENCES Estados(codEstado)
);

SET TERM ^ ;

CREATE OR ALTER TRIGGER Cidades_BI FOR Cidades
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
	IF (NEW.codCidade IS NULL) THEN
		NEW.codCidade = NEXT VALUE FOR GEN_codCidade;
END
^

SET TERM ^;

CREATE TABLE Clientes(
	codCliente 		INTEGER NOT NULL,
	nomeCliente		VARCHAR (55) NOT NULL,
	tipoCliente 		VARCHAR (5),
	documentoCliente	VARCHAR (15),
	ruaCliente		VARCHAR (55) NOT NULL,
	numeroRuaCliente	VARCHAR (10) NOT NULL,
	bairroCliente		VARCHAR (55) NOT NULL,
	cepCliente		VARCHAR (55) NOT NULL,
	codCidade		INTEGER NOT NULL,
	datCadastro 		VARCHAR (10),
	ultAlteracao 		VARCHAR (10),

	CONSTRAINT PK_Clientes PRIMARY KEY (codCliente),
	CONSTRAINT FK_Clientes FOREIGN KEY (codCidade) REFERENCES Cidades(codCidade)
);

SET TERM ^ ;

CREATE OR ALTER TRIGGER Clientes_BI FOR Clientes
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
	IF (NEW.codCliente IS NULL) THEN
		NEW.codCliente = NEXT VALUE FOR GEN_codCliente;
END
^

SET TERM ^;

CREATE TABLE Fornecedores(
	codFornecedor 		INTEGER NOT NULL,
	nomeFornecedor		VARCHAR (55) NOT NULL,
	documentoFornecedor	VARCHAR (15),
	ruaFornecedor		VARCHAR (55) NOT NULL,
	numeroRuaFornecedor	VARCHAR (10) NOT NULL,
	bairroFornecedor	VARCHAR (55) NOT NULL,
	cepFornecedor		VARCHAR (55) NOT NULL,
	codCidade		INTEGER NOT NULL,
	datCadastro 		VARCHAR (10),
	ultAlteracao 		VARCHAR (10),

	CONSTRAINT PK_Fornecedores PRIMARY KEY (codFornecedor),
	CONSTRAINT FK_Fornecedores FOREIGN KEY (codCidade) REFERENCES Cidades(codCidade)
);

SET TERM ^ ;

CREATE OR ALTER TRIGGER Fornecedor_BI FOR Fornecedores
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
	IF (NEW.codFornecedor IS NULL) THEN
		NEW.codFornecedor = NEXT VALUE FOR GEN_codFornecedor;
END
^

SET TERM ^;

CREATE TABLE Funcionarios(
	codFuncionario		INTEGER NOT NULL,
	nomeFuncionario		VARCHAR (55) NOT NULL,
	tipoFuncionario		VARCHAR (55) NOT NULL,
	salarioFuncionario	FLOAT,
	datCadastro 		VARCHAR (10),
	ultAlteracao 		VARCHAR (10),

	CONSTRAINT PK_Funcionarios PRIMARY KEY (codFuncionario)
);

SET TERM ^ ;

CREATE OR ALTER TRIGGER Funcionarios_BI FOR Funcionarios
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
	IF (NEW.codFuncionario IS NULL) THEN
		NEW.codFuncionario = NEXT VALUE FOR GEN_codFuncionario;
END
^

SET TERM ^;

CREATE TABLE Mercadorias (
	codMercadoria 		INTEGER NOT NULL,
	nomeMercadoria		VARCHAR(55) NOT NULL,
	tipoMercadoria		VARCHAR(55) NOT NULL,
	quantidadeMercadoria	VARCHAR(15) NOT NULL,
	valorMercadoria		FLOAT NOT NULL,
	codFornecedor		INTEGER NOT NULL,
	datCadastro		VARCHAR(10),
	ultAlteracao		VARCHAR(10),


	CONSTRAINT PK_Mercadorias PRIMARY KEY (codMercadoria),
	CONSTRAINT FK_Mercadorias FOREIGN KEY (codFornecedor) REFERENCES Fornecedores(codFornecedor)
);

SET TERM ^ ;

CREATE OR ALTER TRIGGER Mercadorias_BI FOR Mercadorias
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
	IF (NEW.codMercadoria IS NULL) THEN
		NEW.codMercadoria = NEXT VALUE FOR GEN_codMercadoria;
END
^

SET TERM ^;

CREATE TABLE Entregas(
	codEntrega 		INTEGER NOT NULL,
	codMercadoria		INTEGER NOT NULL,
	codCliente		INTEGER NOT NULL,
	codFuncionario		INTEGER NOT NULL,
	datCadastro		VARCHAR(10),
	ultAlteracao		VARCHAR(10),


	CONSTRAINT PK_Entregas PRIMARY KEY (codEntrega),
	CONSTRAINT FK_Entregas1 FOREIGN KEY (codFuncionario) REFERENCES Funcionarios(codFuncionario),
	CONSTRAINT FK_Entregas2 FOREIGN KEY (codCliente) REFERENCES Clientes(codCliente),
	CONSTRAINT FK_Entregas3 FOREIGN KEY (codMercadoria) REFERENCES Mercadorias(codMercadoria)
);

SET TERM ^ ;

CREATE OR ALTER TRIGGER Entregas_BI FOR Entregas
ACTIVE BEFORE INSERT POSITION 0
AS
BEGIN
	IF (NEW.codEntrega IS NULL) THEN
		NEW.codEntrega = NEXT VALUE FOR GEN_codEntrega;
END
^

SET TERM ^;

  
   
