-- 1. Listar alunos com status ativo
SELECT nome, email, status
FROM Aluno
WHERE status = 'Ativo';

-- 2. Listar turmas junto com o nome do instrutor
SELECT T.nome_turma, I.nome AS instrutor
FROM Turma T
JOIN Instrutor I ON I.id_instrutor = T.id_instrutor;

-- 3. Listar alunos e suas respectivas turmas
SELECT A.nome AS aluno, T.nome_turma AS turma
FROM Aluno A
JOIN AlunoTurma AT ON AT.id_aluno = A.id_aluno
JOIN Turma T ON T.id_turma = AT.id_turma;

-- 4. Listar mensalidades pendentes
SELECT *
FROM Mensalidade
WHERE status = 'Pendente'
ORDER BY data_vencimento ASC;

-- 5. Limitar consulta a apenas 2 alunos
SELECT nome, email
FROM Aluno
LIMIT 2;
