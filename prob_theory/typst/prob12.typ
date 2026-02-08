#import "../../exam_template.typ": *
#let title = "ДЗ 12"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория вероятностей"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Случайным образом раскладывают 5 шаров среди которых 3 красных и 2 белых по двум коробкам. $xi-$ число красных шаров в первой коробке, $eta-$ число шаров во второй коробке. Вычислите $EE[xi|eta=2]$ и случайные величины $EE[xi|eta],PP[xi=2|eta]$.
]
#solution[
Так как $xi$ и $eta$ дискретные случайные величины, то
$
  EE[xi|eta=2]=sum_(x=0)^3 x dot PP(xi=x|eta=2)=sum_(x=0)^3 x dot (PP(xi=x sect eta=2))/(PP(eta=2))=sum_(x=0)^3 x dot (1/12)/(1/4)=sum_(x=0)^3 x dot 1/3=2\
  EE[xi|eta]=cases(3"," eta=0, 2.5"," eta=1, 2"," eta=2,1"," eta=3, 0.5"," eta=4, 0"," eta=5)\
  PP[xi=2|eta]=cases(0"," eta=0, 1/2"," eta=1, 1/3"," eta=2,1/3"," eta=3, 0"," eta=4, 0"," eta=5)
$
]
#answer[
в решении
]
#pagebreak()

#problem(name: 2)[
Пусть случайные величины $xi, eta$ независимы и распределены экспоненциально с параметром 1. Найдите условную плотность $rho_(xi|xi+eta),EE[xi|xi+eta],EE[xi|xi+eta=x]$.
]
#solution[
$
  rho_(xi, eta) (u, v)= e^(-u) dot e^(-v) dot II{(u, v) in [0, +infinity)}\
 "Пусть" t_1=xi, t_2=xi + eta\
 abs(J)=1\
 xi = t_1, eta = t_2-t_1\
 rho_(t_1, t_2) (x, y)=rho_(xi, eta)(x, y - x)=e^(-x) dot e^(-(y-x))=e^(-y)=rho_(xi|xi+eta) (x, y), 0<x < y\
 EE[xi|xi+eta]=EE[eta|xi+eta]\
 2EE[xi|xi+eta]=EE[xi+eta|xi+eta]=xi+eta\
 =>EE[xi|xi+eta]=(xi+eta)/2\
 => EE[xi|xi+eta=x]=x/2\
$
]
#answer[
$
  rho_(xi|xi+eta) (x, y) = e^(-y), 0 < x<y\
  EE[xi|xi+eta]=(xi+eta)/2\
  EE[xi|xi+eta=x]=x/2
$
]
#pagebreak()
#problem(name: 3)[
Пусть $xi$ случайная величина. Найдите $EE[sin^2 xi|cos(2xi)]$.
]
#solution[
$
 EE[sin^2xi|cos(2xi)]=EE[1/2(1-cos(2xi))|cos(2xi)]=1/2(EE[1|cos(2xi)]-EE[cos(2xi)|cos(2xi)])=1/2(1-cos(2xi))=sin^2xi
$
]
#answer[
$
  sin^2xi
$
]
#pagebreak()
#problem(name: 4)[
Пусть $xi_1,...,xi_n$ независимы и имеют равномерное распределение на отрезке $[0,1]$. Пусть $eta=min_i {xi_i},zeta=max_i {xi_i}$. Найдите $EE[xi_1|eta], EE[xi_1|zeta].$
]
#solution[
  
]