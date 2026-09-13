create table aluno(
    id_aluno int auto_increment primary key,
    nome varchar(30) not null,
    email varchar(30) not null
);

create table turma(
    id_turma int auto_increment primary key,
    nome varchar(30) not null,
    ano_letivo date not null,
    periodo varchar(20) not null
);

create table disciplina(
    id_disciplina int auto_increment primary key,
    nome varchar(30) not null,
    carga_horaria int not null
);

create table professor(
    id_professor int auto_increment primary key,
    nome varchar(30) not null,
    email varchar(30) not null
);

create table matricula(
    id_matricula int auto_increment primary key,
    id_aluno int not null,
    id_turma int not null,
    data_matricula date not null,

    foreign key(id_aluno) references aluno(id_aluno),
    foreign key(id_turma) references turma(id_turma)
);

create table turma_disciplina(
    in_turma_disciplina int auto_increment primary key,
    id_turma int not null,
    id_disciplina int not null,
    id_professor int not null,

    foreign key(id_turma) references turma(id_turma),
    foreign key(id_disciplina) references disciplina(id_disciplina),
    foreign key(id_professor) references professor(id_professor)
);

create table nota(
    id_nota int auto_increment primary key,
    id_matricula int not null,
    id_disciplina int not null,
    nota float not null,
    tipo_avaliacao varchar(30) not null,

    foreign key(id_matricula) references matricula(id_matricula),
    foreign key(id_disciplina) references disciplina(id_disciplina)
);

create table frequencia(
    id_frequencia int auto_increment primary key,
    id_matricula int not null,
    id_disciplina int not null,
    faltas int not null,
    presencas int not null,

    foreign key(id_matricula) references matricula(id_matricula),
    foreign key(id_disciplina) references disciplina(id_disciplina)
);

INSERT INTO aluno (nome, email, data_nascimento) VALUES
('Ana Beatriz Souza', 'ana.souza@email.com', '2008-03-12'),
('Bruno Carvalho', 'bruno.carvalho@email.com', '2007-11-25'),
('Carla Menezes', 'carla.menezes@email.com', '2008-07-02'),
('Diego Farias', 'diego.farias@email.com', '2007-05-19'),
('Elisa Nogueira', 'elisa.nogueira@email.com', '2008-01-30'),
('Felipe Torres', 'felipe.torres@email.com', '2007-09-08');
 
INSERT INTO turma (nome, ano_letivo, periodo) VALUES
('9A', 2026, 'Manha'),
('9B', 2026, 'Manha'),
('1EM-A', 2026, 'Tarde'),
('1EM-B', 2026, 'Tarde'),
('2EM-A', 2026, 'Manha');
 

INSERT INTO disciplina (nome, carga_horaria) VALUES
('Matematica', 80),
('Portugues', 80),
('Historia', 60),
('Geografia', 60),
('Ciencias', 70),
('Ingles', 40);
 

INSERT INTO professor (nome, email) VALUES
('Marcos Vinicius', 'marcos.vinicius@escola.com'),
('Patricia Lima', 'patricia.lima@escola.com'),
('Roberto Alves', 'roberto.alves@escola.com'),
('Sandra Ribeiro', 'sandra.ribeiro@escola.com'),
('Tiago Moraes', 'tiago.moraes@escola.com');
 

INSERT INTO matricula (id_aluno, id_turma, data_matricula) VALUES
(1, 1, '2026-02-02'),
(2, 1, '2026-02-02'),
(3, 2, '2026-02-03'),
(4, 3, '2026-02-03'),
(5, 3, '2026-02-04'),
(6, 4, '2026-02-04');
 
INSERT INTO turma_disciplina (id_turma, id_disciplina, id_professor) VALUES
(1, 1, 1), -- 9A - Matematica - Marcos
(1, 2, 2), -- 9A - Portugues - Patricia
(2, 1, 1), -- 9B - Matematica - Marcos
(2, 3, 3), -- 9B - Historia - Roberto
(3, 1, 1), -- 1EM-A - Matematica - Marcos
(3, 4, 4), -- 1EM-A - Geografia - Sandra
(4, 5, 5), -- 1EM-B - Ciencias - Tiago
(4, 6, 2); -- 1EM-B - Ingles - Patricia
 
 
INSERT INTO nota (id_matricula, id_disciplina, nota, tipo_avaliacao) VALUES
(1, 1, 8.5, 'Prova 1'),
(1, 2, 7.0, 'Prova 1'),
(2, 1, 6.0, 'Prova 1'),
(2, 3, 9.0, 'Trabalho'),
(3, 1, 5.5, 'Prova 1'),
(4, 1, 7.8, 'Prova 1'),
(4, 4, 8.0, 'Trabalho'),
(5, 1, 9.2, 'Prova 1'),
(6, 5, 6.5, 'Prova 1'),
(6, 6, 8.8, 'Trabalho');
 

INSERT INTO frequencia (id_matricula, id_disciplina, faltas, presencas) VALUES
(1, 1, 2, 38),
(1, 2, 0, 40),
(2, 1, 5, 35),
(2, 3, 1, 39),
(3, 1, 8, 32),
(4, 1, 3, 37),
(4, 4, 0, 40),
(5, 1, 1, 39),
(6, 5, 4, 36),
(6, 6, 2, 38);
 


SELECT a.nome AS aluno, m.data_matricula, t.nome AS turma
FROM matricula m
JOIN aluno a ON a.id_aluno = m.id_aluno
JOIN turma t ON t.id_turma = m.id_turma
WHERE m.data_matricula >= '2026-02-01'
ORDER BY m.data_matricula DESC;
 

SELECT a.nome AS aluno, t.nome AS turma, t.periodo
FROM aluno a
JOIN matricula m ON m.id_aluno = a.id_aluno
JOIN turma t ON t.id_turma = m.id_turma
ORDER BY a.nome ASC;
 

SELECT a.nome AS aluno, ROUND(AVG(n.nota), 2) AS media_geral
FROM nota n
JOIN matricula m ON m.id_matricula = n.id_matricula
JOIN aluno a ON a.id_aluno = m.id_aluno
GROUP BY a.nome
ORDER BY media_geral DESC;
 

SELECT t.nome AS turma, COUNT(m.id_matricula) AS qtd_alunos
FROM turma t
LEFT JOIN matricula m ON m.id_turma = t.id_turma
GROUP BY t.nome
ORDER BY qtd_alunos DESC;
 

SELECT d.nome AS disciplina, MAX(n.nota) AS maior_nota, MIN(n.nota) AS menor_nota
FROM nota n
JOIN disciplina d ON d.id_disciplina = n.id_disciplina
GROUP BY d.nome;
 

SELECT a.nome AS aluno, SUM(f.faltas) AS total_faltas
FROM frequencia f
JOIN matricula m ON m.id_matricula = f.id_matricula
JOIN aluno a ON a.id_aluno = m.id_aluno
GROUP BY a.nome
ORDER BY total_faltas DESC;
 

SELECT d.nome AS disciplina, ROUND(AVG(n.nota), 2) AS media_disciplina
FROM nota n
JOIN disciplina d ON d.id_disciplina = n.id_disciplina
GROUP BY d.nome
HAVING AVG(n.nota) < 7
ORDER BY media_disciplina ASC;
 

SELECT DISTINCT a.nome AS aluno, n.nota
FROM nota n
JOIN matricula m ON m.id_matricula = n.id_matricula
JOIN aluno a ON a.id_aluno = m.id_aluno
WHERE n.nota > (SELECT AVG(nota) FROM nota)
ORDER BY n.nota DESC;
 

SELECT p.nome AS professor, d.nome AS disciplina, t.nome AS turma
FROM turma_disciplina td
JOIN professor p ON p.id_professor = td.id_professor
JOIN disciplina d ON d.id_disciplina = td.id_disciplina
JOIN turma t ON t.id_turma = td.id_turma
ORDER BY p.nome, t.nome;
 

SELECT
    a.nome AS aluno,
    t.nome AS turma,
    ROUND(AVG(n.nota), 2) AS media_notas,
    (SELECT SUM(f.faltas)
       FROM frequencia f
      WHERE f.id_matricula = m.id_matricula) AS total_faltas,
    (SELECT SUM(f.faltas) + SUM(f.presencas)
       FROM frequencia f
      WHERE f.id_matricula = m.id_matricula) AS total_aulas
FROM matricula m
JOIN aluno a ON a.id_aluno = m.id_aluno
JOIN turma t ON t.id_turma = m.id_turma
JOIN nota n ON n.id_matricula = m.id_matricula
GROUP BY a.nome, t.nome, m.id_matricula
HAVING media_notas < 7
    OR (SELECT SUM(f.faltas) FROM frequencia f WHERE f.id_matricula = m.id_matricula)
       / (SELECT SUM(f.faltas) + SUM(f.presencas) FROM frequencia f WHERE f.id_matricula = m.id_matricula) > 0.15
ORDER BY media_notas ASC;
 