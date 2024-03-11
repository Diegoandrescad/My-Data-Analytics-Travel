-- Consultar a la base de datos todos los comentarios publicados en los posts
SELECT posts.id_post, posts.titulo, posts.fecha_publicacion, posts.estatus, comentarios.id_comentario, comentarios.cuerpo_comentario as comentario
from posts RIGHT JOIN comentarios on posts.id_post = comentarios.id_post;

-- Consultar a la base de datos todos los comentarios con post ACTIVOS
SELECT posts.id_post, posts.titulo, posts.fecha_publicacion, posts.estatus, comentarios.id_comentario, comentarios.cuerpo_comentario as comentario
from posts RIGHT JOIN comentarios on posts.id_post = comentarios.id_post
WHERE posts.estatus = 'activo';

-- Consultar a la base de datos cuántos comentarios con posts ACTIVOS hay en total
SELECT COUNT(*) as Total_comentarios_activos FROM (SELECT posts.id_post, posts.titulo, posts.fecha_publicacion, posts.estatus, comentarios.id_comentario
from posts RIGHT JOIN comentarios on posts.id_post = comentarios.id_post
WHERE posts.estatus = 'activo');

-- Consultar a la base de datos cuántos comentarios con posts INACTIVOS hay en total
SELECT COUNT(*) FROM (SELECT posts.id_post, posts.titulo, posts.fecha_publicacion, posts.estatus, comentarios.id_comentario
from posts RIGHT JOIN comentarios on posts.id_post = comentarios.id_post
WHERE posts.estatus = 'inactivo');

-- Consultar a la base de datos todos los posts publicados sin comentarios 
SELECT comentarios.id_comentario, comentarios.cuerpo_comentario as comentario, posts.id_post, posts.titulo, posts.fecha_publicacion, posts.estatus
from posts LEFT JOIN comentarios on posts.id_post = comentarios.id_post
WHERE comentarios.id_post is NULL;

-- Consultar a la base de datos cuántos posts publicados sin comentarios 
SELECT COUNT (*) FROM (SELECT comentarios.id_comentario, comentarios.cuerpo_comentario as comentario, posts.id_post, posts.titulo, posts.fecha_publicacion, posts.estatus
from posts LEFT JOIN comentarios on posts.id_post = comentarios.id_post
WHERE comentarios.id_post is NULL);

-- CONCLUSION: Hay un total de 16 comentarios en posts activos y 5 en posts inactivos. Unicamente 2 posts no tienen comentarios.