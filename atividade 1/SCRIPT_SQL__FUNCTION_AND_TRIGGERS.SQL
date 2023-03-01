CREATE OR REPLACE FUNCTION atualiza_estoque()
RETURNS TRIGGER
AS
$$
DECLARE
	qtde INTEGER; --Quantidade disponivel de produto em estoque
BEGIN
	SELECT qtde_disponivel FROM produto WHERE produto.cod_prod = NEW.id_produto INTO qtde;
	IF qtde < NEW.qtde_vendida THEN
		RAISE EXCEPTION 'Quantidade indisponivel em estoque!';
	ELSE
		UPDATE produto
		SET qtde_disponivel = qtde_disponivel - NEW.qtde_vendida
		WHERE cod_prod = NEW.id_produto;
	END IF;
	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE TRIGGER atualiza_estoque_trigger
AFTER INSERT ON itensvenda
FOR EACH ROW
EXECUTE PROCEDURE atualiza_estoque();

SELECT * FROM itensvenda;
SELECT * FROM produto;
	