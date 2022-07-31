-- 1
Select Nome, Ano
From Filmes

-- 2
Select Nome, Ano
From Filmes
Order By Ano Asc

-- 3
Select Nome, Ano, Duracao
From Filmes
Where Nome
Like 'De Volta para o Futuro'

-- 4
Select * From Filmes
Where Ano = 1997

-- 5
Select * From Filmes
Where Ano >= 2000

-- 6
Select * From Filmes
Where Duracao > 100 And Duracao < 150
Order By Duracao Asc

-- 7
Select Ano, Count(*) Quantidade
From Filmes
Group By Ano
Order By 2 Desc

-- 8
Select PrimeiroNome, UltimoNome
From Atores
Where Genero = 'M'

-- 9
Select PrimeiroNome, UltimoNome
From Atores
Where Genero = 'F'
Order By PrimeiroNome Asc

-- 10
Select Filmes.Nome, Generos.Genero
From ((FilmesGenero
Inner Join Filmes On FilmesGenero.IdFilme = Filmes.Id)
Inner Join Generos On FilmesGenero.IdGenero = Generos.Id)

-- 11
Select Filmes.Nome, Generos.Genero
From ((FilmesGenero
Inner Join Filmes On FilmesGenero.IdFilme = Filmes.Id)
Inner Join Generos On FilmesGenero.IdGenero = Generos.Id)
Where Genero = 'Mistério'

-- 12
Select Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
From ((ElencoFilme
Inner Join Atores On ElencoFilme.IdAtor = Atores.Id)
Inner Join Filmes On ElencoFilme.IdFilme = Filmes.Id)