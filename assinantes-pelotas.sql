SELECT a.nome
FROM Assinante a
INNER JOIN Tipo_Assinante ta ON a.tipo_assinante_id = ta.tipo_assinante_id
INNER JOIN Endereco e ON a.endereco_id = e.endereco_id
WHERE ta.descricao = 'residencial' AND e.municipio = 'Pelotas';