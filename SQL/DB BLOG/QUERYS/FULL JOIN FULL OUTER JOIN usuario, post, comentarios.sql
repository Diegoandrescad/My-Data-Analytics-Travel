-- Consultar a la base de datos todo el conjunto universo de usuarios y posts
SELECT * From usuarios LEFT JOIN posts on usuarios.id_usuario = posts.id_usuario 
UNION
SELECT * From usuarios RIGHT JOIN posts on usuarios.id_usuario = posts.id_usuario;

-- Consultar a la base de datos, excluir todos usuarios que tienen posts asi como los posts que tienen usuarios
SELECT * From usuarios LEFT JOIN posts on usuarios.id_usuario = posts.id_usuario where posts.id_usuario is NULL
UNION
SELECT * From usuarios RIGHT JOIN posts on usuarios.id_usuario = posts.id_usuario where posts.id_usuario is NULL;

-- Consultar a la base de datos todo el conjunto universo de usuarios y comentarios
SELECT * From usuarios LEFT JOIN comentarios on usuarios.id_usuario = comentarios.id_usuario 
UNION
SELECT * From usuarios RIGHT JOIN comentarios on usuarios.id_usuario = comentarios.id_usuario;

-- Consultar a la base de datos, excluir aquellos usuarios con comentarios y comentarios con usuarios 
SELECT * From usuarios LEFT JOIN comentarios on usuarios.id_usuario = comentarios.id_usuario where comentarios.id_usuario is NULL
UNION
SELECT * From usuarios RIGHT JOIN comentarios on usuarios.id_usuario = comentarios.id_usuario where comentarios.id_usuario is NULL;

--CONCLUSION: Hay 2 usuarios que no han hecho ningún post, Así como no hay ningún post sin usuario, evitando hacer limpieza en la tabla de posts
-- Hay 2 usuarios sin comentarios, pero no hay comentarios sin usuarios, evitando hacer limpieza en la tabla de comentarios
-- No hay valores basura