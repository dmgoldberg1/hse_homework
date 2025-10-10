#import "../../exam_template.typ": *
#let title = "ДЗ 5"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Нарисуйте эскиз и вычислите площадь фигуры, ограниченной кривой.
$
  (x^2+y^2+y)^2=x^2+y^2\
$
]
#solution[
$
  x = r cos phi\
  y = r sin phi\
  (r^2+r sin phi)^2= r^2 => r^4+2r^3 sin phi + r^2 sin^2 phi = r^2 => r^2+2r sin phi + sin^2 phi=1 =>\
  (r + sin phi)^2=1 => cases(delim: "[", r = 1 - sin phi, r= -1-sin phi) => 0 <= r <= 2, phi in [0, 2pi]\
$
Достаточно вычислить интеграл $S= display(integral_0^(2pi) d phi integral_0^(1 - sin phi) r d r)$
$
  integral_0^(2pi) d phi integral_0^(1 - sin phi) r d r=1/2integral_0^(2pi) 1 -2sin phi + sin^2 phi d phi=1/2(2pi+0+pi)=(3pi)/2\
  => S = (3pi)/2
$
Эскизом является попка, пересекающая ось $O x$ в 1 и $-1$ и 0.
#image("image-5.png")
]
#answer[
$
  (3pi)/2
$
]
#pagebreak()
#problem(name: 2)[
Нарисуйте эскиз и вычислите площадь фигуры, ограниченной кривой.
$
  (2x+3y+1)^2+(x-4y-3)^2=1\
$
]
#solution[
$
  u = 2x + 3y + 1\
  v = x-4y -3\
  u^2 +v^2 = 1\
  J = mat(2, 3;1, -4)\
  abs(det(J^(-1)))=1/11 => S =pi/11
$
Это уравнение задаёт повёрнутый эллипс. Угол и коэффициенты находятся через поиск собственных значений квадратичной формы(долго считать).
Эскиз выглядит следующим образом:
#image("image-6.png")
]
#pagebreak()
#problem(name: 3)[
Найдите объём тела, заданного неравенствами
$
  x^2+y^2 <=z<=sqrt(x^2+y^2)
$
]
#solution[
$
  x = r cos phi\
  y = r sin phi\
  z = z\
  r^2 <= z <= r\
  V = integral_0^(2pi) d phi integral_0^1 d r integral_(r^2)^r r d z=2 pi integral_0^1r^2-r^3 d r = pi/6
$
]
#answer[
$
  pi/6
$
]
#pagebreak()
#problem(name: 4)[
Найдите объём тела, заданного неравенствами
$
  sqrt(x^2+y^2) >= z, x^2+y^2+z^2<=z
$
]
#solution[
$
  x = r cos phi\
  y = r sin phi\
  z = z\
  => r >= z\
  r^2 <= z - z^2 => r <= sqrt(z - z^2), z in [0, 1]\
  z <= sqrt(z-z^2) => z^2 <= z - z^2=>2z^2 - z <= 0 => z in [0, 1/2]\
  V = integral_0^(2pi) d phi integral_0^0.5 d z integral_z^sqrt(z-z^2) r d r = 1/2integral_0^(2pi) d phi integral_0^0.5 z-2z^2 d z=pi integral_0^0.5 z- 2z^2 d z = pi/24
$
]
#answer[
$
  pi/24
$
]
#pagebreak()
#problem(name: 5)[
Найти объём пирамиды:
$
  {sum_(i=1)^n (x_i)/(a_i) <= 1, x_i >=0} space a_i>0
$
]
#solution[
Введём замену:
$
  t_i = (x_i)/(a_i), x_i = t_i a_i\
  det(J) = product_(i=1)^n a_i\
$
Тогда в новых координатах пирамида задаётся соотношением:
$
  sum_(i=1)^n t_i <= 1¯
$
На семинаре было доказано, что объём такой фигуры равен $display(1/n!)$. Тогда искомы объём есть $display(1/n! product_(i=1)^n a_i)$
]
#answer[
$
  1/n! product_(i=1)^n a_i
$
]
#pagebreak()
#problem(name: "1(c)")[
Надо досчитать интеграл
$
  integral_(1/2)^1 4v - 4v^2 d v
$
]
#solution[
$
  integral_(1/2)^1 4v - 4v^2 d v=1/3
$
]
#answer[
$
  1/3
$
]