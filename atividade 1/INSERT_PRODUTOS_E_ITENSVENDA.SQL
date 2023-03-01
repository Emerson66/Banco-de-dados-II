INSERT INTO produto (
	cod_prod, descricao, qtde_disponivel
) VALUES
	(1, 'Mouse Gamer', 100),
	(2, 'Teclado RGB', 200),
	(3, 'Pilha AAA',150),
	(4, 'gabinete Positivo', 75),
	(5, 'pendrive 128GB',50),
	(6, 'Fone de Ouvido JBL', 25),
	(7, 'Monitor LG',25),
	(8, 'Cabo HDMI',10),
	(9, 'Mouse pad',5),
	(10, 'HD SSD 256',1);

INSERT INTO itensvenda (
	cod_venda,
	id_produto,
	qtde_vendida
) VALUES
	(1,1,20),
	(2,2,10),
	(3,3,5),
	(4,4,2),
	(5,5,1),
	(6,6,1),
	(7,7,1),
	(8,8,1),
	(9,9,1),
	(10,10,1);