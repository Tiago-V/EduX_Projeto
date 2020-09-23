/* DML - EduX */

USE EduX
GO

-- Inserir dados nas tabelas

INSERT INTO	Categoria(Tipo)
VALUES ('');

INSERT INTO Instituicao(Nome, Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP)
VALUES ('Senai de Informatica', '', '539', '', 'Santa Cecilia', 'Sao Paulo', 'SP', '01202-001');

INSERT INTO Perfil(Permissao)
VALUES ('');

INSERT INTO Curso(Titulo, IdInstituicao)
VALUES ('Desenvolvimento de Sistemas', 1);

INSERT INTO Usuario(Nome, Email, Senha, DataCadastro, DataUltimoAcesso, IdPerfil)
VALUES ('Tiago', 'tiago@gmail.com', '132', '2020-09-23T12:00:00', '2020-09-23T12:00:00', 1);

INSERT INTO Dica(Texto, Imagem, IdUsuario)
VALUES ('texto', 'imagem.jpeg', 1);

INSERT INTO Curtida(IdUsuario, IdDica)
VALUES (1, 2);

INSERT INTO Objetivo(Descricao, IdCategoria)
VALUES ('', 1);

INSERT INTO Turma(Descricao, IdCurso)
VALUES ('', 1);

INSERT INTO AlunoTurma(Matricula, IdUsuario, IdTurma) 
VALUES ('', 1, 1);

INSERT INTO ProfessorTurma(Descricao, IdUsuario, IdTurma)
VALUES ('', 2, 1);

INSERT INTO ObjetivoAluno(Nota, DataAlcancado, IdAlunoTurma, IdOBjetivo)
VALUES ('8', '2020-09-23T12:00:00', 1, 1);
