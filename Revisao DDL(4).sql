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