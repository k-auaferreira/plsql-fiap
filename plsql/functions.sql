CREATE OR REPLACE FUNCTION fx_calc (
    p_valor NUMBER
) RETURN NUMBER IS
    total NUMBER;
BEGIN
    total := p_valor * 10;
    RETURN total;
END;

SELECT
    fx_calc(450)
FROM
    dual;

CREATE OR REPLACE FUNCTION fx_calc_fgts (
    p_valor NUMBER
) RETURN NUMBER IS
BEGIN
    RETURN p_valor * 0.06;
END;

SELECT
    fx_calc_fgts(200)
FROM
    dual;
    
-- Crie uma função que calcule o valor total de um pedido
-- A função deve receber o número do pedido e retornar o valor total dele;

CREATE OR REPLACE FUNCTION fx_calc_pedido (
    num_pedido NUMBER
) RETURN NUMBER IS
    total NUMBER;
BEGIN
    SELECT
        val_total_pedido
    INTO total
    FROM
        pedido
    WHERE
        cod_pedido = num_pedido;

    RETURN total;
END;

-- Crie uma função que calcule o valor total de pedidos por cidade
CREATE OR REPLACE FUNCTION fx_total_ped_cid (
    p_cidade VARCHAR2
) RETURN NUMBER IS
    total NUMBER;
BEGIN
    SELECT
        SUM(a.val_total_pedido)
    INTO total
    FROM
             pedido a
        INNER JOIN endereco_cliente b ON a.cod_cliente = b.cod_cliente
        INNER JOIN cidade           c ON b.cod_cidade = c.cod_cidade
    WHERE
        c.nom_cidade = p_cidade;

END;