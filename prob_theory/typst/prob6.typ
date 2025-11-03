#import "../../exam_template.typ": *
#let title = "ДЗ 6"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория вероятностей"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
  Вычислите функцию распределения, задающую меру с плотностью: $p(t)=lambda e^(-lambda t)$. Найдите меру отрезка [0, 1].
]
#solution[
$
  F(x)=integral_(-infinity)^x p(t) d t=lim_(a -> -infinity) integral_a^x lambda e^(-lambda t) d t=lim_(a -> -infinity) integral_a^0 0 d t + integral_0^x lambda e^(-lambda t) d t=integral_0^x lambda e^(-lambda t) d t =1-e^(-lambda x)\
  mu([0, 1])=F(1)-F(0-)=1-e^(-lambda)
$
]
#answer[
$
  F(x)=1-e^(-lambda x)\
  mu([0, 1])=1-e^(-lambda)
$
]
#pagebreak()
#problem(name: 2)[
Вычислите функцию распределения, задающую меру с плотностью: $display(p(t)=sigma/(pi(sigma^2+t^2)))$. Найдите меру отрезка [0, 1].
]
#solution[
$
F(x)=integral_(-infinity)^x p(t) d t=lim_(a -> -infinity) integral_a^x sigma/(pi(sigma^2+t^2)) d t= lim_(a -> -infinity) sigma/pi (1/sigma arctan x/sigma-1/sigma arctan a/sigma)=1/pi arctan x/sigma +1/2\
mu([0, 1])=1/pi arctan 1/sigma +1/2-1/2=1/pi arctan 1/sigma
$
]
#answer[
$
  F(x)=1/pi arctan x/sigma +1/2\
  mu([0,1])=1/pi arctan 1/sigma
$
]
#pagebreak()
#problem(name: 3)[
Пусть $F_1, F_2$ две функции распределения, которые равны всюду кроме множества лебеговой меры нуль. Докажите, что порожденные ими меры совпадают.
]
#solution[
Обозначим за $Z$ множество меры нуль.
Рассмотрим произвольную точку $x$ на вещественной прямой. Заметим, что в любом интервале $(x, x + epsilon)$ найдётся точка $y$ из дополнения к $Z$. Иначе этот интервал полностью бы лежал в $Z$, но $Z$ меры нуль, противоречие. Рассмотрим последовательность $y_n arrow.b x, y_n in Z^c$. Из условия следует, что $F_1(y_n)=F_2(y_n) space forall n in NN.$ Тогда из непрерывности справа следует:
$
  F_1(x)=lim_(n arrow infinity) F_1(y_n)=lim_(n arrow infinity) F_2(y_n)=F_2(x)
$
Тогда по лемме 2.5.2 меры, порожденные $F_1$ и $F_2$, совпадают. 
]
#answer[
ч.т.д
]
#pagebreak()
#problem(name: 4)[
Покажите, что функция распределения имеет не более чем счетное число точек разрыва.
]
#solution[
Заметим, что функция распределения может иметь разве что разрывы 1 рода, так как функция непрерывна справа, существование предела слева следует из ограниченности функции распределения и неубывания. Колебание функции в точке $x$ можно записать как
$
  w(x)=F(x)-F(x-)
$
Рассмотрим множество $D_n={x in RR: w(x)>1/n}$. Для произвольного набора $x_1 < x_2 < ...<x_k in D_n$
$
  sum_(i=1)^k w(x_i) <= M\
  ("из ограниченности "F)
$
Получаем, что $k dot 1/n <= M=>k <= M n=>D_n$ конечно. Тогда множество всех точек разрыва есть $union.big_(i=1)^infinity D_i$. Но счетное объединение конечных множеств не более чем счетное. Доказали.
]
#answer[
ч.т.д
]
