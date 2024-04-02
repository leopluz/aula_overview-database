-- Quantidade de matrículas em cada turma       
SELECT
	t.id_turma,
    t.nome_turma,
    COUNT(m.id_matricula) "Qtd Matriculas"
FROM 
    matricula m
    LEFT JOIN turma t
        on m.id_turma = t.id_turma
GROUP BY t.id_turma, t.nome_turma;