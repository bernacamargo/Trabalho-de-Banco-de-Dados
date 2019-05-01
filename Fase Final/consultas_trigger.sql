-- RD01 - O  sistema deve consultar o voo pelo destino.
SELECT A.codigo, A.origem, A.destino, A.data, A.horario, A.status,
       B.nome "companhia aerea", 
	   C.nome "terminal"
FROM voo A
INNER JOIN companhia_voo B ON B.CODIGO = A.CODIGO 
INNER JOIN voo_terminal C ON C.CODIGO = A.CODIGO 
WHERE A.destino = <nome destino>

-- RD02 - O sistema deve consultar quantos voos existem por companhia aérea.
SELECT ca.nome, COUNT(v.codigo)
FROM companhia_aerea as ca, companhia_voo as cv, voo as v
WHERE ca.nome = cv.nome AND cv.codigo = v.codigo
GROUP BY ca.nome;

-- RD 03 - O sistema deve consultar os serviços pelo nome e categoria.
SELECT se.nome, se.categoria, se.telefone, se.horario_funcionamento 
FROM servicos AS se
WHERE se.categoria LIKE <%categoria%>
AND se.nome LIKE <%nome%>

-- RD 04 - O sistema deve consultar os voos por uma faixa de data.
SELECT A.codigo, A.origem, A.destino, A.data, A.horario, A.status,
       B.nome "companhia aerea", 
	   C.nome "terminal"
FROM voo A
INNER JOIN companhia_voo B ON B.CODIGO = A.CODIGO 
INNER JOIN voo_terminal C ON C.CODIGO = A.CODIGO 
WHERE A.data BETWEEN <inicio.data> AND <final.data>

-- RD05 O sistema deve consultar a quantidade média de voos por mês durante um ano
SELECT voos.ano, AVG(voos.qtd_voo) AS media_voos_p_mes
FROM (
SELECT MONTH(voo.data) AS mes, YEAR(voo.data) AS ano, COUNT(voo.codigo) AS qtd_voo
FROM voo
GROUP BY MONTH(voo.data), YEAR(voo.data) ) AS voos
GROUP BY voos.ano

-- RD06 - O sistema deve consultar os serviços dado um terminal.
SELECT s.nome, s.categoria, s.telefone, s.horario_funcionamento
FROM terminal as t, terminal_servicos as ts, servicos as s
WHERE t.nome = <nome terminal> AND t.nome = ts.nome AND ts.codigo = s.codigo



-- TRIGGERS --

-- Verifica status --
CREATE OR REPLACE FUNCTION verificar_status() RETURNS TRIGGER AS $status$
	BEGIN
		IF NOT (NEW.status = 'Cancelado' OR NEW.status = 'Previsto' OR NEW.status = 'Atrasado' OR NEW.status = 'Partindo' 
			OR NEW.status = 'Ultima Chamada' OR NEW.status = 'Embarque Imediato' OR NEW.status = 'Confirmado' 
			OR NEW.status = 'Decolado' OR NEW.status = 'Desembarcando') THEN
			RAISE EXCEPTION 'O status inserido não é permitido';
		END IF;
		RETURN NEW;
	END
$status$ LANGUAGE plpgsql;

CREATE TRIGGER verificar_status BEFORE INSERT OR UPDATE ON voo
	FOR EACH ROW EXECUTE PROCEDURE verificar_status();

-- Tipo terminal -- 
CREATE OR REPLACE FUNCTION tipoTerminal() RETURNS TRIGGER AS $tipo$
	BEGIN
		IF NOT (NEW.tipo = 'Carga' OR NEW.tipo = 'Embarque' OR NEW.tipo = 'Desembarque' OR NEW.tipo = 'Embarque/Desembarque') THEN
			RAISE EXCEPTION 'O tipo do terminal inserido não é permitido';
		END IF;
		RETURN NEW;
	END
$tipo$ LANGUAGE plpgsql;

CREATE TRIGGER tipoTerminal BEFORE INSERT OR UPDATE ON terminal
	FOR EACH ROW EXECUTE PROCEDURE tipoTerminal();

-- Verificar a DATA do voo
CREATE OR REPLACE FUNCTION verificar_data() RETURNS TRIGGER AS $data$
	BEGIN
		IF NEW.data < CURRENT_DATE THEN
			RAISE EXCEPTION 'Data inserida é inválida';
		END IF;
		RETURN NEW;
	END
$data$ LANGUAGE plpgsql;

CREATE TRIGGER verificar_data BEFORE INSERT OR UPDATE ON voo
	FOR EACH ROW EXECUTE PROCEDURE verificar_data();
