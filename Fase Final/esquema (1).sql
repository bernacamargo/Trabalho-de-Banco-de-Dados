-- Criando as tabelas --

-- Tabela Voo --
CREATE TABLE voo(
	codigo SERIAL PRIMARY KEY,
	horario VARCHAR(15) NOT NULL,
	origem VARCHAR(30) NOT NULL,
	destino VARCHAR(30) NOT NULL,
	data VARCHAR(15) NOT NULL,
	status VARCHAR(20) NOT NULL
);

-- Tabela Companhia aérea --
CREATE TABLE companhia_aerea(
	nome VARCHAR(30) NOT NULL PRIMARY KEY
);

-- Tabela Terminais -- 
CREATE TABLE terminal(
	nome VARCHAR(30) NOT NULL PRIMARY KEY,
	tipo VARCHAR(12) NOT NULL,
	observacoes TEXT
);

-- Tabela Estacionamento -- OBS: Nao sei se ta certo, VERIFICAR!
CREATE TABLE estacionamento(
	nome VARCHAR(30) NOT NULL PRIMARY KEY,
	valor_hora SMALLINT NOT NULL,
	categoria VARCHAR(10) NOT NULL,
	qtd_vagas SMALLINT NOT NULL
);

-- Tabela Serviços --
CREATE TABLE servicos(
	codigo SERIAL PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	categoria VARCHAR(15) NOT NULL,
	telefone VARCHAR(16),
	horario_funcionamento VARCHAR(15) NOT NULL
);

CREATE TABLE companhia_voo(
	nome VARCHAR(30),
	codigo integer,
	FOREIGN KEY(nome) REFERENCES companhia_aerea(nome) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(codigo) REFERENCES voo(codigo) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (nome, codigo)
);

CREATE TABLE voo_terminal(
	nome VARCHAR(30),
	codigo integer,
	FOREIGN KEY(nome) REFERENCES terminal(nome) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(codigo) REFERENCES voo(codigo) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (nome, codigo)
);

CREATE TABLE estacionamento_terminal(
	nome_terminal VARCHAR(30),
	nome_estacionamento VARCHAR(30),
	FOREIGN KEY(nome_terminal) REFERENCES terminal(nome) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(nome_estacionamento) REFERENCES estacionamento(nome) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (nome_terminal, nome_estacionamento)
);

-- NAO LEMBRO O QUE EU FIZ NESSA, NAO ENTENDI HAHAHA
CREATE TABLE categoria_valor(

);

CREATE TABLE terminal_servicos(
	nome VARCHAR(30),
	codigo integer,
	FOREIGN KEY(nome) REFERENCES terminal(nome) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(codigo) REFERENCES servicos(codigo) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY (nome, codigo)
);