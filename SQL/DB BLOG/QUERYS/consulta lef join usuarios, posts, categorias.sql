-- Consultar a la base de datos todos los usuarios que hallan publicado o no posts y sus categorias
SELECT usuarios.id_usuario as ID, usuarios.login, usuarios.nickname, posts.titulo, posts.fecha_publicacion, posts.estatus,
categorias.nombre_categoria as categoria
FROM usuarios LEFT JOIN posts on usuarios.id_usuario = posts.id_usuario
LEFT JOIN categorias on categorias.id_categoria = posts.id_categoria;

-- Consultar a la base de datos todos los usuarios que SI hallan publicado posts y sus categorias
SELECT usuarios.id_usuario as ID, usuarios.login, usuarios.nickname, posts.titulo, posts.fecha_publicacion, posts.estatus,
categorias.nombre_categoria as categoria
FROM usuarios LEFT JOIN posts on usuarios.id_usuario = posts.id_usuario
LEFT JOIN categorias on categorias.id_categoria = posts.id_categoria
WHERE posts.id_usuario is NOT NULL;

-- Consultar a la tabla de datos ¿Cuántos son los usuarios que SI han publicado posts?
SELECT COUNT (*) as total_de_usuarios_que_han_publicado from (SELECT usuarios.id_usuario as ID, usuarios.login, usuarios.nickname, posts.titulo, posts.fecha_publicacion, posts.estatus,
categorias.nombre_categoria as categoria
FROM usuarios LEFT JOIN posts on usuarios.id_usuario = posts.id_usuario
LEFT JOIN categorias on categorias.id_categoria = posts.id_categoria
WHERE posts.id_usuario is NOT NULL);

-- Consultar a la tabla de datos ¿Cuántos son los usuarios que NO han publicado posts?
SELECT COUNT (*) as total_de_usuarios_que_no_han_publicado from (SELECT usuarios.id_usuario as ID, usuarios.login, usuarios.nickname, posts.titulo, posts.fecha_publicacion, posts.estatus,
categorias.nombre_categoria as categoria
FROM usuarios LEFT JOIN posts on usuarios.id_usuario = posts.id_usuario
LEFT JOIN categorias on categorias.id_categoria = posts.id_categoria
WHERE posts.id_usuario is NULL);

-- CONCLUSION: Hay 13 usuarios que SI han publicado posts, mientras que 2 usuarios NO han publicado nada