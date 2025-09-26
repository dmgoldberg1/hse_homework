#import "../../exam_template.typ": *
#let title = "ДЗ 3"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Измените порядок интегрирования в повторном интеграле:
$
  integral_0^1 d x integral_0^sqrt(1-x^2) d y integral_0^(x^2+y)f(x,y,z) d z
$
]
#solution[
$
  cases(0 <= x <= 1, 0 <= y <= sqrt(1-x^2),0<=z<=x^2+y) => cases(0<=x<=1,0<=z<=x^2+sqrt(1-x^2),max(0,z-x^2)<=y<=sqrt(1-x^2))1
  => \
  integral_0^1 d x integral_0^sqrt(1-x^2) d y integral_0^(x^2+y)f(x,y,z) d z=integral_0^1 d x integral_0^(x^2+sqrt(1-x^2)) d z integral_max(0,z-x^2)^sqrt(1-x^2)f(x,y,z) d y
$
]
#answer[
$
  integral_0^1 d x integral_0^(x^2+sqrt(1-x^2)) d z integral_max(0,z-x^2)^sqrt(1-x^2)f(x,y,z) d y
$
]
#pagebreak()
#problem(name: 2)[
Вычислите интеграл:
$
  integral_0^4 d z integral_(-z)^z d x integral_0^sqrt(z^2-x^2) z^2 x y^2 d y
$
]
#solution[
$
  integral_0^4 d z integral_(-z)^z d x integral_0^sqrt(z^2-x^2) z^2 x y^2 d y=1/3integral_0^4d z integral_(-z)^z z^2 x(z^2-x^2)^(3/2) d x\  
$
Заметим, что функция $z^2 x(z^2-x^2)^(3/2)$ является нечётной относительно $x$, тогда интеграл по симметричному промежутку $[-z, z]$ является нулём, значит весь интеграл равен 0.
]
#answer[
  0
]
#pagebreak()
#problem(name: 3)[
Вычислите интеграл:
$
  integral_0^1 d x integral_x^1 d y integral_y^1 e^z^3 d z.
$
]
#solution[
$
  cases(0<=x<=1,x<=y<=1,y<=z<=1)=>cases(0<=z<=1,0<=y<=z,0<=x<=y)\
  integral_0^1 d x integral_x^1 d y integral_y^1 e^z^3 d z=integral_0^1 d z integral_0^z d y integral_0^y e^z^3 d x=integral_0^1 d z integral_0^z y e^z^3 d y=1/2integral_0^1 z^2 e^z^3 d z=1/2 integral_0^1 e^z^3 d z^3/3=\
  =|z^3=t, d t =3 z^2 d z, z^2 d z = (d t)/3|=1/6 integral_0^1 e^t d t=(e - 1)/6
$
]
#answer[
$
  (e - 1)/6
$
]
#pagebreak()
#problem(name: 4)[
Вычислите интеграл:
$
  D = {(x, y)| 1<=x^2+y^2<=49, y >=0}\
  integral.double_D (ln(x^2+y^2))/(x^2+y^2) d x d y
$
]
#solution[
$
  x = r cos phi\
  y = r sin phi\
  1<=r^2<=49, r sin phi >=0 => sin phi >= 0 => phi in [0, pi]\
  D = {(x, y)| 1<=x^2+y^2<=49, y >=0}\
  integral.double_D (ln(x^2+y^2))/(x^2+y^2) d x d y=2 integral_(0)^(pi) d phi integral_1^7 (ln r)/r d r=|t=ln r, d t = 1/r d r, d r = r d t|=2integral_0^pi d phi integral_0^(ln 7) t d t=\
  =integral_0^pi ln^2 7 d phi = pi ln^2 7 
$
]
#answer[
$
  pi ln^2 7
$
]
#pagebreak()
#problem(name: 5)[
Вычислите интеграл:
$
  integral.double_(x^2+y^2 <= 2x) x/sqrt(4-x^2-y^2) d x d y
$
]
#solution[
$
  x = r cos phi\
  y = r sin phi\
  r^2 <= 2 r cos phi=>cos phi >= 0,r(r-2cos phi) <= 0 => r - 2cos phi <= 0=>0<=r<=2cos phi\
  integral.double_(x^2+y^2 <= 2x) x/sqrt(4-x^2-y^2) d x d y = integral_(-pi/2)^(pi/2) cos phi d phi integral_0^(2cos phi) (r^2)/sqrt(4-r^2) d r=|r=2sin t,d r = 2 cos t d t|=\
  =
$
]