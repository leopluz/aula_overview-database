-- Tabela Aluno
CREATE TABLE aluno (
    id_aluno SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR(255),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

-- Tabela Turma
CREATE TABLE turma (
    id_turma SERIAL PRIMARY KEY,
    nome_turma VARCHAR(100),
    ano INT,
    semestre VARCHAR(20)
);

-- Tabela Disciplina
CREATE TABLE disciplina (
    id_disciplina SERIAL PRIMARY KEY,
    nome_disciplina VARCHAR(100),
    codigo_disciplina VARCHAR(20),
    professor_responsavel VARCHAR(100),
    carga_horaria INT
);

-- Tabela Matricula
CREATE TABLE matricula (
    id_matricula SERIAL PRIMARY KEY,
    id_aluno INT,
    id_turma INT,
    id_disciplina INT,
    nota DECIMAL(4,2),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
);