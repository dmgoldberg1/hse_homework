#import "../../exam_template.typ": *
#let title = "ДЗ 11"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 2)[
Разложить функцию в степенной ряд с центром в нуле:
$
  f(x)=integral_0^x (ln(1+t))/t d t
$
]
#solution[
$
  (ln(1+t))/t=sum_(n=1)^infinity (-1)^(n-1)(t^(n-1))/n\
  f(x)=integral_0^x sum_(n=1)^infinity (-1)^(n-1)(t^(n-1))/n d t=sum_(n=1)^infinity ((-1)^(n-1))/n integral_0^x t^(n-1) d t=sum_(n=1)^infinity (-1)^(n-1) (x^n)/n^2
$
]
#answer[
$
  f(x)=sum_(n=1)^infinity (-1)^(n-1) (x^n)/n^2, abs(x) <=1
$
]
#pagebreak()
#problem(name: 3)[
Лень переписывать условие) Давайте считать интегралы
]
#solution[
$
  linspan(1, cos(pi/c n x))=integral_(-c)^c cos(pi/c n x) d x = c/(pi n) (sin(n pi) - sin(-pi n))=0\
  linspan(1, sin(pi/c n x))=integral_(-c)^c sin(pi/c n x) d x=0("нечетная функция на симметричном промежутке")\
  linspan(cos(pi/c n x), sin(pi/c n x))= integral_(-c)^c sin(pi/c n x) cos(pi/c n x) d x=0("нечетная функция на симметричном промежутке")\
  => "система ортогональна по определению"
$
]
#answer[
Проверили
]
#problem(name: 4)[
В рамках условий предыдущей задачи найти ортонормированную систему линейного пространства. 
]
#solution[
$
  abs(abs(f))=sqrt(linspan(f, f))\
  abs(abs(1))=sqrt(2c)\=>e_0 = 1/sqrt(2c)\
  abs(abs(cos(pi/c n x)))^2=integral_(-c)^c cos(pi/c n x)^2 d x=1/2integral_(-c)^c 1 d x + 1/2integral_(-c)^c cos(2pi/c n x)=c\
  =>e_1 = cos(pi/c n x)/sqrt(c)\
  abs(abs(sin(pi/c n x)))^2=integral_(-c)^c sin(pi/c n x)^2 d x=1/2integral_(-c)^c 1 d x - 1/2integral_(-c)^c cos(2pi/c n x)=c\
  =>e_2=sin(pi/c n x)/sqrt(c)\
  =>"ортонормированная система имеет вид"\
  linspan(1/sqrt(2c), cos(pi/c n x)/sqrt(c), sin(pi/c n x)/sqrt(c))
$
]
#answer[
$
  linspan(1/sqrt(2c), cos(pi/c n x)/sqrt(c), sin(pi/c n x)/sqrt(c))
$
]
#pagebreak()
#problem(name: 5)[
Рассмотрим пространство многочленов произвольной степени, заданных на отрезке [-1, 1] со скалярным произведением $linspan(f,g)=integral_(-1)^1 f(x)g(x) d x$ и систему векторов ${1,x,x^2,x^3...}$. Доказать, что она не является ортогональной. С помощью ортогонализации Грама-Шмидта из данной системы получить четыре вектора, которые будут составлять ортонормированную систему.
]
#solution[
$
  linspan(1, x^2)=integral_(-1)^1 x^2 d x = 2/3!=0=>"система не ортогональная по определению"\
  f_1=1\
    f_2=x- ((x,1))/((1,1)) dot 1 =x\
    f_3=x^2-((x^2,1))/((1,1)) dot 1 - ((x^2,x))/((x, x)) dot x=x^2-1/3\
    f_4=x^3-((x^3,1))/((1,1))dot 1-((x^3,x))/((x,x)) dot x - ((x^3,x^2-1/3))/((x^2-1/3,x^2-1/3)) dot (x^2-1/3)=x^3-3/5x\
    "Теперь отнормируем эту систему:"\
    e_1=1/sqrt(integral_(-1)^1 1^2 d x)=1/sqrt(2)\
    abs(abs(x))^2=integral_(-1)^1 x^2 d x=2/3=>e_2=sqrt(3/2)x\
    abs(abs(x^2-1/3))^2=integral_(-1)^1 (x^2-1/3)^2 d x=integral_(-1)^1 x^4-2/3x^2+1/9 d x = 8/45\
    =>e_3=sqrt(45/8)(x^2-1/3)\
    abs(abs(x^3-3/5x))^2=integral_(-1)^1 x^6-6/5x^4 +9/25x^2 d x =8/175\
    =>e_4=sqrt(175/8)(x^3-3/5x)
$
]
#answer[
$
  linspan(1/sqrt(2), sqrt(3/2)x, sqrt(45/8)(x^2-1/3), sqrt(175/8)(x^3-3/5x))
$
]