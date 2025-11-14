#import "../../exam_template.typ": *
#let title = "ДЗ 8"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Выясните, сходится ли равномерно функциональная последовательность
$
  f_n=(arctan n x)/(n^2), D=RR
$
]
#solution[
Проверим супремальный критерий
$
  f(x)=0\
  lim_(n arrow infinity) sup_RR abs(f_n (x))<=lim_(n arrow infinity) pi/(2n^2)=0=>\
  "супремальный критерий выполняется, значит сходится равномерно"
$
]
#answer[
Да
]
#pagebreak()
#problem(name: 2)[
Высните, сходится ли равномерно функциональная последовательность
$
  f_n=2(n+1)x(1-x^2)^n, D=[0, 1]
$
]
#solution[
Проверим супремальный критерий
$
  f(x)=0\
  lim_(n arrow infinity) sup_RR abs(2(n+1)x(1-x^2)^n)\
  "Рассмотрим "x_n=1/(n+1) -> 0, n arrow infinity\
  f_n (x_n)=2(n+1)1/(n+1)(1-1/(n+1)^2)^n arrow 2, n arrow infinity\
  "Но " sup abs(f_n (x))>= abs(f_n (x_n)) arrow 2 != 0=>"не сходится равномерно"
$
]
#answer[
Нет
]
#pagebreak()
#problem(name: 3)[
Исследовать функциональную последовательность на равномерную сходимость на заданном множестве
$
  f_n (x)=(n x)/(1+n^3x^3), D_1=[0, 1],D_2=[1, +infinity)
$
]
#solution[
$
  f(x)=0, x in [0, + infinity)\
  lim_(n arrow infinity) sup_(D_1) abs(f_n (x))\
  f_n^prime (x)=(n(1+n^3x^3)-n x dot 3n^3x^2)/(1+n^3x^3)^2=(n-2n^4x^3)/(1+n^3x^3)^2 = 0\
  =>x_n=1/(root(3, 2) n)\
  f_n (x_n)=2/(3root(3,2)) > 0=>"не сходится равномерно на "D_1.\
  x>=1=>(n x)/(1+n^3x^3)<=(n x)/(n^3x^3)<=1/n^2\
  =>sup_(D_2) abs(f_n (x)) <=1/n^2 arrow 0=>"сходится равномерно"
$
]
#answer[
На первом множестве не сходится равномерно, на втором сходится
]
#pagebreak()
#problem(name: 4)[
Исследовать функциональную последовательность на равномерную сходимость на заданном множестве
$
  f_n (x)=(n x^2)/(n+x), D_1=[0, 2],D_2=[2, +infinity)
$
]
#solution[
$
  f(x)=x^2, x in [0, +infinity)\
  abs(f_n (x) - f(x)) = x^3/(n+x)\
  (x^3/(n+x))^prime = (3x^2 (n+x)-x^3)/(n+x)^2 >=0, x in [0,2]=>\
  sup_(D_1) abs(f_n (x) - f(x)) = 8/(n+2) arrow 0=>\
  "равномерно сходится по супремальному критерию на "D_1\
  "Пусть " x = n=>abs(f_n (n) - f(n))=n^2/2 arrow +infinity =>"не сходится равномерно на "D_2.
$
]
#answer[
Сходится равномерно на первом множестве, неравномерно на втором.
]
#pagebreak()
#problem(name: 5)[
Исследовать функциональную последовательность на равномерную сходимость на заданном множестве
$
  f_n (x)=arctan (n x), D_1=[0, 1],D_2=[1, +infinity)
$
]
#solution[
$
  f(x)=cases(0", "x = 0, pi/2", "x > 0)\
  x=0: abs(f_n (0) - f(0))=0\
  x in (0, 1]: abs((f_n (x) - f(x)))=abs(arctan(n x) - pi/2), sup_(D_1) abs(arctan(n x) - pi/2)=pi/4 !=0 =>\
  "не сходится равномерно на "D_1.\
  abs(arctan(n x) - pi/2) arrow 0, x >=1, n arrow infinity=>"сходится равномерно на "D_2.
$
]
#answer[
Не сходится равномерно на первом множестве, сходится равномерно на втором.
]
#pagebreak()
#problem(name: 6)[
Законен ли переход к пределу под знаком интеграла в выражении
$
  lim_(n arrow infinity) integral_0^1 (n x)/(1+n^2x^4) d x
$
]
#solution[
$
  integral_0^1 (n x)/(1+n^2x^4) d x=|t=n x^2, d t = 2 n x d x|=1/2integral_0^1 1/(1+t^2) d t=1/2arctan 1=pi/4\
  => lim_(n arrow infinity) integral_0^1 (n x)/(1+n^2x^4) d x = pi/4\
  integral_0^1 lim_(n arrow infinity) (n x)/(1+n^2x^4) d x=0\
  "Получаем разные значения, значит переход незаконен".
$
]
#answer[
Неа
]
#pagebreak()
#problem(name: 7)[
Исследовать функциональный ряд на равномерную сходимость
$
  sum_(n=1)^infinity 1/(x^2+n x+n^2), D=(0, +infinity)
$
]
#solution[
$
  a_n (x) = 1/(x^2+n x+n^2) <= 1/n^2=M_n\
  sum_(i=1)^infinity M_i=sum_(i=1)^infinity 1/i^2-"сходится"=>"исходный ряд сходится равномерно по признаку Вейерштрасса". 
$
]
#answer[
Сходится
]