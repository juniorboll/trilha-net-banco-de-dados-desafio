-- 1 --
SELECT Nome,Ano
  FROM Filmes

  --2--
SELECT Nome,Ano
FROM Filmes
ORDER BY Ano

--3--
SELECT *
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro'

--4--
SELECT *
FROM Filmes
WHERE Ano = 1997

--5--
SELECT *
FROM Filmes
WHERE ANO > 2000

--6--
SELECT *
FROM Filmes
WHERE Duracao > 101 AND Duracao < 150
ORDER BY Duracao

--7--
SELECT ANO,COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
order by Quantidade DESC

--8--
SELECT PrimeiroNome,UltimoNome
FROM Atores
WHERE Genero = 'M'

--9--
SELECT PrimeiroNome,UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10--

SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id

--11--

SELECT F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

--12--
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id
