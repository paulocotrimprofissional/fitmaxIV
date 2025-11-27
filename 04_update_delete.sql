-----------------------------------------
-- COMANDOS UPDATE
-----------------------------------------

-- 1. Atualizar o telefone de um aluno
UPDATE Aluno
SET telefone = '11900001111'
WHERE id_aluno = 1;

-- 2. Marcar uma mensalidade como paga
UPDATE Mensalidade
SET status = 'Paga'
WHERE id_mensalidade = 1;

-- 3. Dar aumento salarial a um instrutor
UPDATE Instrutor
SET salario = salario + 200
WHERE id_instrutor = 1;


-----------------------------------------
-- COMANDOS DELETE
-----------------------------------------

-- 1. Remover um pagamento específico
DELETE FROM Pagamento
WHERE id_pagamento = 1;

-- 2. Remover o vínculo de um aluno com uma turma
DELETE FROM AlunoTurma
WHERE id_aluno_turma = 2;

-- 3. Excluir uma mensalidade (somente se não houver pagamento ativo)
DELETE FROM Mensalidade
WHERE id_mensalidade = 2;
