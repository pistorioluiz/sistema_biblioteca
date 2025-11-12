-- =============================================
-- DADOS INICIAIS DO SISTEMA
-- =============================================

-- Inserir livros
INSERT INTO livros (titulo, autor, ano_publicacao, categoria) VALUES
('Dom Casmurro', 'Machado de Assis', 1899, 'Romance'),
('O Cortiço', 'Aluísio Azevedo', 1890, 'Romance'),
('Iracema', 'José de Alencar', 1865, 'Romance'),
('O Alienista', 'Machado de Assis', 1882, 'Conto'),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 1881, 'Romance');

-- Inserir usuários
INSERT INTO usuarios (nome, email, telefone) VALUES
('Ana Silva', 'ana.silva@email.com', '(11) 9999-1111'),
('Carlos Santos', 'carlos.santos@email.com', '(11) 9999-2222'),
('Marina Oliveira', 'marina.oliveira@email.com', '(11) 9999-3333');

-- Inserir empréstimos
INSERT INTO emprestimos (livro_id, usuario_id, data_emprestimo, data_devolucao_prevista, status) VALUES
(1, 1, '2024-01-15', '2024-01-29', 'devolvido'),
(2, 2, '2024-02-01', '2024-02-15', 'ativo'),
(3, 1, '2024-02-10', '2024-02-24', 'ativo');

-- Atualizar disponibilidade dos livros
UPDATE livros SET disponivel = false WHERE id IN (2, 3);
