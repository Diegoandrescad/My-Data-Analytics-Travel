-- consultar a la base de datos, el conteo de cuantas veces han comentado aquellos usaurios que han comentado
SELECT id_usuario, COUNT (*) as cantidad_veces_x_usuario FROM comentarios GROUP by id_usuario;

--consultar a la base de datos, conteo de cuantas veces se ha publicado post en cada año registrado
SELECT strftime('%Y', fecha_publicacion) AS año_publicacion, COUNT (*) as numero_posts from posts GROUP BY año_publicacion;

--consultar a la base de datos, conteo de cuantas veces se ha publicado post en cada mes registrado
SELECT strftime('%B', fecha_publicacion) as meses_publicacion, COUNT (*) as numero_posts from posts GROUP by meses_publicacion;

-- consultar a la base de datos, el conteo de cuántos post estan activo e innactivos por año
SELECT estatus, strftime('%Y', fecha_publicacion) as año, COUNT (*) as numero_posts FROM posts
group by estatus, año order by año aSC;

-- consultar a la base de datos ordenar la tabla de usuarios de manera descendente por nickmname
SELECT * from usuarios order by nickname desc;

-- consultar a la base de datos contar las direcciones email gmail 
SELECT substr(email, INSTR(email, '@') + 1) AS dominio, COUNT(*) AS cantidad FROM usuarios
WHERE email LIKE '%@gmail%' GROUP BY dominio;

-- consultar a la base de datos aquellos usuarios que han publicado menor o igual a 5 posts
SELECT id_usuario as usuario, COUNT (*) as cantidad_posts from posts GROUP by usuario HAVING cantidad_posts <= 5;

-- consultar a la base de datos cuántos posts tienen mas de un comentario  
SELECT id_post as post, COUNT (*) as cantidad_comentarios from comentarios GROUP by post HAVING cantidad_comentarios > 1;


