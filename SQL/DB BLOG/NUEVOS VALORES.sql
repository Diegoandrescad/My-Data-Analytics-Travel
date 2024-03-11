INSERT INTO usuarios (login, password, nickname, email)
VALUES
  ('ana', 'ana123', 'Ana', 'ana@hotmail.com'),
  ('carlos', 'carlos456', 'Carlos', 'carl@gmail.com'),
  ('lucia', 'lucia789', 'Lucía', 'luci@gmail.com'),
  ('juan', 'juan101', 'Juan', 'juan@outlook.com'),
  ('maria', 'maria2022', 'María', 'maria@hotmail.com');
  
  INSERT INTO posts (titulo, fecha_publicacion, contenido, estatus, id_usuario, id_categoria)
VALUES 
    ('Nueva cura', '2023-03-06 12:00:00', 'sdfsdfsfsdfsdrfe', 'activo', 6, 1),
    ('Samnsung con IA', '2023-03-06 13:00:00', 'yeryuwuerugwehruhweuhrw', 'inactivo', 9, 2),
    ('Michael Jordan', '2023-03-06 14:00:00', 'nineijijariwejirjijeoirjioewjoirjow', 'activo', 10, 3),
    ('Gnadores del Oscars 2023', '2023-03-06 15:00:00', 'werjoiwjoierijwopjrpwjeijropew', 'inactivo', 6, 4),
    ('Las mejores cirptomonedas', '2023-03-06 16:00:00', 'Cjwejwrjwjeorjkwejkjr', 'activo', 9, 5);

INSERT INTO comentarios (cuerpo_comentario, id_usuario, id_post)
VALUES 
    ('mentiras', 9, 1),
    ('Creo que hubo mejores peliculas que esta', 6, 9),
    ('La mejor pelicula animada de la historia', 10, 9),
    ('Lebrom es mejor', 9, 11),
    ('Apple fan', 10, 10);

  