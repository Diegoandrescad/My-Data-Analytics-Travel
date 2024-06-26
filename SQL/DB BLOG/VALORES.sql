
-- Datos de prueba

-- Usuarios
INSERT INTO usuarios (id_usuario, login, password, nickname, email)
VALUES (1, 'israel', 'jc8209*(^GCHN_(hcLA', 'Israel', 'israel@platziblog.com'),
(2, 'monica', '(*&^LKJDHC_(*#YDLKJHODG', 'Moni', 'monica@platziblog.com'),
(3,'laura', 'LKDJ)_*(-c.M:\"[pOwHDˆåßƒ∂', 'Lau', 'laura@platziblog.com'),
(4, 'edgar', 'LLiy)CX*Y:M<A<SC_(*N>O', 'Ed', 'edgar@platziblog.com'),
(5, 'perezoso', '&N_*JS)_Y)*(&TGOKS', 'Oso Pérez', 'perezoso@platziblog.com');

-- Categorías
INSERT INTO categorias (id_categoria, nombre_categoria)
VALUES (1, 'Ciencia'),
       (2, 'Tecnología'),
       (3, 'Deportes'),
       (4, 'Espectáculos'),
       (5, 'Economía');


-- Etiquetas
INSERT INTO etiquetas (id_etiqueta, nombre_etiqueta)
VALUES (1,'Robótica'),
       (2,'Computación'),
       (3,'Teléfonos Móviles'),
       (4,'Automovilismo'),
       (5,'Campeonatos'),
       (6,'Equipos'),
       (7,'Bolsa de valores'),
       (8,'Inversiones'),
       (9,'Brokers'),
       (10,'Celebridades'),
       (11,'Eventos'),
       (12,'Moda'),
       (13,'Avances'),
       (14,'Nobel'),
       (15,'Matemáticas'),
       (16,'Química'),
       (17,'Física'),
       (18,'Largo plazo'),
       (19,'Bienes Raíces'),
       (20,'Estilo');


-- Posts

INSERT INTO posts (titulo, fecha_publicacion, contenido, estatus, id_usuario, id_categoria)
VALUES
  ('Se presenta el nuevo teléfono móvil en evento', '2030-04-05 00:00:00',
   'Phasellus laoreet eros nec vestibulum varius...', 'activo', 1, 3),
  ('Avances en robótica y su impacto en la sociedad', '2030-04-06 00:00:00',
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', 'activo', 2, 1),
  ('Cómo invertir en la bolsa de valores a largo plazo', '2030-04-07 00:00:00',
   'Nullam viverra quam porta orci efficitur imperdiet...', 'activo', 3, 5),
  ('Los secretos de las celebridades en el mundo de la moda', '2030-04-08 00:00:00',
   'Curabitur posuere, elit sed consectetur blandit...', 'inactivo', 4, 4),
  ('Descubrimientos científicos recientes en matemáticas', '2030-04-09 00:00:00',
   'Donec ornare sem eget massa pharetra rhoncus...', 'activo', 5, 1),
  ('Los mejores equipos deportivos del año', '2030-04-10 00:00:00',
   'Ut viverra est et arcu egestas fringilla...', 'activo', 1, 3),
  ('Nobel de Química: Descubrimientos revolucionarios', '2030-04-11 00:00:00',
   'Morbi vulputate ante quis elit pretium...', 'activo', 2, 1),
  ('Tendencias de estilo para el próximo año', '2030-04-12 00:00:00',
   'Aenean a massa a leo tristique malesuada...', 'inactivo', 3, 4);

-- Posts-etiquetas
INSERT INTO posts_etiquetas (id_post, id_etiqueta)
VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (3, 6),
  (4, 7),
  (4, 8),
  (5, 9),
  (5, 10),
  (6, 11),
  (6, 12),
  (7, 13),
  (7, 14),
  (8, 15),
  (8, 16),
  (1, 17),
  (2, 18),
  (3, 19),
  (4, 20);

INSERT INTO comentarios (id_post, cuerpo_comentario, id_usuario)
VALUES
  (1, 'Excelente artículo. Me encantó.', 1),
  (1, 'Muy interesante. Gracias por compartir.', 2),
  (2, '¿Hay algún enlace para obtener más información?', 3),
  (2, 'Me gustaría saber más sobre este tema.', 4),
  (3, '¡Increíble! Esto me ayudará en mi investigación.', 5),
  (3, '¿Alguien más tiene datos sobre esto?', 1),
  (4, '¿Cuál es la fuente de esta información?', 2),
  (4, 'Necesito más detalles para entender completamente.', 3),
  (5, '¡Bravo! Este es un gran descubrimiento.', 4),
  (5, '¿Hay algún estudio científico que respalde esto?', 5),
  (6, '¿Alguien más ha probado esto?', 1),
  (6, 'Estoy emocionado de experimentar con esto.', 2),
  (7, '¿Cuándo se otorgará el próximo premio Nobel?', 3),
  (7, 'Este campo de investigación es fascinante.', 4),
  (8, '¿Cuál es el impacto económico de esto?', 5),
  (8, 'Me gustaría ver algunos datos estadísticos.', 1);
