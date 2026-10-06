
-- -- CRIANDO A TABELA DE ALUNOS
-- CREATE TABLE alunos (
--     id SERIAL PRIMARY KEY,
--     nome VARCHAR(50) NOT NULL
-- );

-- -- CRIANDO A TABELA DE EMPRÉSTIMOS (Com relacionamento FK)
-- CREATE TABLE emprestimos (
--     id SERIAL PRIMARY KEY,
--     livro VARCHAR(100) NOT NULL,
--     id_aluno INT REFERENCES alunos(id)
-- );

-- -- CADASTRANDO OS 15 ALUNOS SOLICITADOS
-- INSERT INTO alunos (nome) VALUES 
-- ('Lucas'),      -- ID 1
-- ('Victor'),     -- ID 2
-- ('Nicollas'),   -- ID 3
-- ('Ana'),        -- ID 4
-- ('Beatriz'),    -- ID 5
-- ('Carlos'),     -- ID 6
-- ('Daniel'),     -- ID 7
-- ('Eduardo'),    -- ID 8
-- ('Fernanda'),   -- ID 9
-- ('Gabriel'),    -- ID 10
-- ('Helena'),     -- ID 11 (Ficará sem livro)
-- ('Igor'),       -- ID 12 (Ficará sem livro)
-- ('Julia'),      -- ID 13 (Ficará sem livro)
-- ('Karina'),     -- ID 14 (Ficará sem livro)
-- ('Leonardo');   -- ID 15 (Ficará sem livro)

-- -- CADASTRANDO OS 10 LIVROS EMPRESTADOS
-- INSERT INTO emprestimos (livro, id_aluno) VALUES
-- ('O Alquimista', 1),
-- ('Dom Casmurro', 2),
-- ('O Pequeno Príncipe', 3),
-- ('Harry Potter e a Pedra Filosofal', 4),
-- ('O Senhor dos Anéis', 5),
-- ('1984', 6),
-- ('A Menina que Roubava Livros', 7),
-- ('O Hobbit', 8),
-- ('Diário de um Banana', 9),
-- ('Percy Jackson e o Ladrão de Raios', 10);



-- -- Ver todos os alunos cadastrados
-- SELECT * FROM alunos;

-- -- Ver todos os empréstimos registrados
-- SELECT * FROM emprestimos;


-- SELECT alunos.nome, emprestimos.livro
-- FROM alunos
-- INNER JOIN emprestimos ON alunos.id = emprestimos.id_aluno;  

-- SELECT alunos.nome, emprestimos.livro
-- FROM alunos
-- LEFT JOIN emprestimos ON alunos.id = emprestimos.id_aluno;


-- SELECT alunos.nome
-- FROM alunos
-- LEFT JOIN emprestimos ON alunos.id = emprestimos.id_aluno
-- WHERE emprestimos.id_aluno IS NULL;

-- INSERT INTO emprestimos (livro, id_aluno) VALUES ('Turma da Mônica', 50);