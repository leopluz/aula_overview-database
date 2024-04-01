-- Inserção de dados na tabela Aluno
INSERT INTO aluno (id_aluno, nome, data_nascimento, endereco, email, telefone) VALUES
(1, 'João Silva', STR_TO_DATE('2000-01-10', '%Y-%m-%d'), 'Rua A, 123', 'joao.silva@example.com', '(11) 1234-5678'),
(2, 'Maria Souza', STR_TO_DATE('1998-05-15', '%Y-%m-%d'), 'Av. B, 456', 'maria.souza@example.com', '(22) 9876-5432'),
(3, 'Pedro Santos', STR_TO_DATE('1999-09-20', '%Y-%m-%d'), 'Rua C, 789', 'pedro.santos@example.com', '(33) 4567-8901');

-- Inserção de dados na tabela Turma
INSERT INTO turma (id_turma, nome_turma, ano, semestre) VALUES
(101, 'Matemática', 2023, '1º Semestre'),
(102, 'História', 2023, '1º Semestre'),
(103, 'Biologia', 2023, '1º Semestre');

-- Inserção de dados na tabela Disciplina
INSERT INTO disciplina (id_disciplina, nome_disciplina, codigo_disciplina, professor_responsavel, carga_horaria) VALUES
(1, 'Cálculo', 'CALC101', 'Prof. Carlos', 60),
(2, 'Revolução Francesa', 'HIS101', 'Prof. Ana', 40),
(3, 'Genética', 'BIO101', 'Prof. Maria', 50);

-- Inserção de dados na tabela Matricula
INSERT INTO matricula (id_matricula, id_aluno, id_turma, id_disciplina, nota) VALUES
(1, 1, 101, 1, NULL),  -- João Silva matriculado na turma de Matemática para a disciplina de Cálculo
(2, 2, 102, 2, NULL),  -- Maria Souza matriculada na turma de História para a disciplina de Revolução Francesa
(3, 3, 103, 3, NULL),  -- Pedro Santos matriculado na turma de Biologia para a disciplina de Genética
(4, 1, 102, 2, NULL),  -- João Silva matriculado na turma de História para a disciplina de Revolução Francesa
(5, 1, 103, 3, NULL);  -- João Silva matriculado na turma de Biologia para a disciplina de Genética
