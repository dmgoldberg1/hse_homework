#import "../../exam_template.typ": *
#let title = "ДЗ 10"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Найти множество сходимости степенного ряда:
$
  sum_(n=1)^infinity (4^n)/(3^n sqrt(n^3+2)) x^n
$
]
#solution[
$
  a_n = (4^n)/(3^n sqrt(n^3+2))\
  lim_(n arrow infinity)abs((a_(n+1))/(a_n))=lim_(n arrow infinity)abs((4^(n+1))/(3^(n+1) sqrt((n+1)^3+2)) dot (3^n sqrt(n^3+2))/(4^n))=lim_(n arrow infinity)abs(4/3 sqrt((n^3+2)/((n+1)^3+2)))=4/3\
  =>"ряд сходится на интервале "(-3/4, 3/4). "Проверим границы:"\
  sum_(n=1)^infinity (4^n)/(3^n sqrt(n^3+2)) (-3/4)^n=sum_(n=1)^infinity -1/sqrt(n^3+2)-"сходится по Лейбницу"\
  sum_(n=1)^infinity (4^n)/(3^n sqrt(n^3+2)) (3/4)^n=sum_(n=1)^infinity 1/sqrt(n^3+2)-"сходится, так как ряд" 1/sqrt(n^3) "сходится"\
  => "ряд сходится на отрезке."
$
]
#answer[
$
  [-3/4, 3/4]
$
]
#pagebreak()
#problem(name: 2)[
Найти множество сходимости степенного ряда:
$
sum_(n=1)^infinity ((3n)!)/(n!)^3 (x-1)^(5n)
$
]
#solution[
$
  a_n = ((3n)!)/(n!)^3\
  lim_(n arrow infinity) abs((a_(n+1))/(a_n))=lim_(n arrow infinity) abs(((3(n+1))!)/((n+1)!)^3 dot (n!)^3/((3n)!))=lim_(n arrow infinity) ((3n+3)(3n+2)(3n+1))/(n+1)^3=27\
  =>"ряд сходится на "(1 -1/root(5, 27),1+ 1/root(5,27)). "Проверим границы:"\
  t=(x-1)^5\
  sum_(n=1)^infinity ((3n)!)/((n!)^3 27^n) tilde sum_(n=1)^infinity (sqrt(2pi 3 n) (3n/e)^(3n))/((sqrt(2pi n)(n/e)^n)^3 27^n)=sum_(n=1)^infinity sqrt(3)/(2 pi n) tilde sum_(n=1)^infinity 1/n-"расходится"\
  sum_(n=1)^infinity ((3n)!)/((n!)^3 (-27)^n) tilde sum_(n=1)^infinity (-1)^n sqrt(3)/(2pi n)-"сходится по Лейбницу"\
  =>"ряд сходится на полуинтервале"
$
]
#answer[
$
  [1 -1/root(5, 27),1+ 1/root(5,27))
$
]
#pagebreak()
#problem(name: 3)[
Найти сумму ряда:
$
  sum_(n=1)^infinity (n^2)/(2^n)
$
]
#solution[
$
  f(x)=sum_(k=1)^infinity k^2 x^k, S=f(1/2)\
  abs(x) < 1, phi(x)=sum_(n=0)^infinity x^n=1/(1-x)\
  phi^prime (x)=sum_(n=0)^infinity n x^(n-1)=1/(1-x)^2\
  x phi^prime (x)=sum_(n=0)^infinity n x^n = x/(1-x)^2\
  (x/(1-x)^2)^prime = sum_(n=0)^infinity n^2 x^(n-1)\
  x(x/(1-x)^2)^prime=sum_(n=0)^infinity n^2 x^n=x(1+x)/(1-x)^3\
  x=1/2=>S=(1/2 dot 3/2)/(1-1/2)^3=6
$
]
#answer[
6
]

