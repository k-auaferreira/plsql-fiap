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