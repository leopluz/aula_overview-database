SELECT 
	m.id_matricula "Código da Matrícula", 
    d.codigo_disciplina "Codigo",
    d.nome_disciplina "Disciplina",
    t.nome_turma "Turma",
    CONCAT(
        t.ano,
        CASE SUBSTR(t.semestre,1,1)
            WHEN '1' THEN 'A'
            WHEN '2' THEN 'B'
            ELSE ''
        END
    ) "Semestre",
    a.nome "Nome do Aluno", 
    a.email "Email do Aluno" 
FROM 
    matricula m
    LEFT JOIN aluno a
        on m.id_aluno = a.id_aluno
    LEFT JOIN turma t
        on m.id_turma = t.id_turma
    LEFT JOIN disciplina d
        on m.id_disciplina = d.id_disciplina
ORDER BY
    a.data_nascimento ASC;