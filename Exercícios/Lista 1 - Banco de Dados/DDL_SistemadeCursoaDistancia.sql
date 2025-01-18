/* Criado */
CREATE DATABASE SistemadeCurso;
GO

/* Usado */
USE SistemadeCurso;
GO

/* Alterado 
ALTER DATABASE SistemadeCurso MODIFY NAME = SistemadeCursoaDistancia;
GO */

CREATE TABLE Categorias(
     id_categoria INT PRIMARY KEY IDENTITY, /* IDENTITY -> Incrementar o  ID automaticamente*/
	 nome NVARCHAR(MAX),
	 descricao TEXT 
);
GO

/* Tabela para armazenar os tipos de usu�rio*/
CREATE TABLE TiposUsuarios (
    id_tipo INT PRIMARY KEY IDENTITY,  -- ID do tipo de usu�rio
    tipo_usuario NVARCHAR(MAX) NOT NULL  -- Nome do tipo de usu�rio
);

/* Inserindo os tipos poss�veis na tabela TiposUsuarios*/
INSERT INTO TiposUsuarios (tipo_usuario)
VALUES ('Aluno'), ('Instrutor'), ('Administrador');


CREATE TABLE Usuarios (
    id_usuario INT PRIMARY KEY IDENTITY,  -- ID do usu�rio
    Nome NVARCHAR(MAX),                   -- Nome do usu�rio
    Email NVARCHAR(MAX),                  -- Email do usu�rio
    Senha NVARCHAR(MAX),                  -- Senha do usu�rio
    data_nascimento DATE,                 -- Data de nascimento

    tipo_usuario_id INT,                  
    FOREIGN KEY (tipo_usuario_id) REFERENCES TiposUsuarios(id_tipo)  
);
GO

CREATE TABLE Cursos(
    id_curso INT PRIMARY KEY IDENTITY,
	Nome NVARCHAR(MAX),
	Descricao TEXT,
	data_inicio DATE,
	data_fim DATE,

	 id_categoria INT
	 FOREIGN KEY (id_categoria) REFERENCES Categorias (id_categoria)
);
GO

CREATE TABLE Inscricao(
    id_iscricao INT PRIMARY KEY IDENTITY,
	data_inscricao DATE,

	 id_usuario INT
	 FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario),

	 id_curso INT
	 FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso)


);
GO

CREATE TABLE Aulas(
    id_aula INT PRIMARY KEY IDENTITY,
	Titulo NVARCHAR(MAX),
	Descricao TEXT,
	data_inicio DATE,
	data_fim DATE,

	 id_curso INT
	 FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso)

);
GO

/*Tabela para armazenar os tipos de material*/ 
CREATE TABLE Tipos_Materiais (
    id_tipo INT PRIMARY KEY IDENTITY,  -- ID do tipo de material
    tipo_material NVARCHAR(MAX) NOT NULL -- Nome do tipo de material (PDF, VIDEO, LINK, OUTRO)
);

-- Inserindo os tipos poss�veis
INSERT INTO Tipos_Materiais (tipo_material)
VALUES ('PDF'), ('VIDEO'), ('LINK'), ('OUTRO');

-- Tabela de Materiais de Apoio
CREATE TABLE Materiais_de_Apoio (
    id_material INT PRIMARY KEY IDENTITY,  -- ID do material
    tipo_material_id INT,                  -- ID do tipo de material (referencia Tipos_Materiais)
    Url NVARCHAR(MAX),                     -- URL do material
    Descricao TEXT,                        -- Descri��o do material

    id_aula INT,                           -- ID da aula
		FOREIGN KEY (id_aula) REFERENCES Aulas (id_aula),  -- Relacionamento com a tabela Aulas
		FOREIGN KEY (tipo_material_id) REFERENCES Tipos_Materiais(id_tipo)  -- Relacionamento com a tabela Tipos_Materiais
);
GO

CREATE TABLE Acompanhamento(
    id_acompanhamento INT PRIMARY KEY IDENTITY,
	Progresso DECIMAL(6,2),

    id_usuario INT
	 FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario),

	id_curso INT
	 FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso),

    id_aula INT
	 FOREIGN KEY (id_aula) REFERENCES Aulas (id_aula)

);
GO

CREATE TABLE Avaliacao(
    id_avaliacao INT PRIMARY KEY IDENTITY,

	id_usuario INT
	 FOREIGN KEY (id_usuario) REFERENCES Usuarios (id_usuario),

    id_curso INT
	 FOREIGN KEY (id_curso) REFERENCES Cursos (id_curso),

);
GO
