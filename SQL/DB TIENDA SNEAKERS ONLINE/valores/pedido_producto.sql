INSERT INTO producto_pedido (id_pedido, id_producto)
SELECT 
    (FLOOR(RANDOM() * 80) + 1) AS id_pedido,
    (FLOOR(RANDOM() * 24) + 1) AS id_producto
FROM 
    generate_series(1, 120);