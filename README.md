# OficinaMecanica_DIO

Descrição do Projeto
Este projeto é um sistema de controle e gerenciamento de execução de ordens de serviço (OS) em uma oficina mecânica. Ele foi desenvolvido para organizar o fluxo de trabalho da oficina, desde a entrada dos veículos, a designação de serviços e mecânicos, até a finalização e entrega do serviço ao cliente. O projeto modela o relacionamento entre clientes, veículos, ordens de serviço, mecânicos, peças e serviços realizados, permitindo uma gestão eficiente das operações da oficina.

Objetivo
O objetivo principal é criar um esquema conceitual do banco de dados para organizar e controlar os serviços executados, garantindo que todas as etapas do processo de conserto ou revisão de veículos sejam gerenciadas adequadamente.

Entidades Principais
Cliente: Representa os clientes que levam seus veículos à oficina.

Atributos: id_cliente, nome, telefone, email, endereco
Veículo: Representa os veículos pertencentes aos clientes.

Atributos: id_veiculo, placa, modelo, ano, cliente_id
Relacionamento: Cada veículo pertence a um cliente.
Mecânico: Representa os mecânicos que trabalham na oficina.

Atributos: id_mecanico, nome, endereco, especialidade, telefone
Ordem de Serviço (OS): Representa as ordens de serviço criadas para os veículos.

Atributos: id_os, data_emissao, status, valor_total, data_conclusao, veiculo_id, equipe_id
Relacionamento: Cada OS está vinculada a um veículo e a uma equipe de mecânicos.
Serviço: Representa os serviços que podem ser executados na oficina.

Atributos: id_servico, descricao, preco_mao_de_obra
Peça: Representa as peças utilizadas nos serviços realizados.

Atributos: id_peca, nome, preco
Equipe de Mecânicos: Representa a equipe de mecânicos que trabalha em uma ordem de serviço.

Atributos: id_equipe
Relacionamento: Uma equipe de mecânicos é formada por um ou mais mecânicos.
Serviços Realizados: Representa os serviços executados para uma ordem de serviço específica.

Atributos: id_servico_realizado, os_id, servico_id, quantidade, preco_unitario
Peças Utilizadas: Representa as peças usadas em uma ordem de serviço específica.

Atributos: id_peca_utilizada, os_id, peca_id, quantidade, preco_unitario
Relacionamentos
Cliente-Veículo: Um cliente pode ter um ou mais veículos, mas cada veículo pertence a apenas um cliente.
Veículo-OS: Cada veículo pode ter várias ordens de serviço, mas cada OS está associada a apenas um veículo.
OS-Equipe: Cada OS é atribuída a uma única equipe, e cada equipe pode trabalhar em várias OS.
Equipe-Mecânicos: Uma equipe é composta por vários mecânicos, e um mecânico pode fazer parte de várias equipes.
OS-Serviços Realizados: Cada OS pode ter vários serviços realizados.
OS-Peças Utilizadas: Cada OS pode utilizar várias peças.
Funcionalidades
Gerenciamento de clientes e veículos: Cadastro e consulta de clientes e seus respectivos veículos.
Gerenciamento de ordens de serviço: Emissão, consulta e atualização do status de ordens de serviço.
Controle de serviços e peças: Registro dos serviços executados e peças utilizadas em cada ordem de serviço.
Atribuição de mecânicos: Designação de equipes de mecânicos para as ordens de serviço.
Scripts e Queries SQL
Criação do Banco de Dados e Tabelas: O script SQL anexo realiza a criação de todas as tabelas e as relações entre elas.
Consultas SQL: O projeto inclui diversas queries que realizam operações como:
Consultar clientes, veículos e suas ordens de serviço.
Calcular o valor total das peças utilizadas em uma OS.
Listar os serviços realizados em uma ordem de serviço
