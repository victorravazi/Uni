= Probabilidade Condicional


== Definição

$ P(A "/" B) = P(A inter B) / P(B), quad P(B) != 0 $

$ P(B "/" A) = P(B inter A) / P(A), quad P(A) != 0 $

#line(
  length: 100%,
  stroke: (thickness: 1pt)
)

== Exemplo 1

Considere o lançamento de 2 moedas. Sejam:

$A$: a 1ª face é coroa  
$B$: as duas faces são iguais  

Espaço amostral:

$ Omega = { (c,c), (c,k), (k,c), (k,k) } $

$ A = { (c,c), (c,k) } $

$ B = { (c,c), (k,k) } $

Determinar:

a) $ P(A "/" B) = 1/2 = 0,5 = 50% $

b) $ P(B "/" A) = 1/2 = 0,5 = 50% $

#line(
  length: 100%,
  stroke: (thickness: 1pt)
)

== Exemplo 2

Considere o lançamento de 3 moedas. Sejam:

$A$: a 1ª face é coroa  
$B$: a 1ª e a 2ª face são coroas  

Espaço amostral:

$ Omega = {
(c,c,c),
(c,c,k),
(c,k,c),
(c,k,k),
(k,c,c),
(k,c,k),
(k,k,c),
(k,k,k)
} $

$ A = {
(c,c,c),
(c,c,k),
(c,k,c),
(c,k,k)
} $

$ B = {
(c,c,c),
(c,c,k)
} $

Determinar:

a) $ P(A "/" B) = 1 = 100% $

b) $ P(B "/" A) = 1/2 = 0,5 = 50% $

#line(
  length: 100%,
  stroke: (thickness: 1pt)
)

== Exemplo 3

Considere 30 alunos, o sexo deles e as matérias que cursam:

#table(
  columns: 3,
  align: center,
  [ ], [História], [Matemática],
  [F], [18], [5],
  [M], [5], [2],
  [Total], [23], [7]
)
\

a) Qual a probabilidade de ser do sexo feminino e estar cursando matemática?

$ P(F "/" "Mat") = 5/7 approx 0.71 = 71% $

Usando a fórmula:

$ P(F "/" "Mat") = P(F inter "Mat") / P("Mat") $

$ = (5/30) / (7/30) $

$ = 5/7 approx 0.71 = 71% $

#v(1em)

b) Qual a probabilidade de cursar História, sabendo-se que é do sexo masculino?

$ P("Hist" "/" M) = 5/7 approx 0.71 = 71% $

Ou usando a fórmula:

$ P("Hist" "/" M) = P("Hist" inter M) / P(M) $

$ = (5/30) / (7/30) $

$ = 5/7 approx 0.71 = 71% $

#v(1em)

c) Qual a probabilidade de ser do sexo masculino?

$ P(M) = 7/30 approx 0.23 = 23% $

