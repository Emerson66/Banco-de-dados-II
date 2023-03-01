CREATE TABLE produto (
	cod_prod integer PRIMARY KEY,
	Descricao text NOT NULL,
	qtde_disponivel integer NOT NULL
);

CREATE TABLE itensvenda (
	cod_venda integer PRIMARY KEY,
	id_produto integer REFERENCES produto(cod_prod),
	qtde_vendida integer NOT NULL
);