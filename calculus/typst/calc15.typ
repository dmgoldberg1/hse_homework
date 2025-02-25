#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 15"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: "1")[
  Возможно ли доопределить следующие функции в точке (0, 0) до
непрерывной функции:
$
  а) space f(x,y)=x^2 ln (x^2 + y^2); space б)  space f(x,y)=(x^2+y)/(sqrt(x^2+y^2))
$
]
#solution[
а) $display(lim_(x arrow 0 \ y arrow 0) x^2 ln (x^2 + y^2)=lim_(r arrow 0) r^2 cos^2 phi dot 2 ln r=0 => "можно доопределить нулем")$\
б) $display(lim_(x arrow 0 \ y = x) f(x,y)= x/abs(x)="1;-1")$\
#h(12pt) $display(lim_(x =y \ y arrow 0) f(x,y)= y^2/abs(y)=0) => $ общего предела не существует, значит доопределить нельзя
]
#answer[
  да, нет
]
#pagebreak()

#problem(name: "2")[
Найдтите матрицы Якоби отображений
$
  а) space x=u cos v,y=u sin v; space б) space x=u v w, y=u v - u v w, z =v - u v
$
]
#solution[
  а) $derivative(x,u)=cos v; derivative(x, v)=-u sin v; derivative(y, u)=sin v; derivative(y,v)=u cos v =>$
  $
    mat(cos v, -u sin v;sin v, u cos v)-"матрица Якоби"
  $
б) $derivative(x, u)=v w; derivative(x, v)=u w; derivative(x, w)=u v;derivative(y, u)=v-v w; derivative(y, v)=u - u w;derivative(y, w)=-u v; derivative(z,u)=-v; derivative(z, v)=1-u; derivative(z, w)=0=>$
$
  mat(v w, u w, u v;v-v w,u-u w,-u v;-v,1-u,0)-"матрица Якоби"
$
]
#answer[
  $
    mat(cos v, -u sin v;sin v, u cos v)
  $
  $
    mat(v w, u w, u v;v-v w,u-u w,-u v;-v,1-u,0)
  $
]
#pagebreak()

#problem(name: 3)[
  Найдите все частные производные 1-го и 2-го порядка у функций
$
  а) space f(x,y)=ln(x+y^2); space б) space f(x,y,z)=sin(x y +z^2)
$
]
#solution[
а) $f prime_x=1/(x+y^2);f prime_y=(2y)/(x+y^2); f prime prime_(x x)=-1/(x+y^2)^2;f prime prime_(x y)=-(2y)/(x+y^2)^2; f prime prime_(y y)=(2x-2y^2)/(x+y^2)^2$. По теореме Юнга оставшиеся смешанная производная уже посчитана.\

б) $f prime_x=cos(x y + z^2)y; f prime_y=cos(x y + z^2)x; f prime_z=2z dot cos(x y + z^2); f prime prime_(x x)=-y^2 dot sin(x y + z^2);f prime prime_(x y)=-x y dot sin(x y + z^2)+cos(x y + z^2);f prime prime_(x z)=-2y z dot sin(x y + z^2); f prime prime_(y y)=-x^2 dot sin(x y + z^2); f prime prime_(y z)=-2x z dot sin(x y + z^2); f prime prime_(z z)=2cos(x y + z^2)-4z^2 dot sin(x y + z^2).$ По теореме Юнга оставшиеся смешанные производные уже посчитаны.
]
#pagebreak()

#problem(name: 4)[
Найдите
$
  (diff^3 f)/(diff x^2 diff y), space "если" f(x,y)=x ln(x y)
$
]
#solution[

$
  f prime_y=x/y; f prime prime_(y x)=1/y; f prime prime prime_(y x x)=0
$
]
#answer[
  0
]