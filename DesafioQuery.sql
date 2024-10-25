-- 1
SELECT Nome, Ano
FROM Filmes;

-- 2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano ASC;

--3
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';

--4
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;

--5
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;

--6
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

--7
SELECT Ano, COUNT(Id) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC;

--8
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M';

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--10
SELECT F.Nome, G.Genero AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.ID = FG.IDFilme
JOIN Generos G ON FG.IDGenero = G.ID;

--11
SELECT F.Nome AS NomeFilme, G.Genero AS Genero
FROM Filmes F
JOIN FilmesGenero FG ON F.ID = FG.IDFilme
JOIN Generos G ON FG.IDGenero = G.ID
WHERE G.Genero = 'Mistério';

--12
SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, E.Papel as Papel
FROM Filmes F
JOIN ElencoFilme E ON F.Id = E.IdFilme
JOIN Atores A ON A.Id = E.IdAtor