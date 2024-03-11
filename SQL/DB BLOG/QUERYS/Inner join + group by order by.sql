-- consultar a la base de datos la cantidad de veces que se repiten las categorias en los posts publicados ordenándolos por su ID
SELECT etiquetas.nombre_etiqueta as etiqueta, etiquetas.id_etiqueta as ID, COUNT(*) as cantidad 
FROM posts_etiquetas inner join posts on posts.id_post = posts_etiquetas.id_post
INNER join etiquetas on etiquetas.id_etiqueta = posts_etiquetas.id_etiqueta
GROUP by etiqueta ORDER by ID ASC;

-- consutar a la base de datos las cantidad de posts publicados por usuario y el estado del post
SELECt usuarios.id_usuario, usuarios.nickname, posts.estatus, COUNT (*) as cantidad
FROM usuarios inner join posts on usuarios.id_usuario = posts.id_usuario
GROUP by posts.id_usuario, posts.estatus;


-- consutar a la base de datos aquellos usuarios que tienen posts inactivos y su cantidad
SELECT usuarios.id_usuario, usuarios.nickname, posts.estatus, count (*) as cantidad_posts_inactivos
FROM usuarios inner JOIN posts on usuarios.id_usuario = posts.id_usuario
where posts.estatus = 'inactivo'
GROUP by usuarios.id_usuario;

-- consultar a la base de datos la cantidad de comentarios publicados por usuario
SELECT usuarios.id_usuario as ID, usuarios.nickname, comentarios.id_comentario as comentario, count (*) as cantidad_comentarios
FROM usuarios inner JOIN comentarios on usuarios.id_usuario = comentarios.id_usuario
GROUP by usuarios.id_usuario;

-- consultar a la base de datos la cantidad de post activos y comentarios por usuario
SELECT
    usuarios.id_usuario,
    usuarios.login,
    COUNT(DISTINCT posts.id_post) AS cantidad_posts_activos,
    COUNT(comentarios.id_comentario) AS cantidad_comentarios
FROM
    usuarios
LEFT JOIN
    posts ON usuarios.id_usuario = posts.id_usuario AND posts.estatus = 'activo'
LEFT JOIN
    comentarios ON usuarios.id_usuario = comentarios.id_usuario
GROUP BY
    usuarios.id_usuario, usuarios.nickname;

