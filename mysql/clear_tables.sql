-- Exclusão dos registros de matrícula precisam ser realizados primeiro
-- devido a dependências através de Foreign Keys
DELETE FROM matricula;
DELETE FROM aluno;
DELETE FROM disciplina;
DELETE FROM turma;