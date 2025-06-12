SELECT a.nome
FROM Assinante a
INNER JOIN (
    SELECT assinante_id, COUNT(*) AS qtd_telefones
    FROM Telefone
    GROUP BY assinante_id
    HAVING COUNT(*) > 1
) t ON a.assinante_id = t.assinante_id;