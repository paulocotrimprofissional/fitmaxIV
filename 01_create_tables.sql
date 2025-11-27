CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    data_nascimento DATE,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(150),
    data_matricula DATE,
    status VARCHAR(20)
);

CREATE TABLE Instrutor (
    id_instrutor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    especialidade VARCHAR(100),
    telefone VARCHAR(20),
    email VARCHAR(100),
    salario DECIMAL(10,2)
);

CREATE TABLE Turma (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    nome_turma VARCHAR(100),
    horario VARCHAR(30),
    dias_semana VARCHAR(50),
    id_instrutor INT,
    FOREIGN KEY (id_instrutor) REFERENCES Instrutor(id_instrutor)
);

CREATE TABLE PlanoTreino (
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    nome_plano VARCHAR(100),
    descricao TEXT,
    duracao_semanas INT,
    id_aluno INT,
    id_instrutor INT,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_instrutor) REFERENCES Instrutor(id_instrutor)
);

CREATE TABLE AvaliacaoFisica (
    id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
    data_avaliacao DATE,
    peso DECIMAL(5,2),
    altura DECIMAL(4,2),
    imc DECIMAL(5,2),
    observacoes TEXT,
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);

CREATE TABLE Mensalidade (
    id_mensalidade INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(10,2),
    data_vencimento DATE,
    status VARCHAR(20),
    id_aluno INT,
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);

CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    data_pagamento DATE,
    valor_pago DECIMAL(10,2),
    metodo_pagamento VARCHAR(30),
    id_mensalidade INT,
    id_aluno INT,
    FOREIGN KEY (id_mensalidade) REFERENCES Mensalidade(id_mensalidade),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
);

CREATE TABLE AlunoTurma (
    id_aluno_turma INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_turma INT,
    data_inicio DATE,
    status_participacao VARCHAR(50),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);