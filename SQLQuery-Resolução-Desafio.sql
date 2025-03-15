--1
SELECT Nome, Ano
  FROM Filmes;
--2
SELECT Nome, Ano
  FROM Filmes
ORDER BY Ano;

--3
SELECT Nome, Ano, Duracao
  FROM Filmes
 WHERE Nome = 'De Volta para o Futuro';

--4
SELECT Nome, Ano, Duracao
  FROM Filmes
 WHERE Ano = '1997';

 --5
 SELECT Nome, Ano, Duracao
   FROM Filmes
  WHERE Ano > '2000'
ORDER BY Ano;

--6 
 SELECT Nome, Ano, Duracao
   FROM Filmes
  WHERE Duracao >='100' and Duracao <='150'
ORDER BY Duracao;

--7
SELECT  Ano, COUNT(*) Quantidade
  FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
SELECT PrimeiroNome, UltimoNome, Genero
  FROM Atores
 WHERE Genero = 'M';

 --9
 SELECT PrimeiroNome, UltimoNome, Genero
  FROM Atores
 WHERE Genero = 'F'
 ORDER BY PrimeiroNome;

--10
SELECT F.Nome, G.Genero
  FROM Filmes F
 INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
 INNER JOIN Generos G ON FG.IdGenero = G.Id;


--11
SELECT F.Nome, G.Genero
  FROM Filmes F
 INNER JOIN FilmesGenero FG ON FG.Id = FG.IdFilme
 INNER JOIN Generos G ON FG.IdGenero = G.Id
 WHERE Genero = 'Mist�rio';

 --12
SELECT F.Nome, AT.PrimeiroNome, AT.UltimoNome, EF.Papel
  FROM Filmes F
 INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
 INNER JOIN Atores AT ON EF.IdAtor = AT.id;
