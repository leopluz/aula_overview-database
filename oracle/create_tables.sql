-- Tabela Aluno
CREATE TABLE aluno (
    id_aluno NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    nome VARCHAR2(100) NOT NULL,
    data_nascimento DATE,
    endereco VARCHAR2(255),
    email VARCHAR2(100),
    telefone VARCHAR2(20)
);

-- Tabela Turma
CREATE TABLE turma (
    id_turma NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    nome_turma VARCHAR2(100),
    ano NUMBER,
    semestre VARCHAR2(20)
);

-- Tabela Disciplina
CREATE TABLE disciplina (
    id_disciplina NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    nome_disciplina VARCHAR2(100),
    codigo_disciplina VARCHAR2(20),
    professor_responsavel VARCHAR2(100),
    carga_horaria NUMBER
);

-- Tabela Matricula
CREATE TABLE matricula (
    id_matricula NUMBER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    id_aluno NUMBER,
    id_turma NUMBER,
    id_disciplina NUMBER,
    nota NUMBER(4,2),
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma),
    FOREIGN KEY (id_disciplina) REFERENCES disciplina(id_disciplina)
);
