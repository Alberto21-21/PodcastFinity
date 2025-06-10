SELECT u.nombre AS Usuario, p.titulo AS Podcast, pu.valor AS Puntuacion, pu.comentario AS Comentario, pu.fecha_puntuacion AS Fecha
FROM Puntuacion pu
JOIN Usuario u ON pu.id_usuario = u.id_usuario
JOIN Podcast p ON pu.id_podcast = p.id_podcast
ORDER BY pu.fecha_puntuacion DESC;