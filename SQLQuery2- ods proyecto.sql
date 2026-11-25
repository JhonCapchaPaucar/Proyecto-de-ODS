SELECT p.id_postulacion, o.cargo, e.razon_social, p.fecha_postulacion, p.estado
FROM dbo.postulacion AS p
JOIN dbo.oferta_laboral AS o ON o.id_oferta = p.id_oferta
JOIN dbo.empresa AS e        ON e.id_empresa = o.id_empresa
WHERE p.id_joven = 1
ORDER BY p.fecha_postulacion DESC;
GO

SELECT j.nombres, j.apellidos, j.habilidades, p.estado, p.fecha_postulacion
FROM dbo.postulacion AS p
JOIN dbo.joven AS j ON j.id_joven = p.id_joven
WHERE p.id_oferta = 1
ORDER BY p.fecha_postulacion;
GO

SELECT h.estado_anterior, h.estado_nuevo, h.fecha_cambio
FROM dbo.historial_estado AS h
WHERE h.id_postulacion = 3
ORDER BY h.fecha_cambio;
GO

SELECT rol, COUNT(*) AS total FROM dbo.usuario GROUP BY rol;
SELECT estado, COUNT(*) AS total FROM dbo.oferta_laboral GROUP BY estado;
SELECT estado, COUNT(*) AS total FROM dbo.postulacion GROUP BY estado;
GO