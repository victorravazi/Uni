#set text(font: "P052", size: 15pt)
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

// Configuração de fonte padrão (evita erro de Linux Libertine)
#align(center)[
  #text(size: 16pt, weight: "bold")[Resolução de Problemas de Programação Linear]
]

#v(1em)
#line(length: 100%, stroke: 0.5pt + gray)
#v(1em)

== Exemplo 2: Maximizar
$ Z = 2x_1 + 3x_2 $

*Restrições:*
1. $2x_1 + x_2 <= 4$ #h(1em) (I)
2. $x_1 + 2x_2 <= 5$ #h(1em) (II)
3. $x_1, x_2 >= 0$

=== Análise das Retas de Fronteira
- *Reta (I):* $2x_1 + x_2 = 4$
  - Para $x_1 = 0 => x_2 = 4$ #h(1em) $arrow$ Ponto $(0, 4)$
  - Para $x_2 = 0 => x_1 = 2$ #h(1em) $arrow$ Ponto $(2, 0)$

- *Reta (II):* $x_1 + 2x_2 = 5$
  - Para $x_1 = 0 => x_2 = 2.5$ #h(0.5em) $arrow$ Ponto $(0, 2.5)$
  - Para $x_2 = 0 => x_1 = 5$ #h(1.5em) $arrow$ Ponto $(5, 0)$

=== Candidatos a Ponto Ótimo
Avaliando os vértices da região viável na função objetivo $Z$:

- *Ponto A:* $(0, 2.5) => Z = 2(0) + 3(2.5) = bold(7.5)$
- *Ponto B (Interseção):*
  $ cases(2x_1 + x_2 = 4, x_1 + 2x_2 = 5) $
  Multiplicando (I) por $-2$:
  $ cases(-4x_1 - 2x_2 = -8, x_1 + 2x_2 = 5) $
  Somando as equações: $-3x_1 = -3 => x_1 = 1$.
  Substituindo: $2(1) + x_2 = 4 => x_2 = 2$.
  $=> Z = 2(1) + 3(2) = bold(8)$ #h(1em) $arrow.l$ *Valor Máximo*

- *Ponto C:* $(2, 0) => Z = 2(2) + 3(0) = bold(4)$

#v(1em)
#line(length: 100%, stroke: 0.5pt + gray)
#v(1em)

== Exemplo 3: Minimizar
$ Z = 4x_1 + 4x_2 $

*Restrições:*
1. $2x_1 + x_2 >= 10$ #h(1em) (I)
2. $x_1 + 2x_2 >= 8$ #h(1em) (II)
3. $x_2 <= 6$

=== Análise das Retas de Fronteira
- *Reta (I):* $2x_1 + x_2 = 10$
  - Pontos: $(0, 10)$ e $(5, 0)$
- *Reta (II):* $x_1 + 2x_2 = 8$
  - Pontos: $(0, 4)$ e $(8, 0)$

#block(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
  width: 100%
)[
  *Nota sobre a Região Viável:* Como as restrições (I) e (II) são de "maior ou igual" ($>=$), a região de solução estende-se para longe da origem, sendo limitada superiormente pela reta $x_2 = 6$.
]

#v(2em)
#align(center)[_Fim da Transcrição_]

