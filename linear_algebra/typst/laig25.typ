#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 25"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Линейная алгебра и геометрия"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Составить СЛУ, множеством решений которой будет плоскость в $RR^4$, проходящая через точки
$
  A(-3,4,1,2), B(1,2,3,3), C(5,4,-3,3).
$
]
#solution[
СЛУ будет выглядеть так(ОСЛУ)
$
  mat(-3,4,1,2,1;1,2,3,3,1;5,4,-3,-3,1)
$
]
#answer[
  $
    mat(-3,4,1,2,1;1,2,3,3,1;5,4,-3,-3,1)
  $
]

#pagebreak()

#problem(name: 2)[
  Найти расстояние от точки
  $
    p=(4,2,-5,1)
  $
до линейного многообразия, заданного системой уравнений
$
  cases(2x_1-2x_2+x_3+2x_4=9,2x_1-4x_2+2x_3+3x_4=12).
$
]
#solution[
Найдем ФСР для ОСЛУ
$
  mat(2,-2,1,2;2,-4,2,3) => "УСВ:" #isv(array(((2,-2,1,2),(2,-4,2,3)))) => "ФСР:" mat(-1/2;1/2;0;1),mat(0;1/2;1;0) = U\
  p_0 = (1,1,1,4)-"частное решение" => sect.sq.big = p_0 + U
$
Тогда искомое расстояние есть расстояние от $p-p_0=(3,1,-6,-3)=v$ до $U$. Найдём это расстояние
$
  A = mat(-1/2,0;1/2,1/2;0,1;1,0)\
  "pr"_U v = A dot (A^T dot A)^(-1) dot A^T dot v = (1,-3,-4,-2) =>\
  abs("ort"_U v) = abs((2,4,-2,-1))=5
$
]
#answer[
  5
]
#pagebreak()

#problem(name: 3)[
1. Составить уравнение прямой, проходящей через начало координат и через точку (1,8).
2. Составить уравнение плоскости, проходящей через три точки
$
  M_1(2,3,1), M_2(3,1,4), M_3(2,1,5).
$
]
#solution[
1. $y=8x$\
2.
$
  0=det(mat(x-2,-1,0;y-3,-2,0;z-1,3,1))=-2x+1+y
$
]
#answer[
  1. $y=8x$\
  2. $-2x + y + 1 = 0$
]
#pagebreak()

#problem(name: 4)[
1. Составить параметрическое уравнение прямой
$
  3x +6y+5=0.
$
2. Составить общее уравнение прямой
$
  x=2+5t, y=4-7t.
$
]
#solution[
1. 
$
  mat(x;y)=mat(0;-5/6)+ t dot mat(-6;3)
$
2. 
$
  t= (x-2)/5 => y = 4 - (7x - 14)/5\
  -7/5 x - y + 34/5 =0
$
]
#answer[
1. $
     mat(x;y)=mat(0;-5/6)+ t dot mat(-6;3)
   $
2. $-7/5 x - y + 34/5 =0$
]
#pagebreak()

#problem(name: 5)[
Даны вершины тетраэдра
$
  A(5,1,3),B(1,6,2),C(5,0,4),D(4,0,6)
$
Составить уравнение плоскости, проходящей через ребро $A B$ параллельно ребру $C D$.
]
#solution[
Заметим, что вектор нормали перпендикулярен вектору $C D$. Их этого имеем систему
$
  cases(5a+b+3c + D = 0,a +6b + c + D = 0,-a + 2 c = 0)\
  => (a,b,c,D)=(2c,2c,c,-15c) => "уравнение имеет вид"\
  2x+2y+z-15=0
$
]
#answer[
$2x+2y+z-15=0$
]

#pagebreak()

#problem(name: 6)[
Составить общее уравнение плоскости по её параметрическому уравнению:\
1. $x=u+v,y=u-v,z=5+6u-4v;$\
2. $x=1+2v,y=-2,z=1-u.$
]
#solution[
1. Направляющими векторами являются векторы $v_1=(1,1,6),v_2=(1,-1,4)$. Построим по этим векторам плоскость
$
  0=det(mat(x,1,1;y,1,-1;z,6,4))=10x+2y-2z
$
Так как плоскость еще проходит через точку (0,0,5), то итоговое уравнение имеет вид:
$
  10x+2y-2z+10=0
$
2. Направляющими векторами являются векторы $v_1=(0,0,-1),v_2=(2,0,0)$. Построим по этим векторам плоскость
$
  0=det(mat(x,0,2;y,0,0;z,-1,0))=-2y
$
Так как плоскость еще проходит через точку (1,-2,1), то итоговое уравнение имеет вид:
$
  -2y-4=0
$
]
#answer[
1. $10x+2y-2z+10=0$\
2. $-2y-4=0$
]
#pagebreak()

#problem(name: 7)[
1. Составить параметрическое уравнение прямой
$
  cases(x+y-z+5=0,2x-y+2z-2=0).
$
2. Составить уравнение прямой, проходящей через точки $A$ и $B$, в каждом из следующих случаев:
  1. $A(2,3,1),B(4,6,9)$;
  2. $A(7,-1,2),B(5,-1,4)$;
  3. $A(1,5,1),B(1,-5,1)$.
]
#solution[
1. $r_0=(-4/3,-8/3,1)$. Для поиска направляющего вектора ищем ФСР для ОСЛУ
$
  mat(1,1,-1;2,-1,2)=> "УСВ:" #isv(array(((1,1,-1),(2,-1,2))))=>"ФСР:" mat(-1/3;4/3;1) =>\
  r= mat(-4/3;-8/3;1) + t dot mat(-1/3;4/3;1)
$
2.\
#h(16pt)  1. Как направляющий вектор берем разность координат этих точек, получаем уравнение
$
  (x-2)/(2)=(y-3)/(3)=(z-1)/8
$
#h(16pt)  2. Как направляющий вектор берем разность координат этих точек, получаем уравнение
$
  (x-7)/(-2)=(z-2)/2,y=-1
$
#h(16pt)  3. Как направляющий вектор берем разность координат этих точек, получаем уравнение
$
  x=1,z=1, y in RR
$
]
