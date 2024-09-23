-- Consulta de clientes e seus veículos:

SELECT c.nome, v.placa, v.modelo, v.ano
FROM Cliente c
JOIN Veiculo v ON c.id_cliente = v.cliente_id;

-- Consulta de serviços realizados em uma OS:

SELECT os.id_os, s.descricao, sr.quantidade, sr.preco_unitario
FROM OrdemServico os
JOIN ServicosRealizados sr ON os.id_os = sr.os_id
JOIN Servico s ON sr.servico_id = s.id_servico
WHERE os.id_os = 1;
