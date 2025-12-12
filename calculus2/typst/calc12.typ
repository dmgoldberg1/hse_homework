#import "../../exam_template.typ": *
#let title = "ДЗ 12"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Рассмотрим линейное пространство $V$ таких функций, что $f, f^prime in C^2[-pi, pi]$, со скалярным произведением
$
  linspan(f,g)=integral_(-pi)^pi f(x) dot overline(g(x)) d x+integral_(-pi)^pi f^prime (x) dot overline(g^prime (x)) d x
$
Показать, что система векторов ${e^(i n x)}_(n in ZZ)$ является ортогональной.
]
#solution[
$
  linspan(e^(i m x), e^(i n x))=integral_(-pi)^pi e^(i m x) e^(-i n x) d x + integral_(-pi)^pi m n e^(i(m - n)x) d x=\
  =integral_(-pi)^pi e^(i (m-n) x) d x+integral_(-pi)^pi m n e^(i(m - n)x) d x=2m n integral_(-pi)^pi e^(i(m-n)x) d x=0, m!= n("интегралы от синуса и косинуса 0")
$
]
#answer[
Показали
]
#pagebreak()
#problem(name: 2)[
Найдите тригонометрический ряд Фурье
$
  f(x) tilde a_0/2 + sum_(n=1)^infinity (a_n cos((2pi n x)/T)+b_n sin((2pi n x)/T))
$
на указанном отрезке для функции:
1. $f(x)=x$ на $[-c,c], c > 0$
2. $f(x)=x cos x$ на $[-pi/2, pi/2]$
]
#solution[
1.
$
  a_0 = 1/c integral_(-c)^c x d x=0\
  a_n = 1/c integral_(-c)^c x cos((pi n x)/c) d x = 0\
  b_n = 1/c integral_(-c)^c x sin((pi n x)/c) d x = 2/c integral_0^c x sin((pi n x)/c) d x =2/c dot c^2/(pi n)(-1)^(n+1)=(2c)/(pi n)(-1)^(n+1)\
  f(x) tilde (2c)/pi sum_(n=1)^infinity ((-1)^(n+1))/n sin((pi n x)/c)
$
]
#pagebreak()

#problem(name: 3)[
Разложить функцию $f(x)=sign(cos x)$ в ряд Фурье на $[-pi, pi]$
]
#solution[
$
  f(x)=cases(-1"," x in [-pi,pi/2), 1"," x in (-pi/2, pi/2), -1"," x in (pi/2, pi])\
  a_n = 2/ pi integral_0^(pi) f(x) cos(n x) d x=2/pi (integral_0^(pi/2) cos(n x) d x + integral_(pi/2)^pi -cos(n x)d x)=(4 sin((pi n)/2))/(pi n)\
  a_0 = 1/pi integral_(-pi)^pi f(x) d x = 2/pi integral_0^pi f(x) d x =2/pi (integral_0^(pi/2)1 d x+integral_(pi/2)^pi -1 d x)=0\
  b_n = 1/pi integral_(-pi)^pi f(x) sin(n x)=0("нечетную функцию интегрируем по симметричному промежутку")\
  f(x) tilde sum_(n=1)^infinity (4 sin((pi n)/2))/(pi n) cos(n x)
$
]
#answer[
$
  f(x) tilde sum_(n=1)^infinity (4 sin((pi n)/2))/(pi n) cos(n x)
$
]