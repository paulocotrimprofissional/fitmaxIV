-- Inserção de Instrutores
INSERT INTO Instrutor (nome, cpf, especialidade, telefone, email, salario)
VALUES
('Carlos Mendes', '123.456.789-00', 'Musculação', '11999990001', 'carlos@fitmax.com', 3500),
('Juliana Rocha', '987.654.321-00', 'Crossfit', '11999990002', 'juliana@fitmax.com', 4200),
('Marcos Lima', '192.837.465-00', 'Pilates', '11999990003', 'marcos@fitmax.com', 3800);

-- Inserção de Alunos
INSERT INTO Aluno (nome, cpf, data_nascimento, telefone, email, endereco, data_matricula, status)
VALUES
('Paulo Cotrim', '111.222.333-44', '1998-05-10', '11988887777', 'paulo@email.com', 'Rua A, 100', '2024-01-10', 'Ativo'),
('Ana Souza', '555.666.777-88', '2000-08-14', '11977776666', 'ana@email.com', 'Rua B, 200', '2024-02-02', 'Ativo'),
('Ricardo Lima', '999.888.777-66', '1995-10-20', '11966665555', 'ricardo@email.com', 'Rua C, 300', '2024-02-20', 'Ativo');

-- Inserção de Turmas
INSERT INTO Turma (nome_turma, horario, dias_semana, id_instrutor)
VALUES
('Musculação Básica', '08:00', 'Seg/Qua/Sex', 1),
('Crossfit Avançado', '19:00', 'Ter/Qui', 2),
('Pilates Relax', '15:00', 'Seg/Sex', 3);

-- Inserção de relação Aluno-Turma
INSERT INTO AlunoTurma (id_aluno, id_turma, data_inicio, status_participacao)
VALUES
(1, 1, '2024-02-01', 'Ativo'),
(1, 2, '2024-03-01', 'Ativo'),
(2, 3, '2024-02-10', 'Ativo');

-- Inserção de Mensalidades
INSERT INTO Mensalidade (valor, data_vencimento, status, id_aluno)
VALUES
(150.00, '2024-03-10', 'Pendente', 1),
(150.00, '2024-03-15', 'Pendente', 2),
(150.00, '2024-03-20', 'Paga', 3);

-- Inserção de Pagamentos
INSERT INTO Pagamento (data_pagamento, valor_pago, metodo_pagamento, id_mensalidade, id_aluno)
VALUES
('2024-03-20', 150.00, 'PIX', 3, 3);
