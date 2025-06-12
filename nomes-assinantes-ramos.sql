SELECT a.nome, r.nome AS ramo
FROM Assinante a
LEFT JOIN Ramo r ON a.assinante_id = r.assinante_id
ORDER BY r.nome, a.nome;