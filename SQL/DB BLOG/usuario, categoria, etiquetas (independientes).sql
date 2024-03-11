CREATE TABLE usuarios (
  id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
  login TEXT NOT NULL,
  password TEXT NOT NULL,
  nickname TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE
);

CREATE TABLE categorias (
  id_categoria INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre_categoria TEXT NOT NULL
);

CREATE TABLE etiquetas (
  id_etiqueta INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre_etiqueta TEXT NOT NULL
);
