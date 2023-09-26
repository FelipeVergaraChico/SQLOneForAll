SELECT 
(SELECT nome_pessoa_usuaria) AS pessoa_usuaria,
(SELECT COUNT(*) FROM historico) AS musicas_ouvidas,
(SELECT COUNT(*) FROM album) AS albuns;