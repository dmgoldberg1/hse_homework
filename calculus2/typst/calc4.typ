#import "../../exam_template.typ": *
#let title = "ДЗ 4"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Вычислите с помощью цилиндрической замены:
$
  integral_(-3)^3 d x integral_0^sqrt(9-x^2) d y integral_0^(9-x^2-y^2) sqrt(x^2+y^2) d z
$
]
#solution[
$
  x=r cos phi\
  y = r sin phi\
  z = h\
  integral_(-3)^3 d x integral_0^sqrt(9-x^2) d y integral_0^(9-x^2-y^2) sqrt(x^2+y^2) d z=integral_0^pi d phi integral_0^3 d r integral_0^(9-r^2) r^2 d z=integral_0^pi d phi integral_0^3 9r^2-r^4 d r=\
  =integral_0^pi 162/5 d phi=162/5 pi 
$
]
#answer[
$
  162/5 pi
$
]
#pagebreak()
#problem(name: 2)[
Вычислите с помощью сферической замены:
$
  integral_(-2)^2 d y integral_(-sqrt(4-y^2))^sqrt(4-y^2) d x integral_(-sqrt(4-x^2-y^2))^sqrt(4-x^2-y^2) x^2 z + y^2 z + z^3 d z
$
]
#solution[
$
  x=r cos phi cos theta\
  y=r sin phi cos theta\
  z = r sin theta\
  integral_(-2)^2 d y integral_(-sqrt(4-y^2))^sqrt(4-y^2) d x integral_(-sqrt(4-x^2-y^2))^sqrt(4-x^2-y^2) x^2 z + y^2 z + z^3 d z=\
  =integral_0^(2pi) d theta integral_0^pi d phi integral_0^2 r sin theta dot  r^2 dot r^2 sin phi d r=integral_0^(2pi) d theta integral_0^pi d phi integral_0^2 r^5 sin theta dot sin phi d r=\
  = 64/6integral_0^(2pi) d theta integral_0^pi sin theta sin phi d phi=0
$
]
#answer[
  0
]
#pagebreak()
#problem(name: 3)[
Вычислите интеграл:
$
  D ={(x, y, z)| x^2+y^2<=z^2, 0<=z<=1}\
  integral.triple_D (z-x y) d x d y d z
$
]
#solution[
$
  x = r cos phi\
  y = r sin phi\
  z = z\
  r^2 <= z^2=> 0<=r <= z\
  integral.triple_D (z-x y) d x d y d z=integral_0^(1) d z integral_0^(2pi) d phi integral_0^z z r - r^3 cos phi sin phi d r=integral_0^(1) d z integral_0^(2pi) z^3/2 - z^4/4 cos phi sin phi d phi=\
  =integral_0^(1) pi z^3d z=pi/4
$
]
#answer[
$
  pi/4
$
]
#pagebreak()
#problem(name: 4)[
Вычислите интеграл:
$
  D={(x, y, z)| (x^2+y^2+z^2)^(3/2) <= 4 x y; x, y, z >= 0}\
  integral.triple_D (x y z)/((x^2+y^2+z^2)^(3/2)) d x d y d z
$
]
#solution[

]
#pagebreak()
#problem(name: 5)[
Вычислите интеграл
$
  integral.triple_D cos(y) (x-3z)/(2x-z) d x d y d z\
  "образованный пересечением плоскостей"\
  cases(x-3z=-3,x-3z=-2,2x-z=1,2x-z=4,y=0,y=1)
$
]
#solution[
$
  u=x-3z\
  v=2x-z\
  w=y\
  -3<=u<=-2\
  1<=v<=4\
  0<=w<=1\
  J = mat(1,0,-3;2,0,-1;0,1,0)\
  det(J)=5=>det(J^(-1))=1/5\
  => d x d y d z = 1/5 d u d v d w\
  integral.triple_D cos(y) (x-3z)/(2x-z) d x d y d z=1/5integral_0^1 d w integral_1^4 d v integral_(-3)^(-2) cos(w) u/v d u=1/5integral_0^1 d w integral_1^4 -5/2 cos(w)/v d v=\
  =-1/2integral_0^1 d w integral_1^4 cos(w)/v d v=
  -1/2 ln 4integral_0^1  cos(w) d w=-1/2 ln 4 sin 1
$
]
#answer[
$
  -(ln 4 sin 1)/2
$
]
#pagebreak()
#problem(name: 6)[
Нарисуйте эскиз и вычислите площадь фигуры, ограниченной кривой.
$
  (x^2+y^2)^3=x^3 y\
$
]
#solution[
$
  x = r cos phi\
  y = r sin phi\
  r^6 = r^4 cos^3 phi sin phi\
  r^2 =cos^3 phi sin phi=(cos^2 phi sin 2 phi)/2\
  => sin 2 phi >= 0=> 2 phi in [0 + 2pi k, pi + 2pi k] => phi in [pi k, pi/2 + pi k]
$
Эта кривая симметрична относительно замены $(x, y) -> (-x, -y)$ и не симметрична относительно оси $y$, значит достаточно посчитать интеграл в первой четверти и удвоить, то есть $phi in [0, pi/2]$.
Площадь в первой четверти равна
$
  integral_0^(pi/2) d phi integral_0^sqrt(cos^3 phi sin phi) r d r=1/2 integral_0^(pi/2) cos^3 phi sin phi d phi=-1/2 integral_0^(pi/2)cos^3 phi d cos phi=1/8\
  => S = 1/4
$
Эскизом является петля в первой и третьей четверти.
]
#answer[
$
  1/4
$
]