-- 1
SELECT Nome, Ano FROM Filmes
-- 2
SELECT * FROM Filmes
ORDER BY Ano
-- 3
SELECT * FROM Filmes
WHERE Nome = 'De volta para o futuro'
-- 4 
SELECT * FROM Filmes
WHERE ANO = 1997
-- 5 
SELECT * FROM Filmes
WHERE ANO > 2000
-- 6 
SELECT * FROM FIlmes 
WHERE Duracao > 100 AND Duracao <150
ORDER BY Duracao 
-- 7 
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano, Duracao
ORDER BY Duracao DESC
-- 8
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'
-- 9
SELECT PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome
-- 10 
SELECT Nome, Genero FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
-- 11 
SELECT Nome, Genero FROM FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'
-- 12 
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM ElencoFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes ON ElencoFilme.IdFilme  = Filmes.Id