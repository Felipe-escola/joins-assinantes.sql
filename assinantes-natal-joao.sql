SELECT a.nome, t.numero AS telefone
FROM Assinante a
INNER JOIN Tipo_Assinante ta ON a.tipo_assinante_id = ta.tipo_assinante_id
INNER JOIN Endereco e ON a.endereco_id = e.endereco_id
LEFT JOIN Telefone t ON a.assinante_id = t.assinante_id
WHERE ta.descricao = 'comercial' 
AND (e.municipio = 'Natal' OR e.municipio = 'João Câmara');