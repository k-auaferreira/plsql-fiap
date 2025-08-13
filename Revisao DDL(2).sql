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
