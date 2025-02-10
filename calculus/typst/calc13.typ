#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#let title = "ДЗ 13"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
  Найдите $display(lim_(x arrow 0)lim_(y arrow 0)u), display(lim_(y arrow 0)lim_(x arrow 0)u),display(lim_(x arrow 0 \ y arrow 0) u)$ если:
$
  а) space u=(x^3-y)/(x^3+y); space б) space u=(x y)/(x^2+y^2); space в) space u=(y^2-x^2)/(y^2+x^2); space г) space u=(x^2y^2)/(x^2y^2+(x-y)^2); space д) space u=x+y sin 1/x
$
]
#solution[
1.
$
  (1) space lim_(x arrow 0)lim_(y arrow 0) (x^3-y)/(x^3+y) =1\
  (2) space lim_(y arrow 0)lim_(x arrow 0) (x^3-y)/(x^3+y) =-1\
  (3) space lim_(x arrow 0 \ y arrow 0) (x^3-y)/(x^3+y)\
  lim_(x arrow 0 \ y = x^3) (x^3-y)/(x^3+y)=0\
  lim_(x arrow 0 \ y =x) (x^3-y)/(x^3+y)=-1\
  => " предела не существует"
$
2.
$
(1) space lim_(x arrow 0)lim_(y arrow 0) (x y)/(x^2+y^2)=0\
(2) space lim_(y arrow 0)lim_(x arrow 0) (x y)/(x^2+y^2)=0\
(3) space lim_(x arrow 0 \ y arrow 0) (x y)/(x^2+y^2)\
lim_(x arrow 0 \ y = x) (x y)/(x^2+y^2)=1/2\
lim_(x arrow 0 \ y = 1/2 x) (x y)/(x^2+y^2)=8/5\
=> " предела не существует"
$
3.
$
  (1) space lim_(x arrow 0)lim_(y arrow 0) (y^2-x^2)/(y^2+x^2)=-1\
  (2) space lim_(y arrow 0)lim_(x arrow 0) (y^2-x^2)/(y^2+x^2)=1\
  (3) space lim_(x arrow 0 \ y arrow 0) (y^2-x^2)/(y^2+x^2)\
  lim_(x arrow 0 \ y =x) (y^2-x^2)/(y^2+x^2)=0\
  lim_(x arrow 0 \ y = 1/2x) (y^2-x^2)/(y^2+x^2)=-3/5\
  => " предела не существует"
$
4.
$
  (1) space lim_(x arrow 0)lim_(y arrow 0) (x^2y^2)/(x^2y^2+(x-y)^2)=0\
  (2) space lim_(y arrow 0)lim_(x arrow 0) (x^2y^2)/(x^2y^2+(x-y)^2)=0\
  (3) space lim_(x arrow 0 \ y arrow 0) (x^2y^2)/(x^2y^2+(x-y)^2)\
  lim_(x arrow 0 \ y =x) (x^2y^2)/(x^2y^2+(x-y)^2)=1\
  lim_(x arrow 0 \ y =1/2x) (x^2y^2)/(x^2y^2+(x-y)^2)=0\
  => " предела не существует"
$
5.
$
  (1) space lim_(x arrow 0)lim_(y arrow 0) x+y sin 1/x=0\
  (2) space lim_(y arrow 0)lim_(x arrow 0) x+y sin 1/x=0\
  (3) space lim_(x arrow 0 \ y arrow 0) x+y sin 1/x=lim_(r arrow 0) r cos(phi)+r sin(phi) dot sin(1/(r cos(phi)))=0
$
]
#pagebreak()

#problem[
  Найдите предел функции $f(x,y)=(y-2x^2)/(y-x^2)$ в точке (0, 0) по прямой $x=alpha t,y=beta t, alpha^2 + beta^2 != 0$; докажите, что $lim_(x arrow 0 \ y arrow 0) f(x,y)$ не существует.
]
#solution[
$
  lim_(t arrow 0) (beta t-2alpha^2 t^2)/(beta t-alpha^2 t^2)= lim_(t arrow 0) (beta-2alpha^2 t)/(beta-alpha^2 t)=1\
  lim_(x arrow 0 \ y=x^2 )(y-2x^2)/(y-x^2)=lim_(x arrow 0 \ y=x^2 )(-x^2)/0=-infinity\
  lim_(x arrow 0 \ y=2x^2 )(y-2x^2)/(y-x^2)=lim_(x arrow 0 \ y=2x^2 )(0)/x^2=0\
  => lim_(x arrow 0 \ y arrow 0) f(x,y) " не существует"
$
]
#pagebreak()

#problem[
  Выяснить, является ли в точке (0, 0) функция
$
  u = cases((x y)/(x^2+y^2)", если" x^2+y^2 != 0,
            0", если" x^2+y^2=0)
$
а) непрерывной по $x$; б) непрерывной по $y$; в) непрерывной
]
#solution[
  а) $display(lim_(x arrow 0 \ y=0)(x y)/(x^2+y^2) = 0) => $ непрерывная по $x$\
  б) $display(lim_(x = 0 \ y arrow 0)(x y)/(x^2+y^2) = 0) => $ непрерывная по $y$\
  в) $display(lim_(x arrow 0 \ y = k x)(x y)/(x^2+y^2)=lim_(x arrow 0 \ y = k x)(x^2 k)/(x^2+k^2 x^2)=k/(k^2+1) != u((0, 0))) => $ не является непрерывной
]