/* set page */
#set page(
  header: align(right, text(13pt)[A template created by ririka]),
  width: 21cm,
  height: auto,
  numbering: "1"
)

/* set heading */
#set heading(numbering: "1.")

/* set body font */
#set text(17pt, font: ("Noto Serif CJK SC", "JetBrains Mono"))

/* set retraction */
#set par(justify: true, first-line-indent: 2em)

#show heading: it =>  {
  it
  par()[#text(size:0.5em)[#h(0.0em)]]
}

/* text body */
= WOW
This is a math expression.

#align(center, $F_n = F_(n - 1) + F_(n - 2)$)

= WOA
This is a table.

#let col = 10

#let nums = range(1, col + 1)

#let fib(n) = {
  if n <= 1 {return n}

  let a = 0
  let b = 1

  for i in range(2, n + 1){
    let temp = a + b
    a = b
    b = temp
  }

  return b
}

#align(center, table(
  columns: col,
  ..nums.map(n => $F_#n$),
  ..nums.map(n => str(fib(n)))
))

= WAIT
This is a grid with rect

#set rect(
  inset: 8pt,
  fill: rgb("e4e5ea"),
  width: auto
)

#align(center, grid(
  columns: 3,
  rows: (auto, 60pt),
  gutter: 3pt,
  rect[this is a test],
  rect[1/3 remains],
  rect[2/3 remains],
  rect(height: 100%)[fixed height]
))
