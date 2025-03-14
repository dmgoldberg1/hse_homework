#import "typst-sympy-calculator.typ": *
#let problem_counter = counter("problem")

#let template(doc) = [
  #set page(
    paper: "a4",
    margin: (
      top: 1cm, 
      left: 1cm,
      right: 1cm,
      bottom: 1.75cm),
  )
  #set text(
    font: "New Computer Modern",
    lang: "ru",
  )
  #set par(
    justify: true,
  )
  #set math.mat(
    column-gap: .8em,
    row-gap: .8em,
  )
  #show sym.lt.eq: sym.lt.eq.slant
  #show sym.gt.eq: sym.gt.eq.slant
  #doc
]

#let title_page(title, author, course, group, body) = {
  block(
    height:20%,
    fill:none
  )
  align(center, text(20pt)[*#course*])
  align(center, text(17pt)[*#title*])
  block(
    height: 20%, 
    fill: none
  )
  align(center, text(17pt)[*#author*])
  align(center, text(11pt)[*#group*])
  pagebreak(weak: false)
  body
}

#let problem(no_header: false, name: none, body) = {
  if name != none {
    name = name
  }
  if not no_header {
    [= Задание #problem_counter.step() #name]
  } else {
    none
  }
  block(
    fill:rgb(240, 240, 255),
    width: 100%,
    inset:8pt,
    radius: 4pt,
    body
  )
}


#let solution(no_header: false, body) = {
  if not no_header {
    [== Решение:]
  } else {
    none
  }
  line(length: 100%)
    block(
    fill: rgb(240, 255, 240),
    width: 100%,
    inset: 8pt,
    radius: 4pt,
    body
  )
}

#let answer(type: "answer", no_header: false, body) = {
  let title = none;
  if type == "result" {
    title = [Итого:]
  } else if type == "answer" {
    title = [Ответ:]
  }
  if not no_header {
    [== #title]
    line(length: 100%)
  }
  block(
    fill: rgb(240, 240, 255),
    width: 100%,
    inset: 8pt,
    radius: 4pt,
    [#body]
  )
}

#let intlim(l, r) = $cases(delim: "|", #h(0pt)^#r, #v(6pt), #h(0pt)_#l)$
#let pr = math.op("pr")
#let ort = math.op("ort")
#let vol = math.op("vol")
#let ord = math.op("ord")
#let Spec = math.op("Spec")
#let rk = math.op("rk")
#let linspan(..args) = {
  let input = args.pos()

  math.angle.l
  for i in range(input.len() - 1) {
    input.at(i)
    math.comma
    math.thick
  }
  input.at(-1)
  math.angle.r
}