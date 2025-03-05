#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 16"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
  Найдите $display((diff^3 f)/(diff x diff y diff z))$, если $f(x,y,z)=sin(x y +z^2)$.
]
#solution[
  $
  f_z^prime = cos(x y + z^2) dot 2z\
  f_(z y)^(prime prime) = -2z dot sin(x y + z^2) dot x\
  f_(z y x)^(prime prime prime) = -2z dot sin(x y + z^2) - 2x y z dot cos(x y + z^2)
  $
]
#answer[
  $
    -2z dot sin(x y + z^2) - 2x y z dot cos(x y + z^2)
  $
]
#pagebreak()
#problem(name: 2)[
  Найдите дифференциалы $dif f$ и $dif^2 f$ функций
  $
    а) space f(x,y) = x^2+y^2; space б) space f(x, y)=x^y+y^x; space в) space f(x,y)=sqrt(x^2+y^2).
  $
]
#solution[
  1. $dif(x^2+y^2)=d(x^2)+d(y^2)=2x d x +2y d y$\
  #h(16pt) $d(2x d x +2y d y)=d(2x d x)+d(2y d y)=2 d x + 2 d y$\

  2. $f_x^prime =x^(y - 1) y + y^x dot ln(y); f_y^prime=ln(x) dot x^y + x y^(x-1)=> J_f=mat(x^(y - 1) y + y^x dot ln(y), ln(x) dot x^y + x y^(x-1))\ 
  f_(x x)^(prime prime)=x^(y-2)y^2-x^(y-2)y+ln(y)^2 dot y^x; f_(x y)^(prime prime)=x^(y-1)y dot ln(x)+x^(y-1)+x y^(x-1) dot ln(y)+y^(x-1)\
  f_(y y)^(prime prime)=ln(x)^2 dot x^y+x^2y^(x-2)-x y^(x-2)=> J_(f^(prime prime))=mat(x^(y-2)y^2-x^(y-2)y+ln(y)^2 dot y^x, x^(y-1)y dot ln(x)+x^(y-1)+x y^(x-1) dot ln(y)+y^(x-1);x^(y-1)y dot ln(x)+x^(y-1)+x y^(x-1) dot ln(y)+y^(x-1), ln(x)^2 dot x^y+x^2y^(x-2)-x y^(x-2))$\
  3. $f_x^prime = x/(sqrt(x^2+y^2)); f_y^prime=y/(sqrt(x^2+y^2))=> J_f=mat(x/(sqrt(x^2+y^2)), y/(sqrt(x^2+y^2)))\
    f_(x x)^(prime prime)=y^2/(sqrt(x^2+y^2)(x^2+y^2)); f_(x y)^(prime prime)=-(x y)/((x^2+y^2)sqrt(x^2+y^2)); f_(y y)^(prime prime)=x^2/(sqrt(x^2+y^2)(x^2+y^2))=> J_(f^(prime prime))=mat(y^2/(sqrt(x^2+y^2)(x^2+y^2)),-(x y)/((x^2+y^2)sqrt(x^2+y^2));-(x y)/((x^2+y^2)sqrt(x^2+y^2)),x^2/(sqrt(x^2+y^2)(x^2+y^2)))$
]
#pagebreak()

#problem(name: 3)[
  
]