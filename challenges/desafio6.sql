SELECT
round(min(p.valor_plano), 2) AS faturamento_minimo,
round(max(p.valor_plano), 2) AS faturamento_maximo,
round(avg(p.valor_plano), 2) AS faturamento_medio,
round(sum(p.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.usuario AS u
JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id;