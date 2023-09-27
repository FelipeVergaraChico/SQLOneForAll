select 
ar.artista_nome as artista,
ab.album_nome as album,
COUNT(se.artista_id) as pessoas_seguidoras
FROM SpotifyClone.artista as ar
join SpotifyClone.album as ab
on ar.artista_id = ab.artista_id
left join SpotifyClone.seguindo_artistas as se
on ar.artista_id = se.artista_id
group by ar.artista_nome, ab.album_nome
order by pessoas_seguidoras desc, ar.artista_nome asc, ab.album_nome asc;