SELECT a.nome, e.logradouro, e.numero, e.bairro, e.municipio, t.numero AS telefone
FROM Assinante a
INNER JOIN Endereco e ON a.endereco_id = e.endereco_id
LEFT JOIN Telefone t ON a.assinante_id = t.assinante_id
ORDER BY a.nome;