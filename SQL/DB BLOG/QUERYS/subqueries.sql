-- Consultar a la base de datos el recuento de posts publicados por fecha agrupados y ordenados desde la fecha menos reciente hasta la más reciente
SELECT new_table_projection.fecha, COUNT(*) AS cantidad_posts
FROM (
    SELECT DATE(MIN(fecha_publicacion)) AS fecha, STRFTIME('%Y', fecha_publicacion) AS post_year
    FROM posts
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.fecha 
ORDER BY new_table_projection.fecha;

-- Consultar a la base de datos seleccionar el posts con la fecha mas reciente
SELECT *
FROM posts
WHERE fecha_publicacion = (
    SELECT MAX(fecha_publicacion)
    FROM posts
);

-- Consultar a la base de datos seleccionar la fecha más reciente en que se haya publicado un post
SELECT MAX(fecha_publicacion)
FROM posts;