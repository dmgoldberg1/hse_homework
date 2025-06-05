#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 32"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Линейная алгебра и геометрия"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Привести уравнение кривой к каноническому виду в декартовой системе координат и определить тип кривой:
1. $x^2+y^2-2x+6y-5=0$\
2. $x^2+2y^2+8x-4=0$\
3. $6x^2-5y^2+12x-10y+31=0$\
4. $x^2-6x-4y+29=0.$
]
#solution[
1.
$
  x^2+y^2-2x+6y-5=0\
  (x-1)^2+(y+3)^2-1-9-5=0\
  (x-1)^2+(y+3)^2=15\
  (x^prime)^2+(y^prime)^2=15\
  (x^prime)^2/15+(y^prime)^2/15=1-"эллипс"
$
2.
$
  x^2+2y^2+8x-4=0\
  (x+4)^2 + 2y^2 - 16 -4=0\
  (x+4)^2 + 2y^2=20\
  (x^prime)^2/20+(y^prime)^2/10=1-"эллипс"
$
3.
$
  6x^2-5y^2+12x-10y+31=0\
  6(x+1)^2-6 -5(y+1)^2+5+31=0\
  6(x+1)^2-5(y+1)^2=-30\
  6(x^prime)^2-5(y^prime)^2=-30\
  (x^prime)^2/5-(y^prime)^2/6=-1-"гипербола"
$
4.
$
  x^2-6x-4y+29=0\
  (x-3)^2-9-4y+29=0\
  (x-3^2)-4y+20=0\
  (x-3)^2-4(y-5)=0\
  (x^prime)^2-4y^prime=0\
  (x^prime)^2 = 4 y^prime-"парабола"
$
]
#pagebreak()

#problem(name: 2)[
  Привести уравнение кривой
  $
    5x^2+4x y+8y^2-32x-56y+80=0
  $
  к какноническому виду в декартовой системе координат и определить тип кривой.
]
#solution[
Сначала приведём квадратичную форму к главным осям
$
  A=mat(5,2;2,8)\
  chi(t)=det(mat(5-t,2;2,8-t))=t^2-13t+36=(t-4)(t-9)=>4;9-"собственные значения"\
  A v = 4 v\
  mat(1,2;2,4) => "УСВ:" #isv(array(((1,2),(2,4)))) => mat(-2/sqrt(5);1/sqrt(5))-"собственный вектор"\
  A v = 9 v\
  mat(-4,2;2,-1) => "УСВ:" #isv(array(((-4,2),(2,-1))))=>mat(1/sqrt(5);2/sqrt(5))-"собственный вектор"\
  C=mat(-2/sqrt(5),1/sqrt(5);1/sqrt(5),2/sqrt(5))\
  cases(x=-2/sqrt(5)x^prime+1/sqrt(5)y^prime,y=1/sqrt(5)x^prime+2/sqrt(5)y^prime)\
  9(y^prime)^2+4(x^prime)^2+(8sqrt(5))/5x^prime-(144sqrt(5))/5(y^prime)+80=0\
  (3y^prime-(24sqrt(5))/5)^2+(2x^prime+(2sqrt(5))/5)^2=36\
  (y^prime prime)^2+(x prime prime)^2=36\
  (x prime prime)^2/36+(y prime prime)^2/36=1-"эллипс"
$
]
#pagebreak()

#problem(name: 3)[
Привести уравнение кривой
  $
    6 x y -8 y^2+12x-26y-11=0
  $
  к какноническому виду в декартовой системе координат и определить тип кривой.
]
#solution[
$
  A=mat(0,3;3,-8)\
  chi(t)=det(mat(0-t,3;3,-8-t))=(t-1)(t+9)=>1;-9-"собственные значения"\
  A v = 1v\
  mat(-1,3;3,-9)=>"УСВ:" #isv(array(((-1,3),(3,-9))))=>mat(3/sqrt(10);1/sqrt(10))-"собственный вектор"\
  A v = -9v\
  mat(9,3;3,1)=>"УСВ:" #isv(array(((9,3),(3,1))))=>mat(-1/sqrt(10);3/sqrt(10))-"собственный вектор"\
  C=mat(3/sqrt(10),-1/sqrt(10);1/sqrt(10),3/sqrt(10))\
  cases(x=3/sqrt(10)x^prime-1/sqrt(10)y^prime,y=1/sqrt(10)x^prime+3/sqrt(10)y^prime)\
  (x^prime)^2-9(y^prime)^2+sqrt(10)x^prime-9sqrt(10)y^prime-11=0\
  (x^prime+sqrt(5))^2-(3y^prime+3sqrt(5))^2+29=0\
  (x prime prime)^2/29-(y prime prime)^2/29=-1-"гипербола"
$
]
#pagebreak()

#problem(name: 4)[
  Привести уравнение кривой
  $
    4x^2-4x y+y^2-2x-14y+7=0
  $
  к какноническому виду в декартовой системе координат и определить тип кривой.
]
#solution[
$
  A=mat(4,-2;-2,1)\
  chi(t)=det(mat(4-t,-2;-2,1-t))=t(t-5)=>0;5-"собственные значения"\
  A v = 0 v\
  mat(4,-2;-2,1)=>"УСВ:" #isv(array(((4,-2),(-2,1)))) =>mat(1/sqrt(5);2/sqrt(5))-"собственный вектор"\
  A v = 5 v\
  mat(-1,-2;-2,-4)=>"УСВ:" #isv(array(((-1,-2),(-2,-4))))=>mat(-2/sqrt(5);1/sqrt(5))-"собственный вектор"\
  C=mat(1/sqrt(5),-2/sqrt(5);2/sqrt(5),1/sqrt(5))\
  cases(x=1/sqrt(5)x^prime-2/sqrt(5)y^prime,y=2/sqrt(5)x^prime+1/sqrt(5)y^prime)\
  5(y^prime)^2-6sqrt(5)x^prime-2sqrt(5)y^prime+7=0\
  5(y^prime-sqrt(5)/5)^2+6-6sqrt(5)x^prime=0\
  5(y^prime-sqrt(5)/5)^2-6sqrt(5)(x^prime-1/sqrt(5))=0\
  (y prime prime)^2=(6sqrt(5))/5x prime prime-"парабола"
$
]
#pagebreak()

#problem(name: 5)[
Привести уравнение кривой к каноническому виду в декартовой системе координат и определить тип кривой:
1. $x^2+4y^2+9z^2-6x+8y-36z=0$\
2. $4x^2-y^2-z^2+32x-12z+44=0$\
3. $3x^2-y^2+3z^2-18x+10y+12z+14=0.$
]
#solution[
1.
$
  x^2+4y^2+9z^2-6x+8y-36z=0\
  (x-3)^2+4(y+1)^2+9(z-2)^2=49\
  (x^prime)^2+4(y^prime)^2+9(z^prime)^2=49\
  (x prime prime)^2/49+(y prime prime)^2/49+(z prime prime)^2/49=1-"эллипсоид"
$
2.
$
  4x^2-y^2-z^2+32x-12z+44=0\
  4(x+4)^2-(z+6)^2-y^2=-16\
  4(x^prime)^2-(z^prime)^2-(y^prime)^2=-16\
  (x^prime prime)^2-(z^prime prime)^2-(y^prime prime)^2=-16\
  -(x^prime prime)^2/16+(z^prime prime)^2/16+(y^prime prime)^2/16=1-"однополостный гиперболоид"
$
3.
$
  3x^2-y^2+3z^2-18x+10y+12z+14=0\
  3(x-3)^2-(y-5)^2+3(z+2)^2=0\
  3(x^prime)^2-(y^prime)^2+3(z^prime)^2=0\
  (x prime prime)^2-(y prime prime)^2 + (z prime prime)^2=0-"конус"

$
]
#pagebreak()

#problem(name: 6)[
Привести уравнение поверхности
$
  2 x y + 2 x+2y+2z-1=0
$
к каноническому виду в декартовой системе координат и определить тип поверхности.
]
#solution[
$
  A=mat(0,1,0;1,0,0;0,0,0)\
  chi(t)=-t(t-1)(t+1)=>0;1;-1-"собственные значения"\
  A v = 0 v\
  mat(0,1,0;1,0,0;0,0,0)=>"УСВ:" #isv(array(((0,1,0),(1,0,0),(0,0,0))))=>mat(0;0;1)-"собственный вектор"\
  A v = 1 v\
  mat(-1,1,0;1,-1,0;0,0,-1)=>"УСВ:" #isv(array(((-1,1,0),(1,-1,0),(0,0,-1))))=>mat(1/sqrt(2);1/sqrt(2);0)-"собственный вектор"\
  A v = -1v\
  mat(1,1,0;1,1,0;0,0,1)=>"УСВ:" #isv(array(((1,1,0),(1,1,0),(0,0,1))))=>mat(-1/sqrt(2);1/sqrt(2);0)-"собственный вектор"\
  C=mat(0,1/sqrt(2),-1/sqrt(2);0,1/sqrt(2),1/sqrt(2);1,0,0)\
  cases(x=1/sqrt(2)y^prime-1/sqrt(2)z^prime,y=1/sqrt(2)y^prime+1/sqrt(2)z^prime,z=x^prime)\
  (y^prime)^2-(z^prime)^2+2sqrt(2)y^prime+2x^prime=1\
  (y^prime+sqrt(2))^2-(z^prime)^2+2(x^prime-3/2)=0\
  (y^prime prime)^2-(z prime prime)^2+2 x prime prime=0\
  -(y^prime prime)^2+(z prime prime)^2=2 x prime prime-"гиперболический параболоид"\
$
]
#pagebreak()

#problem(name: 7)[
  Привести уравнение поверхности
$
  x^2+y^2+z^2-2 y z- 2 x - y+1=0
$
к каноническому виду в декартовой системе координат и определить тип поверхности.
]
#solution[
$
  A=mat(1,0,0;0,1,-1;0,-1,1)\
  chi(t)=t^3-3t^2+2t=t(t-1)(t-2)=>0;1;2-"собственные значения"\
  A v = 0 v\
  mat(1,0,0;0,1,-1;0,-1,1) =>"УСВ:" #isv(array(((1,0,0),(0,1,-1),(0,1,-1))))=>mat(0;1/sqrt(2);1/sqrt(2))-"собственный вектор"\
  A v = 1 v\
  mat(0,0,0;0,0,-1;0,-1,0)=>"УСВ:" #isv(array(((0,0,0),(0,0,-1),(0,-1,0))))=>mat(1/sqrt(2);0;0)-"собственный вектор"\
  A v = 2 v\
  mat(-1,0,0;0,-1,-1;0,-1,-1)=>"УСВ:" #isv(array(((-1,0,0),(0,-1,-1),(0,-1,-1))))=>mat(0;-1/sqrt(2);1/sqrt(2))-"собственный вектор"\
  C=mat(0,1/sqrt(2),0;1/sqrt(2),0,-1/sqrt(2);1/sqrt(2),0,1/sqrt(2))\
  cases(x=1/sqrt(2)y^prime,y=1/sqrt(2)x^prime-1/sqrt(2)z^prime,z=1/sqrt(2)x^prime+1/sqrt(2)z^prime)\
  (y^prime)^2+4(z^prime)^2-sqrt(2)x^prime+sqrt(2)z^prime-2sqrt(2)y^prime+2=0\
  (y^prime -sqrt(2))^2+4(z^prime+sqrt(2)/8)^2-2(sqrt(2)/2x^prime + 1/16)=0\
  (y^prime prime)^2+4(z prime prime)^2-2x prime prime=0\
  (y prime prime prime)^2+(z prime prime prime)^2=2x prime prime prime-"эллиптический параболоид"
$
]
#pagebreak()

#problem(name: 8)[
  Привести уравнение поверхности
$
  8x^2-28 x y-13y^2-z^2-44x+2y-37=0
$
к каноническому виду в декартовой системе координат и определить тип поверхности.
]
#solution[
$
  A=mat(8,-14,0;-14,-13,0;0,0,-1)\
  chi(t)=t^3+6t^2-295t-300=(t-15)(t+1)(t+20)=>15;-1;-20-"собственные значения"\
  A v = 15 v\
  mat(-7,-14,0;-14,-28,0;0,0,-16)=>"УСВ:" #isv(array(((-7,-14,0),(-14,-28,0),(0,0,-16))))=>mat(-2/sqrt(5);1/sqrt(5);0)-"собственный вектор"\
  A v = -1v\
  mat(9,-14,0;-14,-12,0;0,0,0)=>"УСВ:" #isv(array(((9,-14,0),(-14,-12,0),(0,0,0))))=>mat(0;0;1)-"собственный вектор"\
  A v = -20 v\
  mat(28,-14,0;-14,7,0;0,0,19)=>"УСВ:" #isv(array(((28,-14,0),(-14,7,0),(0,0,19))))=>mat(1/sqrt(5);2/sqrt(5);0)-"собственный вектор"\
  C=mat(-2/sqrt(5),0,1/sqrt(5);1/sqrt(5),0,2/sqrt(5);0,1,0)\
  cases(x=-2/sqrt(5)x^prime+1/sqrt(5)z^prime,y=1/sqrt(5)x^prime+2/sqrt(5)z^prime,z=y^prime)\
  -20(z prime)^2+15(x prime)^2+18sqrt(5)x^prime-8sqrt(5)z^prime-(y^prime)^2-37=0\
  15(x^prime+(3sqrt(5))/5)^2-20(z^prime+(sqrt(5))/5)^2-(y^prime)^2=60\
  15(x prime prime)^2-20(z prime prime)^2-(y prime prime)^2=60\
  (x prime prime prime)^2-(z prime prime prime)^2-(y prime prime prime)^2=60\
  -(x prime prime prime)^2/60+(z prime prime prime)^2/60+(y prime prime prime)^2/60=-1-"двуполостный гиперболоид"
$
]
#pagebreak()

#problem(name: 9)[
Докажите, что через каждую точку однополостного гиперболоида проходят ровно две прямые,целиком лежащие на нём.
]
#solution[
$
  (x^2)/(a^2)+(y^2)/(b^2)-(z^2)/(c^2)=1-"искомая поверхность"\
  l=r_0 + a t-"прямая, где" r_0 "лежит на поверхности"
$
Чтобы прямая лежала на поверхности, должно выполняться следущее соотношение при любых $t$:
$
  ((x_0+a_x t)^2)/(a^2)+((y_0+a_y t)^2)/(b^2)-((z_0+a_z t)^2)/(c^2)=1\
  t^2((a_x^2)/(a^2)+(a_y^2)/(b^2)-(a_z^2)/(c^2))+2t((x_0a_x)/(a^2)+(y_0a_y)/(b^2)-(z_0a_z)/(c^2))=0\
$
Коэффициенты при $t$ должны быть нулевыми:
$
  cases((a_x^2)/(a^2)+(a_y^2)/(b^2)-(a_z^2)/(c^2)=0,(x_0a_x)/(a^2)+(y_0a_y)/(b^2)-(z_0a_z)/(c^2)=0)\
  
$
]