-- =============================================
-- CONSULTAS DO SISTEMA
-- =============================================

-- Consulta 1: Livros disponíveis
SELECT id, titulo, autor, categoria 
FROM livros 
WHERE disponivel = true
ORDER BY titulo;

-- Consulta 2: Empréstimos ativos
SELECT 
    u.nome as usuario,
    l.titulo as livro,
    e.data_emprestimo,
    e.data_devolucao_prevista
FROM emprestimos e
JOIN usuarios u ON e.usuario_id = u.id
JOIN livros l ON e.livro_id = l.id
WHERE e.status = 'ativo';

-- Consulta 3: Histórico completo
SELECT 
    u.nome as usuario,
    l.titulo as livro,
    e.data_emprestimo,
    e.data_devolucao_prevista,
    e.data_devolucao_real,
    e.status
FROM emprestimos e
JOIN usuarios u ON e.usuario_id = u.id
JOIN livros l ON e.livro_id = l.id
ORDER BY e.data_emprestimo DESC;

-- Consulta 4: Estatísticas
SELECT 
    COUNT(*) as total_livros,
    SUM(CASE WHEN disponivel = true THEN 1 ELSE 0 END) as livros_disponiveis,
    COUNT(DISTINCT autor) as total_autores
FROM livros;
