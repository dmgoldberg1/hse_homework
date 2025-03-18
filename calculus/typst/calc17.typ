#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 17"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Пусть $u=f(x y z)$. Покажите, что $(diff^3 u)/(diff x diff y diff z)=g(x y z)$ и найдите $g$.
]
#solution[
$
  (diff u)/(diff z)=f^prime (x y z) dot x y\
  (diff^2 u)/(diff y diff z)=f^(prime prime)(x y z) dot x z dot x y + f^prime (x y z) dot x =f^(prime prime)(x y z) dot x^2y z + f^prime (x y z) dot x\
  (diff^3 u)/(diff x diff y diff z)=f^(prime prime prime) (x y z) dot y z dot x^2 y z + 2x y z dot f^(prime prime) (x y z)+f^(prime prime) (x y z) dot x y z + f^prime (x y z)=\
  =f^(prime prime prime) (x y z) dot x^2 y^2 z^2 + 3x y z dot f^(prime prime) (x y z)+f^prime (x y z)=g(x y z)
$
]
#answer[
$
  g(x y z)=f^(prime prime prime) (x y z) dot x^2 y^2 z^2 + 3x y z dot f^(prime prime) (x y z)+f^prime (x y z)
$
]
#pagebreak()

#problem(name: 2)[
Найдите матрицу Якоби отображения $(p(u,v,w),q(u,v,w),r(u,v,w))$, если $p=x y,q=x/y,r=arctan x/y;x=u^2-w^2,y=u^2-v^2$.
]
#solution[
  Найдем $J_1-$ матрицу Якоби отображения $(u,v,w) arrow (x,y)$
  $
    (diff x)/(diff u)=2u;(diff x)/(diff v)=0;(diff x)/(diff w)=-2w\
    (diff y)/(diff u)=2u;(diff y)/(diff v)=-2v;(diff y)/(diff w)=0 =>\
    J_1=mat(2u,0,-2w;2u,-2v,0)
  $
Найдем $J_2-$ матрицу Якоби отображения $(x,y) arrow (p,q,r)$\
$
  (diff p)/(diff x)=y;(diff p)/(diff y)=x;\
  (diff q)/(diff x)=1/y;(diff q)/(diff y)=-x/y^2;\
  (diff r)/(diff x)=y/(y^2+x^2);(diff r)/(diff y)=-(x)/(y^2+x^2) =>\
  J_2=display(mat(y,x;1/y,-x/y^2;y/(y^2+x^2),-x/(y^2+x^2)))\
  => J = J_2 dot J_1
$
]
#answer[
$J_2 dot J_1$
]
#pagebreak()

#problem(name: 3)[
Найдите дифференциалы $d f$ и $d^2 f$ для функций а) $f(x,y,z)=phi(x,x y, x y z); space б) space f(x,y,z)=phi(x^2+y^2,y^2+z^2,z^2+x^2)$.
]
#solution[
1. Пусть $u=x,v=x y, w=x y z$. Найдем матрицу Якоби для отображения $(x,y,z) arrow (u,v,w)$
$
  (diff u)/(diff x) = 1;(diff u)/(diff y)=0;(diff u)/(diff z)=0;\
  (diff v)/(diff x)=y;(diff v)/(diff y)=x;(diff v)/(diff z)=0;\
  (diff w)/(diff x)=y z;(diff w)/(diff y)=x z;(diff w)/(diff z)=x y =>\
  J_1=mat(1,0,0;y,x,0;y z,x z,x y)
$
  Найдём матрицу Якоби для отображения $(u,v,w) arrow f$
  $
    J_2=mat((diff phi)/(diff u),(diff phi)/(diff v),(diff phi)/(diff w)) =>\
    => J = J_2 dot J_1=mat((diff phi)/(diff u)+(diff phi)/(diff v) dot y+(diff phi)/(diff w) dot y z,(diff phi)/(diff v) dot x+(diff phi)/(diff w) dot x z, (diff phi)/(diff w) dot x y)
  $
2. Пусть $u=x^2+y^2,v=y^2+z^2,w=z^2+x^2$. Найдем матрицу Якоби для отображения $(x,y,z) arrow (u,v,w)$
$
  (diff u)/(diff x)=2x;(diff u)/(diff y)=2y;(diff u)/(diff z)=0\
  (diff v)/(diff x)=0;(diff v)/(diff y)=2y;(diff v)/(diff z)=2z\
  (diff w)/(diff x)=2x;(diff w)/(diff y)=0;(diff w)/(diff z)=2z =>\
  J_1=mat(2x,2y,0;0,2y,2z;2x,0,2z)
$
Найдём матрицу Якоби для отображения $(u,v,w) arrow f$
  $
    J_2=mat((diff phi)/(diff u),(diff phi)/(diff v),(diff phi)/(diff w)) =>\
    J=J_2 dot J_1=mat((diff phi)/(diff u) dot 2x+(diff phi)/(diff w) dot 2x,(diff phi)/(diff u) dot 2y+(diff phi)/(diff v) dot 2y, (diff phi)/(diff v) dot 2z+(diff phi)/(diff w) dot 2z)
  $
]