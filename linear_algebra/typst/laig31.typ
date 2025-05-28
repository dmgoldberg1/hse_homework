#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 31"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Линейная алгебра и геометрия"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Пусть $sigma_1,...,sigma_m-$ сингулярные значения матрицы $A in "Mat"_(m times n)(RR), m <= n)$. Найти все сингулярные значения матрицы $(A|E_m) in "Mat"_(m times (n+m))(RR)$. 
]
#solution[
  $
    A=U Sigma V^T- "SVD"\
    => (A|E_m)=(U Sigma V^T|E_m)=U (Sigma V^T|U^T)\
    => U^T (A | E_m) = (Sigma V^T |U^T)\
    "Так так домножение ортогональную матрицу не меняет сингулярных значений, то"\
    "сингулярные значения матрицы" (A | E_m) "равны сингулярным значениям матрицы" (Sigma V^T | U^T), " найдем их".\
    (Sigma V^T | U^T) mat(V Sigma^T;U)=Sigma Sigma^T + E_m=mat(sigma_1^2 + 1, 0,...,0;0,sigma_2^2+1,...,0;...,...,sigma_m^2+1)\
    "Собственные значения этой матрицы равны" sigma_i^2 + 1=> "сингулярные" sqrt(sigma_i^2+1).
  $
]
#answer[
$
  sqrt(sigma_i^2+1) space forall i=1,...,m
$
]
#pagebreak()

#problem(name: 2)[
  Найти усечённое сингулярное разложение матрицы
$
  A=mat(-2,6;9,-2).
$
Найти матрицу $B$ ранга 1, наиболее близкую к $A$ по норме Фробениуса, и вычислить $abs(abs(A - B))$.
]
#solution[
$
  C=A A^T= mat(40,-30;-30,85)\
  chi(t)=t^2-125t+2500=(t-25)(t-100)\
  => sigma_1=10, sigma_2=5\
  Sigma=mat(10,0;0,5)\
  C v = 25 v\
  (C-25E)v=0\
  mat(15,-30;-30,60) =>"УСВ:" #isv(array(((15,-30),(-30,60)))) =>"ФСР:" mat(2/sqrt(5);1/sqrt(5))=u_2\
  C v = 100v\
  (C -100E)v=0\
  mat(-60,-30;-30,-15) =>"УСВ:" #isv(array(((-60,-30),(-30,-15)))) => "ФСР:" mat(-1/sqrt(5);2/sqrt(5))=u_1\
  v_1=(A^T u_1)/sigma_1=mat((2sqrt(5))/5;(-sqrt(5))/5)\
  v_2 = (A^T u_2)/sigma_2=mat((sqrt(5))/5;(2sqrt(5))/5)\ => A = mat(-1/sqrt(5),2/sqrt(5);2/sqrt(5),1/sqrt(5))mat(10,0;0,5)mat((2sqrt(5))/5, -sqrt(5)/5;sqrt(5)/5,(2sqrt(5))/5)-"усечённое разложение"\
  B = mat(-1/sqrt(5),2/sqrt(5);2/sqrt(5),1/sqrt(5))mat(10,0;0,0)mat((2sqrt(5))/5, -sqrt(5)/5;sqrt(5)/5,(2sqrt(5))/5)\
  abs(abs(A - B))=sqrt(sigma_2^2)=5\
$
]
#answer[
см. конец решения
]
#pagebreak()

#problem(name: 3)[
Найти усечённое сингулярное разложение матрицы
$
  A=mat(6,1,2;2,2,-6).
$
Найти матрицу $B$ ранга 1, наиболее близкую к $A$ по норме Фробениуса, и вычислить $abs(abs(A - B))$.
]
#solution[
$
  C=A A^T=mat(41,2;2,44)\
  chi(t)=t^2-85t+1800=(t-40)(t-45)\
  sigma_1=3sqrt(5),sigma_2=2sqrt(10)\
  Sigma=mat(3sqrt(5),0;0,2sqrt(10))\
  C u = 45 u\
  (C - 45E)u=0\
  mat(-4,2;2,-1) =>"УСВ:" #isv(array(((-4,2),(2,-1)))) =>"ФСР:" mat(1/sqrt(5);2/sqrt(5))=u_1\
  C u = 40 u\
  (C-40E)u=0\
  mat(1,2;2,4) =>"УСВ:" #isv(array(((1,2),(2,4)))) =>"ФСР:" mat(-2/sqrt(5);1/sqrt(5))=u_2\
  v_1=(A^T u_1)/sigma_1=mat(2/3;1/3;-2/3)\
  v_2=(A^T u_2)/sigma_2=mat(-sqrt(2)/2;0;-sqrt(2)/2)\
  A=mat(1/sqrt(5),-2/sqrt(5);2/sqrt(5),1/sqrt(5))mat(3sqrt(5),0;0,2sqrt(10))mat(2/3,1/3,-2/3;-sqrt(2)/2,0,-sqrt(2)/2)-"усеченное разложение"\
  B=mat(1/sqrt(5),-2/sqrt(5);2/sqrt(5),1/sqrt(5))mat(3sqrt(5),0;0,0)mat(2/3,1/3,-2/3;-sqrt(2)/2,0,-sqrt(2)/2)\
  abs(abs(A-B))=2sqrt(10)
$
]
#answer[
см. конец решения
]
#pagebreak()

#problem(name: 4)[
  Найти усечённое сингулярное разложение матрицы
$
  A=mat(11,-8,1;-8,2,8;1,8,11).
$
Найти матрицы $B$ и $C$ рангов 2 и 1 соответственно, наиболее близких к $A$ по норме Фробениуса, и вычислить $abs(abs(A - B))$ и $abs(abs(A-C))$.
]
#solution[
$
  D=A A^T=mat(186,-96,-42;-96,132,96;-42,96,186)\
  chi(t)=t^3-504t^2+63504t-1679616=(t-36)(t-144)(t-324)\
  sigma_1=18,sigma_2=12,sigma_1=6\
  D u = 324u\
  (D-324E)u=0\
  mat(-138,-96,-42;-96,-192,96;-42,96,-138)=>"УСВ:" #isv(array(((-138,-96,-42),(-96,-192,96),(-42,96,-138))))=>"ФСР:" mat(-1/sqrt(3);1/sqrt(3);1/sqrt(3))=u_1\
  D u = 144u\
  (D - 144E)u=0\
  mat(42,-96,-42;-96,-12,96;-42,96,42)=>"УСВ:" #isv(array(((42,-96,-42),(-96,-12,96),(-42,96,42))))=>"ФСР:" mat(1/sqrt(2);0;1/sqrt(2))=u_2\
  D u = 36u\
  (D - 36E)u=0\
  mat(150,-96,-42;-96,96,96;-42,96,150)=>"УСВ:" #isv(array(((150,-96,-42),(-96,96,96),(-42,96,150))))=>"ФСР:" mat(-1/sqrt(6);-2/sqrt(6);1/sqrt(6))=u_3\
  v_1=(A^T u_1)/sigma_1=mat(-sqrt(3)/3;sqrt(3)/3;sqrt(3)/3)\
$
$
  v_2=(A^T u_2)/sigma_2=mat(sqrt(2)/2;0;sqrt(2)/2)\
  v_3=(A^T u_3)/sigma_3=mat(sqrt(6)/6;sqrt(6)/3;-sqrt(6)/6)\
  A=mat(-1/sqrt(3),1/sqrt(2),-1/sqrt(6);1/sqrt(3),0,-2/sqrt(6);1/sqrt(3),1/sqrt(2),1/sqrt(6))mat(18,0,0;0,12,0;0,0,6)mat(-sqrt(3)/3,sqrt(3)/3,sqrt(3)/3;sqrt(2)/2,0,sqrt(2)/2;sqrt(6)/6,sqrt(6)/3,-sqrt(6)/6)-"усеченное разложение"\
  B=mat(-1/sqrt(3),1/sqrt(2),-1/sqrt(6);1/sqrt(3),0,-2/sqrt(6);1/sqrt(3),1/sqrt(2),1/sqrt(6))mat(18,0,0;0,12,0;0,0,0)mat(-sqrt(3)/3,sqrt(3)/3,sqrt(3)/3;sqrt(2)/2,0,sqrt(2)/2;sqrt(6)/6,sqrt(6)/3,-sqrt(6)/6)\
  C=mat(-1/sqrt(3),1/sqrt(2),-1/sqrt(6);1/sqrt(3),0,-2/sqrt(6);1/sqrt(3),1/sqrt(2),1/sqrt(6))mat(18,0,0;0,0,0;0,0,0)mat(-sqrt(3)/3,sqrt(3)/3,sqrt(3)/3;sqrt(2)/2,0,sqrt(2)/2;sqrt(6)/6,sqrt(6)/3,-sqrt(6)/6)\
  abs(abs(A-B))=6\
  abs(abs(A-C))=sqrt(12^2+6^2)=6sqrt(5)
$
]
#answer[
см. конец решения
]
#pagebreak()

#problem(name: 5)[
Привести пример матрицы $A in "Mat"_(2 times 3)(RR)$ ранга 2, для которой ближайшей по норме Фробениуса матрицей ранга 1 будет матрица
$
  B=mat(3,6,-3;-1,-2,1)
$
]
#solution[
$
  B=mat((-3sqrt(10))/10,sqrt(10)/10;sqrt(10)/10,(3sqrt(10))/10)mat(2sqrt(15),0;0,0)mat(-sqrt(6)/6,-(2sqrt(5))/5,sqrt(30)/30;-sqrt(6)/3,sqrt(5)/5,sqrt(30)/15)-"усечённое свд",\
  "тогда можно взять матрицу с произвольным вторым сингулярным значением, меньшим" 2sqrt(15), " например"\
  A=mat((-3sqrt(10))/10,sqrt(10)/10;sqrt(10)/10,(3sqrt(10))/10)mat(2sqrt(15),0;0,1)mat(-sqrt(6)/6,-(2sqrt(5))/5,sqrt(30)/30;-sqrt(6)/3,sqrt(5)/5,sqrt(30)/15)=mat(3-sqrt(15)/15,(6sqrt(30))/5+sqrt(2)/10,(-3sqrt(5))/5+sqrt(3)/15;-1-sqrt(15)/5,(-2sqrt(30))/5+(3sqrt(2))/10,(sqrt(5)+sqrt(3))/5)
$
]
#answer[
$
  A=mat(3-sqrt(15)/15,(6sqrt(30))/5+sqrt(2)/10,(-3sqrt(5))/5+sqrt(3)/15;-1-sqrt(15)/5,(-2sqrt(30))/5+(3sqrt(2))/10,(sqrt(5)+sqrt(3))/5)
$
]