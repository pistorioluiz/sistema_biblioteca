-- =============================================
-- MODELAGEM DO BANCO DE DADOS
-- =============================================

-- Tabela de Livros
CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(50) NOT NULL,
    ano_publicacao INTEGER,
    categoria VARCHAR(30),
    disponivel BOOLEAN DEFAULT TRUE,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Usuários
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Empréstimos
CREATE TABLE emprestimos (
    id SERIAL PRIMARY KEY,
    livro_id INTEGER REFERENCES livros(id),
    usuario_id INTEGER REFERENCES usuarios(id),
    data_emprestimo DATE DEFAULT CURRENT_DATE,
    data_devolucao_prevista DATE,
    data_devolucao_real DATE,
    status VARCHAR(20) DEFAULT 'ativo'
);
