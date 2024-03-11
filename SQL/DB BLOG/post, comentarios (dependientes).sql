
CREATE TABLE posts (
  id_post INTEGER PRIMARY KEY AUTOINCREMENT,
  titulo TEXT NOT NULL,
  fecha_publicacion DATETIME,
  contenido TEXT NOT NULL,
  estatus TEXT DEFAULT 'activo',
  id_usuario INTEGER,
  id_categoria INTEGER,
  FOREIGN KEY (id_categoria) REFERENCES categorias (id_categoria) ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE comentarios (
  id_comentario INTEGER PRIMARY KEY AUTOINCREMENT,
  cuerpo_comentario TEXT NOT NULL,
  id_usuario INTEGER NOT NULL,
  id_post INTEGER NOT NULL,
  FOREIGN KEY (id_post) REFERENCES posts (id_post) ON DELETE NO ACTION ON UPDATE NO ACTION,
  FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario) ON DELETE NO ACTION ON UPDATE NO ACTION
);



