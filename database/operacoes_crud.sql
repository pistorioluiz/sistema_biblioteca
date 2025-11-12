-- =============================================
-- OPERAÇÕES CRUD
-- =============================================

-- INSERT: Adicionar novo livro
INSERT INTO livros (titulo, autor, ano_publicacao, categoria) 
VALUES ('O Mulato', 'Aluísio Azevedo', 1881, 'Romance');

-- INSERT: Adicionar novo usuário
INSERT INTO usuarios (nome, email, telefone) 
VALUES ('João Pereira', 'joao.pereira@email.com', '(11) 9999-4444');

-- UPDATE: Registrar devolução de livro
UPDATE emprestimos 
SET 
    data_devolucao_real = CURRENT_DATE,
    status = 'devolvido'
WHERE id = 2;

UPDATE livros 
SET disponivel = true 
WHERE id = 2;

-- UPDATE: Atualizar telefone do usuário
UPDATE usuarios 
SET telefone = '(11) 98888-7777' 
WHERE id = 1;

-- DELETE: Remover usuário (se não tiver empréstimos ativos)
DELETE FROM usuarios 
WHERE email = 'joao.pereira@email.com' 
AND id NOT IN (SELECT usuario_id FROM emprestimos WHERE status = 'ativo');

-- SELECT: Verificar resultados
SELECT 'Livros disponíveis:' as info;
SELECT titulo, autor FROM livros WHERE disponivel = true;

SELECT 'Empréstimos ativos:' as info;
SELECT * FROM emprestimos WHERE status = 'ativo';
