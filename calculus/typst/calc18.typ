#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 18"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
  Найдите точки локальных экстремумов функций
  $
    а) space f(x, y)=x^3+y^3-3a x y; space б) space f(x,y)=e^(2x + 3y)(8x^2-6x y+3y^2).
  $
]
#solution[
  1. 
  $
  (diff f)/(diff x) = 3x^2-3a y\ (diff f)/(diff y)=3y^2-3a x\
  cases(3x^2-3a y=0, 3y^2 -3a x=0) <==>(x,y)=(0,0);(x,y)=(a, a)\
  (diff^2 f)/(diff x^2)=6x\
  (diff^2 f)/(diff y^2)=6y\
  (diff^2 f)/(diff x diff y)=-3a\
  G = mat(6x, -3a;-3a, 6y)\
  G(0, 0)=mat(0, -3a;-3a, 0)\
  delta_1=0; delta_2=-9a^2 < 0\
  "При "a=0: (0, 0)-"перегиб "=> (0, 0)- "не экстремум"\
  G(a, a)= mat(6a, -3a; -3a, 6a)\
  delta_1 = 6a, delta_2=27a^2\
  a > 0 => (a, a) "локальный минимум", a < 0=>(a,a) "локальный максимум" 
  $
  2.
  $
    (diff f)/(diff x)=e^(2x+3y)(16x^2+16x-6y-12x y+6y^2)\
    (diff f)/(diff y)=e^(2x+3y)(-6x+6y+24x^2-18x y+9y^2)\
    cases(e^(2x+3y)(16x^2+16x-6y-12x y+6y^2)=0, e^(2x+3y)(-6x+6y+24x^2-18x y+9y^2)=0) <==> (x,y)=(0,0),(x,y)=(-1/4, -1/2)\
    (diff^2 f)/(diff x^2)=e^(2x+3y)(16-24y+32x^2+64x-24x y+12y^2)\
    (diff^2 f)/(diff y^2)=e^(2x+3y)(6-36x+36y+72x^2-54x y+27y^2)\
    (diff^2 f)/(diff x diff y)=e^(2x+3y)(-6+36x-6y+48x^2-36x y+18y^2)\
    G=mat(...)\
    G(0,0)=mat(16, -6;-6, 6)\
    delta_1 = 16 > 0; delta_2=60>0=> (0,0) "локальный минимум"\
    G(-1/4, -1/2)=e^(-2)mat(14, -9;-9,1.5)\
    delta_1 =14e^(-2)>0; delta_2=-60e^(-4)<0 => (-1/4, -1/2) "не экстремум"
  $
]
#pagebreak()

#problem(name: 2)[
  Найдите $(d y)/(d x)$ и $(d^2 y)/(d x^2)$, если $x^3+4y^3-3y x^2=2$.
]
#solution[
  $
    x^3+4y^3-3y x^2=2 | d/(d x)\
    3x^2 + 12y^2 dot (d y)/(d x)-3((d y)/(d x) dot x^2 + 2 x y)=0\
    (d y)/(d x)=(x(2y-x))/(4y^2-x^2) | d/(d x)\
    (d^2 y)/(d x^2)=(2(x^3+x^2y-4y^3))/((4y^2-x^2)^2)
  $
]
#pagebreak()

#problem(name: 3)[
  Найдите $(d y)/(d x)$ и $(d^2 y)/(d x^2)$, если 
  $
    cases(x=ln(t + sqrt(1+t^2)),y=1/sqrt(1+t^2))
  $
]
#solution[
$
  (d x)/(d t)=1/sqrt(1+t^2)\
  (d y)/(d t)=-(t)/((1+t)^(3/2))\
  => (d y)/(d x)=-(t)/(1+t^2)\
  (d^2 y)/(d x^2)=((d^2 y)/(d t^2) dot (d x)/(d t)- (d y)/(d t) dot (d^2 x)/(d t^2))/((d x)/(d t))^3\
  (d^2 x)/(d t^2)=-t/((1+t^2)^(3/2))\
  (d^2 y)/(d t^2)=-(1 -2t^2)/((1+t^2)^(5/2))\
  => (d^2 y)/(d x^2)=(1-t^2)/((1+t^2)^(3/2))
$
]
#pagebreak()

#problem(name: 4)[
Найдите $(diff z)/(diff x), (diff z)/(diff y), (diff^2 z)/(diff x diff y)$, если 
$
  a) space x+y+z=cos(x y z); space b) space x^y + y^z =3; space c) space x=u^2-v^2, y=u v,z=u^2 v.
$
]
#solution[
1.
$
  x+y+z=cos(x y z) | (diff)/(diff x)\
  1 + (diff z)/(diff x)=-sin(x y z) dot (y z+ x y dot (diff z)/(diff x))\
  (diff z)/(diff x)=(-1-y z sin(x y z))/(1+x y sin(x y z))\
  x+y+z=cos(x y z) | (diff)/(diff y)\
  1 + (diff z)/(diff y)=-sin(x y z) dot (x z+ x y dot (diff z)/(diff y))\
  (diff z)/(diff y)=(-1-x z sin(x y z))/(1+x y sin(x y z))\
  (diff z)/(diff x)=(-1-y z sin(x y z))/(1+x y sin(x y z)) | (diff)/(diff y)\
  (diff^2 z)/(diff x diff y)=(z sin(x y z)(2+ x y z cos(x y z)))/(1+x y sin(x y z))^2
$
2.
$
  x^y + y^z =3 | (diff)/(diff x)\
  y x^(y-1)+y^z dot ln y dot (diff z)/(diff x)=0\
  (diff z)/(diff x)=-(y x^(y-1))/(y^z dot ln y)\
  x^y + y^z =3 | (diff)/(diff y)\
  x^y ln x+z y^(z-1)+y^z ln y dot (diff z)/(diff y)=0\
  (diff z)/(diff y)=-(x^y ln x+z y^(z-1))/(y^z ln y)\
  (diff z)/(diff x)=-(y x^(y-1))/(y^z dot ln y) | (diff)/(diff y)\
  (diff^2 z)/(diff x diff y)=(x^(y-1)(y ln x ln y - z - 1))/(y^z (ln y)^2)
$
]
#pagebreak()

#problem(name: 5)[
Найдите первый и второй дифференциалы функции $z(x, y),$ заданной неявно 
$
  a) space x^2+z x+z^2+y=0; space b) space x=e^(u + v), y=e^(u - v),z=u^2+v^2.
$
]
#solution[
1.
$
  J=mat(2x+z,1,x+2z) =>\
  d z = -(2x+z)/(x+2z)d x -1/(x+2z)d y\
  d^2 z=-(3z d x^2 -3x(-(2x+z)/(x+2z)d x-1/(x+2z)d y)d x)/((x+2z)^2)+(d x d y+2(-(2x+z)/(x+2z)d x-1/(x+2z)d y)d y)/(x+2z)^2\
  d^2z=(2((2x+z)^2-(x+2z)^2))/(x+2z)^3 d x^2+(4(2x+z))/(x+2z)^3 d x d y+2/(x+2z)^3 d y^2
$
]