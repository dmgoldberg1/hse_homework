#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 21"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Линейная алгебра и геометрия"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Выяснить, при каких значениях $lambda$ следующие квадратичные формы являются положительно определенными:
$
  1. 2x_1^2+x_2^2+3x_3^2+2 lambda x_1x_2+2x_1x_3\
  2. x_1^2+x_2^2+5x_3^2+2 lambda x_1x_2 -2x_1x_3+4x_2x_3.
$
]
#solution[
  1. Выпишем матрицу квадратичной формы
$
  mat(2, lambda,1;lambda,1,0;1,0,3)\
  delta_1=2;delta_2=2-lambda^2;delta_3=5-3 lambda ^2\
  cases(2- lambda^2>0,5-3 lambda^2>0,2>0) <==> lambda in (-sqrt(15)/3, sqrt(15)/3)=> \ "по критерию Сильвестра при таких" lambda "квадратичная форма положительно определенная".
$
2. Выпишем матрицу квадратичной формы
$
  mat(1,lambda,-1;lambda,1,2;-1,2,5)\
  delta_1=1;delta_2=1-lambda^2;delta_3=-4lambda -5lambda^2\
  cases(1>0,1-lambda^2>0,-4lambda -5lambda^2>0) <==> lambda in (-4/5,0)=>\
  "по критерию Сильвестра при таких" lambda "квадратичная форма положительно определенная"
$
]
#answer[
1. $lambda in (-sqrt(15)/3, sqrt(15)/3)$\
2. $lambda in (-4/5,0)$
]
#pagebreak()

#problem(name: 2)[
  Найти нормальный вид квадратичной формы
$
  x_1^2+4x_2^2+x_3^2+2lambda x_1x_2+10x_1x_3+6x_2x_3
$
для каждого значения параметра $lambda$.
]
#solution[
Сделаем замену координат. Поменяем $x_2$ и $x_3$ местами. Тогда матрица квадратичной формы имеет вид
$
  mat(1,5,lambda;5,1,3;lambda,3,4)\
  delta_1=1;delta_2=-24;delta_3=-105+30lambda-lambda^2 =>\
  y_1^2-24y_2^2+(-105+30lambda-lambda^2)/(-24)y_3^2-"канонический вид"\
  -105+30lambda-lambda^2=0 <==> cases(delim: "[", lambda=15-2sqrt(30),lambda=15+2sqrt(30)) => z_1^2-z_2^2-"нормальный вид"\
  -105+30lambda-lambda^2>0 <==> lambda in (15-2sqrt(30),15+2sqrt(30)) => z_1^2-z_2^2-z_3^2-"нормальный вид"\
  -105+30lambda - lambda^2 <0 <==> lambda in (-infinity,15-2sqrt(30)) union (15+2sqrt(30), +infinity) => z_1^2-z_2^2+z_3^2 -"нормальный вид"
$
]
#answer[
$lambda in (-infinity,15-2sqrt(30)) union (15+2sqrt(30), +infinity) => z_1^2-z_2^2+z_3^2 -"нормальный вид"$\

$lambda in (15-2sqrt(30),15+2sqrt(30)) => z_1^2-z_2^2-z_3^2-"нормальный вид"$

$cases(delim: "[", lambda=15-2sqrt(30),lambda=15+2sqrt(30)) => z_1^2-z_2^2-"нормальный вид"$
]
#pagebreak()

#problem(name: 3)[
Найти нормальный вид квадратичной формы
$
  lambda x_1^2-2x_2^2-3x_3^2+2x_1x_2-2x_1x_3+2x_2x_3
$
]
#solution[
Сделаем замену координат. Поменяем $x_1$ и $x_3$ местами. Тогда матрица квадратичной формы имеет вид
$
  mat(-3,1,-1;1,-2,1;-1,1,lambda)\
  delta_1=-3;delta_2=5;delta_3=5lambda+3 =>\
  -3y_1^2-5/3y_2^2+(5lambda +3)/5y_3^2-"канонический вид"\
  5lambda+3=0 <==> lambda=-3/5=>-z_1^2-z_2^2-"нормальный вид"\
  5lambda +3 >0 <==> lambda > -3/5 => -z_1^2-z_2^2+z_3^2-"нормальный вид"\
  5lambda+3 <0 <==> lambda < -3/5 => -z_1^2-z_2^2-z_3^2-"нормальный вид"
$
]
#answer[
$lambda < -3/5 => -z_1^2-z_2^2-z_3^2-"нормальный вид"$\

$lambda=-3/5=>-z_1^2-z_2^2-"нормальный вид"$\

$lambda > -3/5 => -z_1^2-z_2^2+z_3^2-"нормальный вид"$
]
#pagebreak()

#problem(name: 4)[
Найти все значения параметров $a$ и $b$, при которых билинейная форма
$
  x_1y_1+x_1y_2+x_2y_1+a x_2y_2+b x_2y_3-x_3y_2+2x_3y_3
$
задаёт скалярное произведение в $RR^3$.
]
#solution[
Билинейная форма задаёт скалярное произведения, если она симметричная и положительно определенная. Выпишем матрицу билинейной формы и сделаем так, чтобы она удовлетворяла этим условиям.
$
  mat(1,1,0;1,a,b;0,-1,2)\
  b=-1 "для симметрии"\
  delta_1=1>0\
  delta_2=a-1>0 <==> a > 1\
  delta_3=2a-3 >0 <==>a > 3/2\
  => a>3/2
$
При $a>3/2$ и $b=-1$ билинейная форма является симметричной и положительно определенной по критерию Сильвестра.
]
#answer[
  $a > 3/2, b=-1$
]
#pagebreak()

#problem(name: 5)[
  Найти длины сторон и внутренние углы треугольника, вершины которого заданы своими координатами в $RR^5$:
$
  A(2,4,2,4,2), B(4,4,3,4,4),C(5,7,5,7,2).
$
]
#solution[
$A B =(2,0,1,0,2), A C=(3,3,3,3,0), B C=(1,3,2,3,-2)$\
$|A B| = sqrt(2^2+1+2^2)=3, |A C|=sqrt(4 dot 3^2)=6,|B C|=sqrt(1+3^2+2^2+3^2+2^2)=3sqrt(3)$\

$cos(angle B A C)=((A B, A C))/(|A B| dot |A C|)=1/2 => angle B A C=60$\

$cos(angle A B C)=((A B, B C))/(|A B| dot |B C|)=0 => angle A B C=90$\

$cos(angle B C A)=((A C, B C))/(|A C| dot |B C|)=sqrt(3)/2 => angle B C A=30$\
]
#answer[
$|A B| =3, |A C|=6,|B C|=3sqrt(3),angle B A C=60,angle A B C=90,angle B C A=30$
]
#pagebreak()

#problem(name: 6)[
  Найти число диагоналей $n$-мерного куба, ортогональных к данной диагонали.
]
#solution[
Пусть $(x_1,...,x_n)-$данная вершина, тогда $(a-x_1,...,a-x_n)-$ противоположная вершина. Вектор $(2x_1-a,...,2x_n-a)$ задаёт данную диагональ. Рассмотрим произвольную другую диагональ, заданную вектором $(2x_1^prime - a,...,2x_n^prime - a)$. Скалярное произведение этих двух векторов должно быть нулевым, то есть
$
  (2x_1-a) dot (2x_1^prime -a)+...+(2x_n-a) dot (2x_n^prime -a)=0
$
Так как каждая координата равна 0 или $a$, то каждое слагаемое равно $a^2$ или $-a^2$. Заметим, что если $n$ нечётное, то сумма никогда не равна нулю, так как в случае равенства все слагаемые должны разбиваться на пары с противоположными значениями, с нечётным $n$ такое невозможно, значит $n$ чётное. Каждая пара имеет вид ${(2x_k-a) dot (2x_i^prime -a), (2x_l-a) dot (2x_j^prime -a)}$, где $x_k,x_l$ фиксированы. Заметим, что, выбирая значение для $x_i^prime$, $x_j^prime$ определяется однозначно так, чтобы получилось противоположное значение. Значит достаточно определить значение для половины координат. Это можно сделать $display(mat(n;n/2))$ способами. То есть всего $display(mat(n;n/2))$ диагоналей, ортогональных данной. 
]
#answer[
  $display(mat(n;n/2))$
]
#pagebreak()

#problem(name: 7)[
1. Найти длину диагонали $n$-мерного куба с ребром $a$ и предел этой длины при $n arrow infinity$.
2. Доказать, что все диагонали $n$-мерного куба образуют один и тот же угол $phi.alt_n$ со всеми его рёбрами. Найти этот угол и его предел при $n arrow infinity$. При каком $n$ получим $phi.alt_n=60?$
]
#solution[
1. Аналогично с прошлой задачей вектор $k=(2x_1-a,...,2x_n-a)$ задаёт данную диагональ, где $x_1,...,x_n in {0,a}$. $|k|=sqrt((2x_1-a)^2+...+(2x_n-a)^2)=sqrt(n dot a^2). display(lim_(n arrow infinity)a sqrt(n)=infinity)$.
2. Аналогично с прошлым пунктом введём вектор $k$, задающий диагональ. Рассмотрим произвольную вершину $(y_1,...,y_n)$ и произвольную соседнюю к ней $(y_1,...,a-y_i,...,y_n)$. Тогда ребро задаётся вектором $r=(0,...,2y_i-a,...,0)$. Выпишем соотношение для косинуса угла между векторами $k$ и $r$.
$
  cos(phi.alt_n)=((r, k))/(|r| dot |k|)=((2x_i-a) dot (2y_i-a))/(a sqrt(n) dot (2y_i-a))=(2x_i-a)/(a sqrt(n))=1/sqrt(n)=>\
  phi.alt_n=arccos(1/sqrt(n)),\
  "то есть фиксированная диагональ имеет один и тот же угол со всеми рёбрами"\

$
#h(16pt) $display(lim_(n arrow infinity) phi.alt_n=lim_(n arrow infinity) arccos(1/sqrt(n))=pi/2)$. При $display(n=4 space phi.alt_4=arccos(1/2)=pi/3)$.
]
#answer[
1. $a sqrt(n); infinity$\
2. ч.т.д.;$arccos(1/sqrt(n)); pi/2;4$
]
#pagebreak()

#problem(name: 8)[
  Рассмотрим евклидово пространство $RR[x]_(<=3)$ со скалярным произведением
$
  (f,g)=integral_0^1 f(t)g(t)d t.
$
Найти в этом пространстве угол между векторами $x^3$ и $x^2+x+1$.
]
#solution[
  $
    cos alpha = ((x^3,x^2+x+1))/(sqrt((x^3,x^3)) dot sqrt((x^2+x+1,x^2+x+1)))=(integral_0^1 t^3 dot (t^2+t+1)d t)/(sqrt(integral_0^1 t^3 dot t^3 d t) dot sqrt(integral_0^1 (t^2+t+1) dot (t^2+t+1)d t))=\
    =(37/60)/(sqrt(1/7) dot sqrt(37/10))=sqrt(2590)/60=> alpha = arccos(sqrt(2590)/60)
  $
]
#answer[
  $alpha = arccos(sqrt(2590)/60)$
]