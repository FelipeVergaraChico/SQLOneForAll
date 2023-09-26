Select c.cancao_nome AS cancao, COUNT(h.pessoa_usuaria_id) AS reproducoes
FROM SpotifyClone.historico AS h
INNER JOIN 
SpotifyClone.cancoes AS c
ON h.cancoes_id = c.cancoes_id
GROUP BY 
h.cancoes_id
ORDER BY 
COUNT(h.pessoa_usuaria_id) DESC,
c.cancao_nome LIMIT 2;