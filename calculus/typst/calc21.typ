#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 21"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: "19.5")[
  $
    lim_(n arrow infinity) sum_(k=1)^n k/(k^2+n^2)=lim_(n arrow infinity) sum_(k=1)^n (k/n)/((k/n)^2+1) dot 1/n=|x_k=k/n|=lim_(n arrow infinity) sum_(k=1)^n (x_k)/(x_k^2+1) dot 1/n=\
    =integral_0^1 (x)/(x^2+1) d x=1/2 integral_0^1 1/(x^2+1) d x^2=1/2(ln 2 - ln 1)=1/2 ln 2\
    lim_(n arrow infinity) 1/n^2 sum_(k=1)^n sqrt(k(n-k))=1/n lim_(n arrow infinity) sum_(k=1)^n 1/n sqrt(k(n-k))=1/n lim_(n arrow infinity) sum_(k=1)^n sqrt(k/n (1-k/n))=integral_0^1 sqrt(x(1-x)) d x=\
    =|x=sin^2 t, d x = 2 sin t cos t d t|=integral_0^(pi/2) 2  sin^2 t cos^2 t d t=1/2 integral_0^(pi/2) sin^2 2 t d t=1/2 integral_0^(pi/2) (1-cos 4 t)/2=\
    =1/2 (t/2 - (sin 4t)/4)|_0^(pi/2)=pi/8 
  $
]
#problem(name:  19.6)[
  $
    integral_0^(2pi) sin^4 x d x=integral_0^(2pi) (sin^2x)^2 d x = integral_0^(2pi) ((1 - cos 2 x)/2)^2 d x = 1/4integral_0^(2pi) 1 - 2 cos 2 x d + cos^2 2x d x=1/4 (2 pi  + 0 + pi)=(3 pi)/4\
    integral_0^(2 pi) (d x)/(4+cos^2 x) = 2integral_0^(pi)  (d x)/(4+cos^2 x)=2(integral_0^(pi/2) (d x)/(4+cos^2 x)+ integral_(pi/2)^pi (d x)/(4+cos^2 x))=|t=tg x, d x = (d t)/(1+t^2),cos^2 x =\
    =1/(1+t^2)|=2(integral_0^infinity ( d t)/(4t^2 +5)+integral_(-infinity)^0 ( d t)/(4t^2+5))=2 integral_(-infinity)^(infinity)  (d t)/(4t^2+5)=pi/sqrt(5)\
    integral_0^(sqrt(3)) x arctan x d x= 1/2integral_0^(sqrt(3)) arctan x d x^2=1/2((arctan x dot x^2)|_0^sqrt(3) - integral_0^(sqrt(3)) (x^2)/(1+x^2))=1/2((arctan x dot x^2)|_0^sqrt(3)-\
    -(x - arctan(x))|_0^sqrt(3))=1/2(pi-sqrt(3)+pi/3)=(2pi)/3-sqrt(3)/2\

  $
]
#problem(name: "20.7")[
  
    #image("image-1.png")
  $
    a sin x = a cos x => x=pi/4+pi k\
    =>S=integral_0^(2pi) a sin x - a cos x d x=a (integral_0^(pi/4)  sin x -  cos x d x+integral_(pi/4)^((5pi)/4)  sin x -  cos x d x+\
    +integral_((5pi)/4)^(2pi)  sin x -  cos x d x)=4 a sqrt(2)
  $
]
#pagebreak()
#problem(name: 20.8)[
  $
    (x,y,z)=(3,3,2)=>t=1\
    =>L=integral_0^1 sqrt(x(t)^prime^2+y(t)^prime^2+z(t)^prime^2) d t=integral_0^1 sqrt(9+36t^2+36t^4) d t=integral_0^1 3(1+2t^2)=5
  $
]
#problem(name: 20.9)[
1.
$
  y=0=>x=0\
  =>V=pi integral_0^a x e^(2x) d x\
  integral x e^(2x) d x=|u=x,d v =e^(2 x) d x|= x e^(2x)/2-1/2 integral e^(2x) d x=x (e^(2x))/2-1/4 e^(2x) + C\
  => V=pi((2a - 1)/4 e^(2a) + 1/4)
$
2.
$
  y=0=>x=0;pi^2\
  =>V=pi integral_0^(pi^2) (sin sqrt(x))^2 d x =pi/2 integral_0^(pi^2) 1-cos(2sqrt(x)) d x\
  integral cos(2 sqrt(x)) d x=|u=sqrt(x),d u = 1/(2sqrt(x)) d x, d x = 2 u d u|=2integral u cos(2 u) d u=u sin(2 u) +1/2 cos(2 u)+C=\
  =sqrt(x) sin (2sqrt(x))+1/2 cos(2sqrt(x))+C\
  => V =pi/2 integral_0^(pi^2) 1-cos(2sqrt(x)) d x=(pi^3)/2-pi/2 integral_0^(pi^2) cos(2sqrt(x)) d x=(pi^3)/2-0=(pi^3)/2
$
]
#problem(name: "20.10")[
1.
$
  S=2 pi integral_(5/4)^(21/4) sqrt(x) dot sqrt(1+1/(4 x)) d x =pi integral_(5/4)^(21/4) sqrt(4x + 1) d x=|u=4x +1,d u = 4 d x|=\
  =pi/4 integral_6^22 sqrt(u) d u=pi/6(22sqrt(22)-6sqrt(6))
$
2.
$
  
$
]