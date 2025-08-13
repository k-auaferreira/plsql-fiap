SELECT
    cod_pedido "Pedido",
    SUM (qtd_item) "Total itens"
FROM
    pf1788.item_pedido
    -- WHERE cod_pedido = 161487
HAVING
-- Sempre usado depois do WHERE
    SUM (qtd_item) < 300
GROUP BY
    cod_pedido
    order by 2 desc
-- NUNCA USAR DISTINCT EM PRODUÇÂO