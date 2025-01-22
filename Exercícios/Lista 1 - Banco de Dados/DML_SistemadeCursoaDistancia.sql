INSERT INTO Usuarios (nome, email, senha, data_nascimento, tipo_usuario_id) 
VALUES 
	('Gabriel Rocha', 'Gabriel.rocha@email.com', 'senha123', '1993-07-09', 1),  -- 1 para 'Aluno'
	('Mirella Sacha', 'Mirella.sacha@email.com', 'senha321', '1998-06-04', 2),  -- 2 para 'Instrutor'
	('Patricia Rocha', 'Patricia.rocha@email.com', 'senha3213', '1975-08-26', 3), -- 3 para 'Administrador'
	('Gilberto Gomes', 'Gilberto.gomesa@email.com', 'senha456', '1975-06-25', 1), -- 1 para 'Aluno'
	('Joao Carlos', 'Joao.Carlos@email.com', 'senha654', '1968-09-13', 2);  -- 2 para 'Instrutor'
GO

INSERT INTO Categorias (nome, descricao)
VALUES 
	('Programação', 'Cursos relacionados ao desenvolvimento de software e programação de sistemas.'),
	('Design', 'Cursos focados em design gráfico, UX/UI e ferramentas criativas.'),
	('Marketing Digital', 'Cursos sobre estratégias de marketing, SEO, publicidade online e redes sociais.');
GO

INSERT INTO Cursos (Nome, Descricao, data_inicio, data_fim, id_categoria)
VALUES 
    ('Introdução à Programação com Python', 
    'Curso introdutório ideal para quem deseja aprender os fundamentos da programação utilizando Python.',
    '2025-02-01', '2025-06-01', 1),  -- Categoria: Programação

    ('Design Gráfico Avançado', 
    'Curso avançado com foco em design gráfico, utilizando ferramentas poderosas como Adobe Illustrator e Photoshop.',
    '2025-03-10', '2025-08-10', 2),  -- Categoria: Design

    ('Estratégias de Marketing Digital', 
    'Aprenda as melhores práticas de marketing digital e como utilizar Google Ads, Facebook Ads e outras plataformas de anúncios.',
    '2025-04-15', '2025-08-15', 3),  -- Categoria: Marketing Digital

    ('Desenvolvimento Web Full Stack', 
    'Aprenda a criar sites dinâmicos do zero, trabalhando tanto no front-end quanto no back-end, com tecnologias modernas como HTML, CSS, JavaScript e Node.js.',
    '2025-05-01', '2025-10-01', 1);  -- Categoria: Programação
GO

INSERT INTO Inscricao (id_usuario, id_curso, data_inscricao)
VALUES 
    (1, 1, '2025-02-01'),  -- Inscrição do João Carlos no curso de Python
    (2, 2, '2025-03-10'),  -- Inscrição da Mirella Sacha no curso de Design Gráfico
    (3, 3, '2025-04-15'),  -- Inscrição da Patricia Rocha no curso de Marketing Digital
    (4, 4, '2025-05-01');  -- Inscrição do Gilberto Gomes no curso de Desenvolvimento Web
GO

-- Inserindo aulas na tabela Aulas
INSERT INTO Aulas (id_curso, titulo, descricao, data_inicio, data_fim)
VALUES 
    (1, 'Primeiros Passos com Python', 'Aula introdutória sobre a sintaxe e os conceitos básicos do Python.', '2025-02-01', '2025-02-15'),
    (1, 'Estruturas Condicionais e Loops', 'Aprenda como usar condicionais e loops para controlar o fluxo de execução no Python.', '2025-02-16', '2025-02-28'),
    (2, 'Design de Logotipos Profissionais', 'Aula prática de criação de logotipos utilizando as ferramentas do Adobe Illustrator.', '2025-03-10', '2025-03-24'),
    (3, 'Introdução ao SEO', 'Fundamentos de SEO e como otimizar seu site para os motores de busca.', '2025-04-15', '2025-04-30'),
    (4, 'Fundamentos de HTML e CSS', 'Comece a desenvolver sites criando a estrutura básica com HTML e estilizando com CSS.', '2025-05-01', '2025-05-15');
GO


INSERT INTO Materiais_de_Apoio (id_aula, tipo_material_id, Url, Descricao)
VALUES 
    (1, 1, 'https://www.facom.ufu.br/~william/Disciplinas%202019-1/BIOTCH-GBT017-IntoducaoInformatica/285173966-aprendendo-python-pdf.pdf', 'Material de leitura para entender o básico de Python.'),
    (2, 2, 'https://www.youtube.com/watch?v=aluwHENKxqI', 'Vídeo tutorial sobre o uso de estruturas condicionais e loops no Python.'),
    (3, 3, 'https://awari.com.br/logo-python-aprenda-a-criar-logotipos-incriveis-com-python/', 'Link para artigo sobre como criar logotipos impactantes.'),
    (4, 4, 'https://ebaconline.com.br/blog/o-que-e-seo#:~:text=SEO%20(Search%20Engine%20Optimization)%20inclui,definido%20pela%20inten%C3%A7%C3%A3o%20do%20usu%C3%A1rio.', 'Artigo sobre o que é SEO e como melhorar o ranking de seu site nos motores de busca.'),
    (5, 1, 'https://github.com/GabrielRochaGomesDEV/Front-end-HTMLCSS', 'Guia para iniciantes sobre HTML e CSS, para criar páginas web.');

GO

INSERT INTO Acompanhamento (id_usuario, id_curso, id_aula, progresso)
VALUES 
    (1, 1, 1, 25.00),
    (2, 2, 3, 40.00),
    (3, 3, 4, 60.00),
    (4, 4, 2, 10.00),
    (5, 5, 3, 30.00);
GO

SELECT id_curso, nome
FROM Cursos;
GO

INSERT INTO Acompanhamento (id_usuario, id_curso, id_aula, progresso)
VALUES 
    (1, 1, 1, 25.00),  -- Curso 1 (Introdução à Programação com Python), Aula 1, 25% de progresso
    (2, 2, 3, 40.00),  -- Curso 2 (Design Gráfico Avançado), Aula 3, 40% de progresso
    (3, 3, 4, 60.00),  -- Curso 3 (Estratégias de Marketing Digital), Aula 4, 60% de progresso
    (4, 4, 2, 10.00),  -- Curso 4 (Desenvolvimento Web Full Stack), Aula 2, 10% de progresso
    (5, 1, 2, 30.00);  -- Curso 1 (Introdução à Programação com Python), Aula 2, 30% de progresso
GO

INSERT INTO Avaliacao (id_usuario, id_curso)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 1),
    (5, 2);
GO


