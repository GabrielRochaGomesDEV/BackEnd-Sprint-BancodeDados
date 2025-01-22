SELECT * FROM Usuarios;
GO

SELECT 
	Nome,
	Email
FROM
	Usuarios;
GO

SELECT * FROM Categorias ORDER BY nome;
GO

SELECT * FROM Categorias WHERE id_categoria > 1 AND id_categoria < 5
GO
