/* Mostrar los usuarios que han valorado podcasts y la suma total de sus puntuaciones */
SELECT 
    u.nombre AS Usuario, 
    COUNT(p.id_puntuacion) AS Total_Valoraciones, 
    SUM(p.valor) AS Suma_Puntuaciones
FROM 
    Puntuacion p
JOIN 
    Usuario u ON p.id_usuario = u.id_usuario
GROUP BY 
    u.nombre
HAVING 
    SUM(p.valor) > 0
ORDER BY 
    Suma_Puntuaciones DESC;
