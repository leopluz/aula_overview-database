-- Consulta das informações dos alunos presentes numa Matrícula
SELECT 
	m.*, 
    a.nome, 
    a.email 
FROM 
	matricula m, 
    aluno a
WHERE
	m.id_aluno = a.id_aluno;

-- Usando LEFT JOIN
SELECT 
	m.*, 
    a.nome, 
    a.email 
FROM 
    matricula m
    LEFT JOIN aluno a
        on m.id_aluno = a.id_aluno;



-- Usando RIGHT JOIN
SELECT 
	m.*, 
    a.nome, 
    a.email 
FROM 
    matricula m
    RIGHT JOIN aluno a
        on m.id_aluno = a.id_aluno;