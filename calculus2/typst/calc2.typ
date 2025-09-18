#import "../../exam_template.typ": *
#let title = "ДЗ 2"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
  Вычислить интеграл:
$
  integral_0^2 x^2 d x integral_x^2 ln(1+y^2) d y
$
]
#solution[
$
  integral_0^2 x^2 d x integral_x^2 ln(1+y^2) d y=integral_0^2 ln(1+y^2) d y integral_0^y x^2 d x=1/3integral_0^2 ln(1+y^2) y^3 d y=1/6integral_0^2 ln(1 + t) t d t\
  integral ln(1+t) t d t =ln(1+t) t^2/2 - 1/2integral t^2/(1+t) d t=ln(1+t) t^2/2 - 1/2integral t - 1 + 1/(t+1) d t=\
  =ln(1+t) t^2/2 - t^2/4 + t/2 - 1/2ln(1+t) + C=ln(1+y^2) y^4/2 - y^4/4 + y^2/2 - 1/2ln(1+y^2) + C\
  1/6integral_0^2 ln(1 + t) t d t=5/4 ln 5 - 1/3
$
]
#answer[
$
  5/4 ln 5 - 1/3
$
]
#pagebreak()

#problem(name: 2)[
  Вычислить интеграл $integral.double_D x^2 y space d x d y$, где $D-$ замкнутый треугольник с вершинами $(0, 0), (2, 1), (1, -2).$
]
#solution[
$
  integral.double_D x^2 y space d x d y=integral_0^1 x^2 d x integral_(-2x)^(1/2x) y d y + integral_1^2x^2 d x integral_(3x - 5)^(1/2x) y d y=integral_0^1 x^2(x^2/8-2x^2) d x + integral_1^2 x^2(x^2/8-(3x-5)^2/2)=\
  =-3/8-1/24=-5/12
$
]
#answer[
$
  -5/12
$
]
#pagebreak()
#problem(name: 3)[
Пусть $f(x) = k$, где $k=max{m in ZZ | m <= x}.$ Вычислите интеграл:
$
  integral.double_(1 <=x<=3, \ 2 <=y <= 5) f(x+y) d x d y
$
]
#solution[
Разобъём область интегрирования с помощью прямых $x+y=c$, внутри областей напишем значение функции в этой области. Тогда искомый интеграл есть сумма по всем таким областям, где каждое слагаемое есть произведение площади области на значение функции в ней.
#image("image-3.png")
$
  integral.double_(1 <=x<=3, \ 2 <=y <= 5) f(x+y) d x d y=1/2 dot 3 + 4 dot 3/2 + 5 dot 2 + 6 dot 3/2 + 7 dot 1/2=30
$
]
#answer[
  30
]
#pagebreak()
#problem(name: 4)[
  Приведите тройной интеграл $integral.triple_D f(x, y, z) d x d y d z$ к одному из повторных, где $D={(x, y, z) | y^2<=z<=4,x^2+y^2<=16}$
]
#solution[
$
  cases(0 <= z <= 4, -sqrt(z) <=y<=sqrt(z), -sqrt(16-y^2)<=x <= sqrt(16-y^2))\
  integral.triple_D f(x, y, z) d x d y d z=integral_0^4 d z integral_(-sqrt(z))^(sqrt(z)) d y integral_(-sqrt(16-y^2))^sqrt(16-y^2) f(x, y, z) d x
$
]
#answer[
$
  integral_0^4 d z integral_(-sqrt(z))^(sqrt(z)) d y integral_(-sqrt(16-y^2))^sqrt(16-y^2) f(x, y, z) d x
$
]
#pagebreak()
#problem(name: 5)[
Используя любой порядок интегрирования, перепишите и вычислите интеграл
$
  integral.triple_D (x y +z^2)d x d y d z,
$
если $D={(x, y, z) | 0<=x<=2,0<=y<=1, 0<=z<=3}.$
]
#solution[
$
  integral_0^2 d x integral_0^1 d y integral_0^3 x y + z^2 d z=integral_0^2 d x integral_0^1 (3x y + 9)d y=integral_0^2(9+3/2x)d x=18+3=21
$
]
#answer[
21
]
#pagebreak()
#problem(name: 6)[
Вычислите интеграл
$
  integral_0^2d z integral_0^z^2 d y integral_0^(y-z) (2x-y)d x.
$
]
#solution[
$
  integral_0^2d z integral_0^z^2 d y integral_0^(y-z) (2x-y)d x=integral_0^2d z integral_0^z^2 ((y-z)^2-y(y-z))d y=integral_0^2d z integral_0^z^2 (z^2-z y)d y=\
  integral_0^2(z^4-z^5/2) d z=16/15
$
]
#answer[
$
  16/15
$
]