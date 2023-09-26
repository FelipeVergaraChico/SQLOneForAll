SELECT nome_pessoa_usuaria AS pessoa_usuaria,
CASE 
	WHEN MAX(historico.data_reproducao) >= '2021-01-01' THEN 'Ativa'
    ELSE 'Inativa'
    END AS status_pessoa_usuaria
FROM
SpotifyClone.usuario
LEFT JOIN 
SpotifyClone.historico ON usuario.pessoa_usuaria_id = historico.pessoa_usuaria_id
GROUP BY 
usuario.nome_pessoa_usuaria
ORDER BY 
usuario.nome_pessoa_usuaria;