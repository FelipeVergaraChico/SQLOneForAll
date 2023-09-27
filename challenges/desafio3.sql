select u.nome_pessoa_usuaria as pessoa_usuaria,
count(h.cancoes_id) as musicas_ouvidas,
round(sum(c.duracao_segundos/60),2) as total_minutos
from SpotifyClone.usuario u left join SpotifyClone.historico h
on u.pessoa_usuaria_id = h.pessoa_usuaria_id
left join SpotifyClone.cancoes c
on h.cancoes_id = c.cancoes_id
group by u.nome_pessoa_usuaria
order by u.nome_pessoa_usuaria;
