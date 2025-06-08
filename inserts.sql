INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Antonio Fuentes', 'antonio.fuentes@gmail.com', 'pass789', 'Miembro');
INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Alberto Garc�a', 'alberto.garcia@gmail.com', 'clave789', 'Administrador');
INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Oscar Pardo', 'oscar.pardo@gmail.com', 'password123', 'Miembro');
INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Gabriel Lozano', 'gabriel.lozano@gmail.com', 'segura456', 'Miembro');
INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Luc�a Herrera', 'lucia.herrera@gmail.com', 'segura999', 'Miembro');
INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Raquel Soto', 'raquel.soto@gmail.com', 'clave777', 'Miembro');
INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Javier Mendoza', 'javier.mendoza@gmail.com', 'pass555', 'Miembro');
INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Sergio Mart�nez', 'sergio.martinez@gmail.com', 'clave123', 'Administrador');
INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Daniela L�pez', 'daniela.lopez@gmail.com', 'segura321', 'Miembro');
INSERT INTO Usuario (nombre, correo, contrase�a, rol) VALUES ('Fernando Vargas', 'fernando.vargas@gmail.com', 'password888', 'Miembro');
INSERT INTO Podcast (titulo, creador, descripcion, fecha_publicacion, categoria, popularidad) VALUES 
('El Mundo del Software', 'Carlos Mart�nez', 'Todo sobre desarrollo web, aplicaciones y programaci�n.', TO_DATE('2025-07-01', 'YYYY-MM-DD'), 'Tecnolog�a', 120);
INSERT INTO Podcast (titulo, creador, descripcion, fecha_publicacion, categoria, popularidad) VALUES 
('Grandes Inventos', 'Ana Fern�ndez', 'C�mo la tecnolog�a ha cambiado la historia.', TO_DATE('2025-07-05', 'YYYY-MM-DD'), 'Ciencia', 150);
INSERT INTO Podcast (titulo, creador, descripcion, fecha_publicacion, categoria, popularidad) VALUES 
('Psicolog�a y Emociones', 'Laura Soto', 'Charlas sobre emociones y c�mo manejarlas.', TO_DATE('2025-07-10', 'YYYY-MM-DD'), 'Salud', 180);
INSERT INTO Podcast (titulo, creador, descripcion, fecha_publicacion, categoria, popularidad) VALUES 
('Negocios Inteligentes', 'Mart�n L�pez', 'Consejos pr�cticos para emprendedores.', TO_DATE('2025-07-12', 'YYYY-MM-DD'), 'Negocios', 200);
INSERT INTO Podcast (titulo, creador, descripcion, fecha_publicacion, categoria, popularidad) VALUES 
('Historia en 10 minutos', 'Sof�a Ruiz', 'Episodios r�pidos sobre momentos hist�ricos clave.', TO_DATE('2025-07-15', 'YYYY-MM-DD'), 'Historia', 160);
INSERT INTO Podcast (titulo, creador, descripcion, fecha_publicacion, categoria, popularidad) VALUES 
('Psicolog�a y Emociones', 'Laura Soto', 'Charlas sobre emociones y c�mo manejarlas.', TO_DATE('2025-07-10', 'YYYY-MM-DD'), 'Salud', 180);
INSERT INTO Podcast (titulo, creador, descripcion, fecha_publicacion, categoria, popularidad) VALUES 
('Negocios Inteligentes', 'Mart�n L�pez', 'Consejos pr�cticos para emprendedores.', TO_DATE('2025-07-12', 'YYYY-MM-DD'), 'Negocios', 200);
INSERT INTO Podcast (titulo, creador, descripcion, fecha_publicacion, categoria, popularidad) VALUES 
('Historia en 10 minutos', 'Sof�a Ruiz', 'Episodios r�pidos sobre momentos hist�ricos clave.', TO_DATE('2025-07-15', 'YYYY-MM-DD'), 'Historia', 160);
INSERT INTO Puntuacion (id_usuario, id_podcast, valor, comentario) VALUES 
(6, 6, 4, 'Muy buen contenido sobre desarrollo de software, aunque faltan ejemplos.');
INSERT INTO Puntuacion (id_usuario, id_podcast, valor, comentario) VALUES 
(7, 7, 5, 'Me encant� el episodio sobre los inventos que revolucionaron la tecnolog�a.');
INSERT INTO Puntuacion (id_usuario, id_podcast, valor, comentario) VALUES 
(8, 8, 3, 'Las explicaciones son buenas, pero le falta m�s energ�a al presentador.');
INSERT INTO Comentario (id_usuario, id_podcast, comentario) 
VALUES (6, 6, 'Muy buena introducci�n al desarrollo web, espero m�s episodios t�cnicos.');
INSERT INTO Comentario (id_usuario, id_podcast, comentario) 
VALUES (7, 7, 'Los inventos que mencionan en el episodio me sorprendieron, excelente trabajo.');
INSERT INTO Comentario (id_usuario, id_podcast, comentario) 
VALUES (8, 8, 'Buen contenido sobre emociones, pero algunos temas se repiten.');
INSERT INTO Busqueda (id_usuario, termino_busqueda, fecha_busqueda) 
VALUES (6, 'Frameworks de desarrollo', SYSDATE);
INSERT INTO Busqueda (id_usuario, termino_busqueda, fecha_busqueda) 
VALUES (7, 'Inventos revolucionarios', SYSDATE);
INSERT INTO Busqueda (id_usuario, termino_busqueda, fecha_busqueda) 
VALUES (8, 'T�cnicas de relajaci�n', SYSDATE);






