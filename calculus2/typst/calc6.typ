#import "../../exam_template.typ": *
#let title = "ДЗ 6"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Найти объём тела, ограниченного поверхностью:
$
  (x^2+y^2+z^2)^2=z(x^2+y^2)
$
]
#solution()[
$
 x = r sin theta cos phi\
 y = r sin theta sin phi\
 z = r cos theta\
 r^4 = r^3 cos theta sin^2 theta\
 r = cos theta sin^2 theta\
 V = integral_0^(2pi) d phi integral_0^(pi/2) d theta integral_0^(cos theta sin^2 theta) r^2 sin theta d r=1/3 integral_0^(2pi) d phi integral_0^(pi/2)cos^3 theta sin^7 theta d theta\
 integral_0^(pi/2)cos^3 theta sin^7 theta d theta = integral_0^1 t^7 (1-t^2) d t = 1/40\
 V=pi/60
$
]
#answer[
$
  pi/60
$
]
#pagebreak()
#problem(name: 2)[
Функция плотности пластины $rho(x, y)=x y$ определена на области $D$, задающей форму и расположение данной пластины. Найдите массу и координаты центра масс этой пластины.
]
#solution[
$
  m = integral_0^1 d x integral_(1- x)^1 x y d y =1/2 integral_0^1 x(1-(1-x)^2) d x =5/24\
  x^c = 24/5 integral_0^1 d x integral_(1-x)^1 x^2 y d y=24/10 integral_0^1 x^2(1-(1-x)^2)d x =18/25\
  y^c =  24/5 integral_0^1 d x integral_(1-x)^1 x y^2 d y=24/15 integral_0^1 x (1-(1-x)^3) d x=18/25
$
]
#answer[
$
  m = 5/24\
  x^c = 18/25\
  y^c = 18/25
$
]
#pagebreak()
#problem(name: 3)[
Найдите массу тела, ограниченного параболоидом $y=x^2+z^2$ и плоскостью $y=4$ с функцией плотности $rho(x, y, z)=sqrt(x^2+z^2)$.
]
#solution[
$
  x = r cos phi\
  z = r sin phi\
  y = y\
  m=integral_0^4 d y integral_0^(2pi) d phi integral_0^sqrt(y) r^2 d r=1/3integral_0^4 d y integral_0^(2pi) y sqrt(y) d phi=(2pi)/3 integral_0^4 y sqrt(y) d y = (128 pi)/15
$
]
#answer[
$
  (128pi)/15
$
]
#pagebreak()
#problem(name: 4)[
Найдите площадь параболоида $z=1-x^2-y^2$, лежащую выше плоскости $z=-2$.
]
#solution[
$
  x = r cos phi\
  y = r sin phi\
  z = z\
  z = 1 - r^2 => r <= sqrt(3)\
  (diff z)/(diff x) = -2x\
  (diff z)/(diff y) = -2y\
  S=integral_0^(2pi) d phi integral_0^sqrt(3) r sqrt(1+4r^2) d r\
  integral_0^sqrt(3) r sqrt(1+4r^2) d r = |t =1+4r^2,d t = 8r d r, r d r = (d t) / 8|=1/8integral_1^13 sqrt(t)=1/12 (13sqrt(13) - 1)\
  S = (pi(13sqrt(13) - 1))/6
$
]
#answer[
$
  S = (pi(13sqrt(13) - 1))/6
$
]
#pagebreak()
#problem(name: 5)[
Найдите площадь цилиндра $x^2+z^2=4$, лежащую выше квадрата с вершинами $A(0,0), B(1, 0),C(0, 1),D(1, 1).$
]
#solution[
$
  z = sqrt(4-x^2)\
  ("берем с плюсом, так как нас интересует кусок выше квадрата")\
  (diff z)/(diff y) = 0\
  (diff z)/(diff x) = -(x)/(sqrt(4-x^2))\
  S=integral_0^1 d x integral_0^1 2/(sqrt(4-x^2)) d y=2integral_0^1 1/sqrt(4-x^2) d x \
  integral 1/sqrt(4-x^2) d x=arcsin(x/2) + C\
  S=2 dot pi/6 = pi/3
$
]
#answer[
$
  pi/3
$
]

