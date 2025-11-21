#import "../../exam_template.typ": *
#let title = "ДЗ 9"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Исследовать функциональный ряд на равномерную сходимость на множестве $D$
$
  sum_(n=1)^infinity (x^n)/(1+x^(2n)), D=(-1, 1)
$
]
#solution[
Заметим, что в точке $x=1$ ряд расходится, значит он не сходится равномерно на $D$
]
#answer[
Нет
]
#pagebreak()
#problem(name: 2)[
Исследовать функциональный ряд на равномерную сходимость на множестве $D$
$
  sum_(n=2)^infinity (sin(x)cos(n x))/ln(n+x^2), D=RR
$
]
#solution[
$
  a_n (x) = sin(x)cos(n x)\
  abs(sum_(n=1)^N sin(x) cos(n x))=abs(sin(x))abs(sum_(n=1)^N cos(n x))<=abs(sin(x)) 1/(abs(sin(x/2)))<=2\
  1/ln(n+x^2) "монотонно убывает по "n "для любого "x\
  lim_(n arrow infinity) sup_D abs(1/ln(n+x^2))=0=>"равномерно сходится к нулю"\
  =>"ряд равномерно сходится по признаку Дирихле"
$
]
#answer[
Да
]
#pagebreak()
#problem(name: 3)[
Исследовать функциональный ряд на равномерную сходимость на множестве $D$
$
sum_(n=1)^infinity ((-1^n))/(sqrt(n)+sqrt(x)), D=[0, +infinity)
$
]
#solution[
$
  a_n (x)=1/(sqrt(n)+sqrt(x)) > 0\
  a_n "монотонно убывает"\
  lim_(n arrow infinity) sup_D a_n (x) = 0\
  =>"ряд равномерно сходится по признаку Лейбница".
$
]
#answer[
Да
]
#pagebreak()
#problem(name: 4)[
Исследовать функциональный ряд на равномерную сходимость на множестве $D$
$
sum_(n=1)^infinity 1/(1+(x-n)^2), D=RR
$
]
#solution[
Определение равномерной сходимости функционального ряда:
$
  forall epsilon>0 space exists N: forall n > N: forall x in D abs(S_n (x) - S(x)) < epsilon
$
Заметим, что для любого $n$ я могу выбирать $x=n$, при котором соответствующий числовой ряд не сходится, значит исходный функциональный ряд не сходится по определению.
]
#answer[
Нет
]
#pagebreak()
#problem(name: 5)[
Вычислить сумму ряда:
$
  sum_(n=1)^infinity n(n+1) 1/(-2)^(n+1)
$
]
#solution[
$
abs(x) < 1, f(x)=sum_(n=0)^infinity x^(n+1)=x/(1-x)\
f^prime (x)=sum_(n=0)^infinity (n+1) x^n = 1/(1-x)^2\
f^prime prime(x) = sum_(n=0)^infinity n(n+1)x^(n-1)=2/(1-x)^3\
x^2 f^prime prime(x)=sum_(n=0)^infinity n(n+1)x^(n+1)=(2x^2)/(1-x)^3\
x=-1/2=>sum_(n=0)^infinity n(n+1)x^(n+1)=sum_(n=1)^infinity n(n+1) 1/(-2)^(n+1)=4/27
$
]
#answer[
$
  4/27
$
]
#pagebreak()
#problem(name: 6)[
Вычислить сумму ряда:
$
  sum_(n=1)^infinity (n^2)/(3^n)
$
]
#solution[
$
  f(x)=sum_(k=1)^infinity k^2 x^k, S=f(1/3)\
  abs(x) < 1, phi(x)=sum_(n=0)^infinity x^n=1/(1-x)\
  phi^prime (x)=sum_(n=0)^infinity n x^(n-1)=1/(1-x)^2\
  x phi^prime (x)=sum_(n=0)^infinity n x^n = x/(1-x)^2\
  (x/(1-x)^2)^prime = sum_(n=0)^infinity n^2 x^(n-1)\
  x(x/(1-x)^2)^prime=sum_(n=0)^infinity n^2 x^n=x(1+x)/(1-x)^3\
  x=1/3=>S=(1/3 dot 4/3)/(1-1/3)^3=3/2
$
]
#answer[
$
  3/2
$
]