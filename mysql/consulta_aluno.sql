SELECT 
	m.*, 
    a.nome, 
    a.email 
FROM 
	matricula m, 
    aluno a
WHERE
	m.id_aluno = a.id_aluno;

SELECT 
	m.*, 
    a.nome, 
    a.email 
FROM 
    matricula m
    LEFT JOIN aluno a
        on m.id_aluno = a.id_aluno;