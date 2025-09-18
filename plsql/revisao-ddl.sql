-- Revisão DDL

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

SELECT DISTINCT
    A.cod_produto,
    B.nom_produto
FROM
         pf1788.item_pedido a
    INNER JOIN pf1788.produto b ON ( a.cod_produto = b.cod_produto )
ORDER BY 
    a.cod_produto;
    
--

SELECT
    A.cod_produto,
    B.nom_produto
FROM
         pf1788.item_pedido a
    INNER JOIN pf1788.produto b ON ( a.cod_produto = b.cod_produto )
GROUP BY 
    a.cod_produto,
    b.nom_produto
    
-- JOINs

-- INNER
-- LEFT:
-- RIGTH
-- FULL
-- NATURAL

-- QUERO SABER TODOS OS ESTADOS QUE TENHA OU NÃO CIDADES CADASTRADAS

SELECT
    NOM_CLIENTE,
    COUNT(b.COD_PEDIDO)
FROM
    pf1788.cliente a
    LEFT JOIN pf1788.pedido b on (a.cod_cliente = b.cod_cliente)
GROUP BY
    a.nom_cliente
ORDER BY
    2;SELECT * FROM pf1788.

--
SELECT * FROM pf1788.CLIENTE A
    INNER JOIN pf1788.PEDIDO B
ON (A.COD_CLIENTE=B.COD_CLIENTE);

--

SELECT
    NOM_CLIENTE,
    COUNT(b.COD_PEDIDO)
FROM
    pf1788.cliente a
    INNER JOIN pf1788.pedido b on (a.cod_cliente = b.cod_cliente)
GROUP BY
    a.nom_cliente
ORDER BY
    2 DESC;

--

SELECT
    NOM_CLIENTE,
    COUNT(b.COD_PEDIDO)
FROM
    pf1788.cliente a
    LEFT JOIN pf1788.pedido b on (a.cod_cliente = b.cod_cliente)
GROUP BY
    a.nom_cliente
ORDER BY
    2;