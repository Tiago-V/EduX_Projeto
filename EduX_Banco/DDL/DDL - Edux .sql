/* DDL - EduX */

-- Criar Banco de Dados
CREATE DATABASE EduX
GO

-- Usar o Banco de Dados
USE EduX
GO

-- Criar Tabelas
CREATE TABLE Perfil(
	-- Primary Key
	IdPerfil INT PRIMARY KEY IDENTITY NOT NULL,
	Permissao VARCHAR(50),
);


CREATE TABLE Categoria(
	-- Primary Key
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Tipo VARCHAR (50),
);

CREATE TABLE Instituicao(
	-- Primary Key
	IdInstituicao INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR (255),
	Logradouro VARCHAR (255),
	Numero VARCHAR (255),
	Complemento VARCHAR (255),
	Bairro VARCHAR (255),
	Cidade VARCHAR (255),
	UF VARCHAR (2),
	CEP VARCHAR (15),
);

CREATE TABLE Usuario(
	-- Primary Key
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR (255),
	Email VARCHAR (100),
	Senha VARCHAR (255),
	DataCadastro DATETIME,
	DataUltimoAcesso DATETIME,

	-- Foreign Key
	IdPerfil INT FOREIGN KEY REFERENCES Perfil (IdPerfil),
);

CREATE TABLE Dica(
	-- Primary Key
	IdDica INT PRIMARY KEY IDENTITY NOT NULL,
	Texto VARCHAR(255),
	Imagem VARCHAR(255),

	-- Foreign Key
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
);

CREATE TABLE Curtida(
	-- Primary Key
	IdCurtida INT PRIMARY KEY IDENTITY NOT NULL,

	-- Foreign Key
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdDica INT FOREIGN KEY REFERENCES Dica (IdDica),
);

CREATE TABLE Curso(
	-- Primary Key
	IdCurso INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(255),

	--Foreign Key
	IdInstituicao INT FOREIGN KEY REFERENCES Instituicao (IdInstituicao),
);

CREATE TABLE Turma(
	-- Primary Key
	IdTurma INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR (255),

	-- Foreign Key
	IdCurso INT FOREIGN KEY REFERENCES Instituicao (IdInstituicao), 
);

CREATE TABLE Objetivo(
	-- Primary Key
	IdObjetivo INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR (255),

	-- Foreign Key
	IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria),
);

CREATE TABLE ProfessorTurma(
	-- Primary Key
	IdProfessorTurma INT PRIMARY KEY IDENTITY NOT NULL,
	Descricao VARCHAR (255),

	-- Foreign Key
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdTurma INT FOREIGN KEY REFERENCES Turma (IdTurma),
);

CREATE TABLE AlunoTurma(
	-- Primary Key
	IdAlunoTurma INT PRIMARY KEY IDENTITY NOT NULL,
	Matricula VARCHAR (50),

	-- Foreign Key
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdTurma INT FOREIGN KEY REFERENCES Turma (IdTurma),
);

CREATE TABLE ObjetivoAluno(
	-- Primary Key
	IdObjetivoAluno INT PRIMARY KEY IDENTITY NOT NULL,
	Nota DECIMAL DEFAULT NULL,
	DataAlcancado DATETIME,

	-- Foreign Key
	IdAlunoTurma INT FOREIGN KEY REFERENCES AlunoTurma (IdAlunoTurma),
	IdOBjetivo INT FOREIGN KEY REFERENCES Objetivo (IdOBjetivo),
);

