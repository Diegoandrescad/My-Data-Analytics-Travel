-- Consultar a la base de datos los post y etiquetas
SELECT posts_etiquetas.id as ID, posts.titulo, posts.estatus, etiquetas.nombre_etiqueta as etiqueta
FROM posts_etiquetas inner JOIN posts on posts.id_post = posts_etiquetas.id_post
INNER join etiquetas on etiquetas.id_etiqueta = posts_etiquetas.id_etiqueta;

 -- Otra forma de realizar la consulta
SELECT posts_etiquetas.id as ID, posts.titulo, posts.estatus, etiquetas.nombre_etiqueta as etiquetas
from posts_etiquetas, posts, etiquetas where posts_etiquetas.id_post = posts.id_post and posts_etiquetas.id_etiqueta = etiquetas.id_etiqueta

