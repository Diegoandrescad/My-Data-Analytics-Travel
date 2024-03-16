-- Generar 80 valores para la tabla pedido
INSERT INTO pedido (fecha_pedido, total, id_usuario, id_metodo)
SELECT
    '2022-01-01'::TIMESTAMP + random() * ('2023-12-31'::TIMESTAMP - '2022-01-01'::TIMESTAMP),
    round((300 + random() * (1000 - 300))::NUMERIC, 2)::MONEY,
    FLOOR(random() * 50) + 1,
    FLOOR(random() * 5) + 1
FROM
    generate_series(1, 80);
