SELECT ar.artista_nome AS artista,
ab.album_nome AS album
FROM SpotifyClone.artista AS ar
INNER JOIN 
SpotifyClone.album AS ab
ON ar.artista_id = ab.artista_id
WHERE 
ar.artista_nome = 'Elis Regina'
ORDER BY
ab.album_nome ASC;