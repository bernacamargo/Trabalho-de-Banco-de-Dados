/* --------------- INSERIR CIA AÉREAS --------------- */

INSERT INTO companhia_aerea(
	nome)
	VALUES ('Aerolíneas Argentinas');
	
INSERT INTO companhia_aerea(
	nome)
	VALUES ('Air Canada');
	
INSERT INTO companhia_aerea(
	nome)
	VALUES ('Airfrance');
	
INSERT INTO companhia_aerea(
	nome)
	VALUES ('Alitalia');
INSERT INTO companhia_aerea(
	nome)
	VALUES ('American Airlines');

INSERT INTO companhia_aerea(
	nome)
	VALUES ('Avianca');
	
INSERT INTO companhia_aerea(
	nome)
	VALUES ('Emirates');
	
INSERT INTO companhia_aerea(
	nome)
	VALUES ('GOL');

INSERT INTO companhia_aerea(
	nome)
	VALUES ('Latam');

INSERT INTO companhia_aerea(
	nome)
	VALUES ('Qatar');

/* --------------- END CIA AÉREAS --------------- */

/*  --------------- INSERIR TERMINAIS  --------------- */

INSERT INTO terminal(
	nome, tipo, observacoes)
	VALUES ('Terminal 1', 'Embarque/Desembarque', 'Piso Único');


INSERT INTO terminal(
	nome, tipo, observacoes)
	VALUES ('Terminal 2', 'Desembarque', '');

INSERT INTO terminal(
	nome, tipo, observacoes)
	VALUES ('Terminal 3', 'Embarque', 'Dois Pisos; Contém Salas VIPs; Possuí Elevadores');

INSERT INTO terminal(
	nome, tipo, observacoes)
	VALUES ('Terminal de Cargas', 'Carga', '');


/*  --------------- END INSERIR TERMINAIS  --------------- */

/* --------------- INSERIR VOOS  --------------- */

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('1094', '11:20:00', 'São Paulo', 'Rio de Janeiro', '2019-01-22', 'Decolado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('GOL', '1094');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '1094');
--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3707', '11:30:00', 'São Paulo', 'Doha', '2019-01-22', 'Decolado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Qatar', '3707');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '3707');
--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('9282', '11:50:30', 'São Paulo', 'Buenos Aires', '2019-01-22', 'Partindo');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Aerolíneas Argentinas', '9282');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '9282');
--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('2672', '11:55:00', 'São Paulo', 'Florianopolis', '2019-01-22', 'Partindo'); 

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Avianca', '2672'); 

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '2672');
--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('7800', '11:50:59', 'São Paulo', 'Roma', '2019-01-22', 'Cancelado');  

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Alitalia', '7800');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '7800');
--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3360', '12:20:00', 'São Paulo', 'Dubai', '2019-01-22', 'Ultima Chamada'); 

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Emirates', '3360');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '3360');
--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('4632', '12:20:00', 'São Paulo', 'Campo Grande', '2019-01-22', 'Ultima Chamada');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Airfrance', '4632');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '4632');
--


INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('1276', '12:05:59', 'São Paulo', 'Miami', '2019-01-22', 'Embarque Imediato');   

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('American Airlines', '1276');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '1276');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3530', '12:20:49', 'São Paulo', 'São Luís', '2019-01-22', 'Embarque Imediato');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Latam', '3530');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '3530');
--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('4537', '12:25:00', 'São Paulo', 'Rio de Janeiro', '2019-01-22', 'Confirmado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Air Canada', '4537');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '4537');

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('0062', '11:40', 'Houston', 'São Paulo', '2019-01-22', 'Desembarcando');


INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('American Airlines', '0062');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 2', '0062');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('0845', '11:40:00', 'Toronto', 'São Paulo', '2019-01-22', 'Desembarcando');


INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Air Canada', '0845');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '0845');

--
INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('6045', '11:45:00', 'Salvador', 'São Paulo', '2019-01-22', 'Desembarcando');


INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Latam', '6045');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '6045');

--
INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('2926', '12:00:00', 'Vitória', 'São Paulo', '2019-01-23', 'Confirmado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('GOL', '2926');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 2', '2926');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3853', '12:05:00', 'Dubai', 'São Paulo', '2019-01-24', 'Previsto');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Emirates', '3853');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 2', '3853');

-- 

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3112', '12:10:40', 'Uberlândia', 'São Paulo', '2019-01-25', 'Previsto');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Avianca', '3112');

	
INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '3112');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('8501', '12:25:20', 'Lisboa', 'São Paulo', '2019-01-24', 'Atrasado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Alitalia', '8501');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '8501');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3502', '12:25:10', 'Paris', 'São Paulo', '2019-01-25', 'Atrasado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Airfrance', '3502');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 2', '3502');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('1901', '12:30:00', 'Bogotá', 'São Paulo', '2019-01-26', 'Previsto');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Aerolíneas Argentinas', '1901');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '1901');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3135', '11:45:20', 'Doha', 'São Paulo', '2019-01-25', 'Confirmado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Qatar', '3135');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 2', '3135');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3212', '11:45:00', 'Doha', 'São Paulo', '2019-01-26', 'Confirmado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Qatar', '3212');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '3212');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3976', '12:25:00', 'São Paulo', 'Paris', '2019-01-27', 'Atrasado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Airfrance', '3976');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '3976');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('2912', '12:00:00', 'São Paulo', 'Rio de Janeiro', '2019-01-27', 'Previsto');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('GOL', '2912');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '2912');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3821', '12:00:00', 'São Paulo', 'Salvador', '2019-01-24', 'Confirmado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('GOL', '3821');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '3821');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3532', '12:25:00', 'São Paulo', 'São Luís', '2019-01-25', 'Confirmado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Latam', '3532');

INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '3532');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('8502', '12:25:20', 'Lisboa', 'São Paulo', '2019-01-26', 'Cancelado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Alitalia', '8502');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '8502');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('8512', '12:25:20', 'Qatar', 'São Paulo', '2019-01-25', 'Confirmado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('Qatar', '8512');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 1', '8512');

--

INSERT INTO voo(
	codigo, horario, origem, destino, data, status)
	VALUES ('3887', '12:00:00', 'São Paulo', 'Rio de Janeiro', '2019-01-26', 'Cancelado');

INSERT INTO companhia_voo(
	nome, codigo)
	VALUES ('GOL', '3887');


INSERT INTO voo_terminal(
	nome, codigo)
	VALUES ('Terminal 3', '3887');

/* --------------- END INSERIR VOOS  --------------- */

/* --------------- INSERIR ESTACIONAMENTOS --------------- */

-- Estacionamentos
INSERT INTO estacionamento(
	nome, categoria, qtd_vagas)
	VALUES ('GRUAirport Parking - Terminal 1', 'Standard', '486');

INSERT INTO estacionamento_terminal(
	nome_terminal, nome_estacionamento)
	VALUES ('Terminal 1', 'GRUAirport Parking - Terminal 1');

--

INSERT INTO estacionamento(
	nome, categoria, qtd_vagas)
	VALUES ('GRUAirport Parking - Terminal 2', 'Premium', '877');

INSERT INTO estacionamento_terminal(
	nome_terminal, nome_estacionamento)
	VALUES ('Terminal 2', 'GRUAirport Parking - Terminal 2');

--

INSERT INTO estacionamento(
	nome, categoria, qtd_vagas)
	VALUES ('GRUAirport Parking - Terminal 3', 'Economy', '637');

INSERT INTO estacionamento_terminal(
	nome_terminal, nome_estacionamento)
	VALUES ('Terminal 3', 'GRUAirport Parking - Terminal 3');

--

INSERT INTO estacionamento(
	nome, categoria, qtd_vagas)
	VALUES ('GRUAirport Parking - Terminal Cargas', 'Weight', '105');

INSERT INTO estacionamento_terminal(
	nome_terminal, nome_estacionamento)
	VALUES ('Terminal de Cargas', 'GRUAirport Parking - Terminal Cargas');

-- Inserir Valor/H por Categoria --

INSERT INTO categoria_valor(
	categoria, valor_hora)
	VALUES ('Weight', '10');

INSERT INTO categoria_valor(
	categoria, valor_hora)
	VALUES ('Economy', '15');

INSERT INTO categoria_valor(
	categoria, valor_hora)
	VALUES ('Standard', '20');

INSERT INTO categoria_valor(
	categoria, valor_hora)
	VALUES ('Premium', '24');

/* --------------- END INSERIR ESTACIONAMENTOS --------------- */



/*  --------------- INSERIR SERVIÇOS  --------------- */

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (1, 'Bradesco', 'Banco', '(11) 2445-4141', '10:00-16:00');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 1);
-- 

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (2, 'Santander', 'Banco', ' (11) 2445-2906', '10:00-16:00');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 1', 2);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 2);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 2);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (3, 'Check-in da Beleza', 'Estética', '(11) 2445-7454', '06:00-23:00');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 1', 3);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (4, 'Droga Raia', 'Farmácia', '(11) 2445-7011', '00:00-23:59');



INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 4);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 4);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (5, 'Farmais', 'Farmácia', '(11) 2445-5730', '06:00-22:00');


INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 1', 5);


INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 5);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (6, 'O Boticário', 'Perfumaria', '(11) 2445-3805', '07:00-22:00');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 6);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (7, 'Maybelline', 'Perfumaria', '', '06:00-23:00');


INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 7);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 7);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (8, 'Saraiva', 'Livros e Revistas', '(11) 2445-2295', '07:00-22:00');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 8);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (9, 'Hudson News', 'Livros e Revistas', ' (11) 2445-2408', '07:00-22:00');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 9);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (10, 'Casa Bauducco', 'Café/Sorveteria', '', '00:00-23:59');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 1', 10);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 10);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 10);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (11, 'Kopenhagen', 'Café/Sorveteria', '', '06:00-22:00');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 1', 11);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 11);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 11);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (12, 'Bobs', 'Lanchonete', '(11)2445-7428', '00:00-23:59');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 12);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 12);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (13, 'Burger King', 'Lanchonete', '', '00:00-23:59');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 1', 13);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 13);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 13);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (14, 'Frango Assado', 'Restaurante', '', '12:00-22:00');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 1', 14);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (15, 'Montana Grill', 'Restaurante', '(11) 2445-3030', '06:00-02:00');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 1', 15);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 15);

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 15);



INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (16, 'Bradesco', 'Banco', '(11) 2445-4148', '10:00-18:00');


INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 16);
-- 


INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (17, 'Bradesco', 'Banco', '(11) 2445-4145', '00:00-23:59');

INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 1', 17);
	
-- 

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (18, 'Frango Assado', 'Restaurante', '', '12:00-23:00');


INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 2', 18);

--

INSERT INTO servicos(
	codigo, nome, categoria, telefone, horario_funcionamento)
	VALUES (19, 'Frango Assado', 'Restaurante', '', '11:00-22:00');


INSERT INTO terminal_servicos(
	nome, codigo)
	VALUES ('Terminal 3', 19);

/*  --------------- END INSERIR SERVIÇOS  --------------- */


