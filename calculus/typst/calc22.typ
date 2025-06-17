#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 22"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 21.4)[
$
  d/(d x) integral_(sin x)^(cos x) cos(pi t^2)=d/(d x) F(cos x) - F(sin x) = F^prime (cos x) dot (- sin x) - F^prime (sin x) dot cos x=\
  =-cos(pi cos^2 x) sin x - cos(pi sin^2 x) cos x\
  lim_(x arrow +infinity) (integral_0^x e^u^2 d u)^2/(integral_0^x e^(2u^2) d u)=lim_(x arrow +infinity) ((integral_0^x e^u^2 d u)^2)^prime/((integral_0^x e^(2u^2) d u))^prime\
  d/(d x) (integral_0^x e^u^2 d u)^2=2 integral_0^x e^u^2 d u dot d/(d x) integral_0^x e^u^2 d u=2 integral_0^x e^u^2 d u dot d/(d x)F(x) - F(0)=\
  =2 integral_0^x e^u^2 d u dot (e^x^2-1)\
  d/( d x) integral_0^x e^(2u^2) d u=e^(2x^2) - 1\
  =>lim_(x arrow +infinity) ((integral_0^x e^u^2 d u)^2)^prime/((integral_0^x e^(2u^2) d u))^prime=lim_(x arrow +infinity) (2 integral_0^x e^u^2 d u dot (e^x^2-1))/(e^(2x^2) - 1)=lim_(x arrow +infinity) (2 integral_0^x e^u^2 d u dot e^x^2)/(e^(2x^2))=\
  =lim_(x arrow +infinity) (2 integral_0^x e^u^2 d u)/(e^(x^2))=lim_(x arrow +infinity) (2 e^x^2)/(2 x e^x^2)=0
$
]
#problem(name: 21.5)[
$
  integral_0^infinity (e^(-a x))/(1+x^2) d x=lim_(x arrow +infinity) integral_0^x (e^(-a t))/(1+t^2) d t <= lim_(x arrow +infinity) integral_0^x e^(-a t) d t=lim_(x arrow +infinity) e^(-a x) - 1-"сходится при" a >=0,\ "расходится при" a <0\
  integral_0^infinity (d x)/(sqrt(e^x - 1)) = |t=sqrt(e^x-1),2 t d t=e^x d x,d x =(2 t d t)/(t^2 + 1)|=2 integral_0^infinity (d t)/(1+t^2)=pi-"сходится"\
  integral_0^infinity (arctan alpha x - arctan beta x)/x d x=integral_0^1 (arctan alpha x - arctan beta x)/x d x+integral_1^infinity (arctan alpha x - arctan beta x)/x d x=\
  =lim_(x arrow 0+0) integral_x^1 (arctan alpha t - arctan beta t)/t d t+lim_(x arrow +infinity) integral_1^x (arctan alpha t - arctan beta t)/t d t\
  lim_(x arrow 0+0) integral_x^1 (arctan alpha t - arctan beta t)/t d t tilde lim_(x arrow 0+0) integral_x^1 (alpha t -  beta t)/t d t=lim_(x arrow 0+0) integral_x^1 (alpha -  beta) d t=c\
  lim_(x arrow +infinity) integral_1^x (arctan alpha t - arctan beta t)/t d t=lim_(x arrow +infinity) integral_1^x (-arctan 1/(alpha t) + arctan 1/(beta t))/t d t tilde lim_(x arrow +infinity) integral_1^x (-1/( alpha t) + 1/(beta t))/t d t=\
  =lim_(x arrow +infinity) integral_1^x (beta  - alpha)/(alpha beta t^2) d t=c=>"весь интеграл сходится"\
  integral_0^infinity (x^(5/2) d x)/(1+x^2)^2=integral_0^1 (x^(5/2) d x)/(1+x^2)^2+integral_1^infinity (x^(5/2) d x)/(1+x^2)^2=\
  =lim_(x arrow 0+) integral_x^1 (t^(5/2) d t)/(1+t^2)^2+lim_(x arrow infinity) integral_1^x (t^(5/2) d t)/(1+t^2)^2\
  lim_(x arrow 0+) integral_x^1 (t^(5/2) d t)/(1+t^2)^2 tilde lim_(x arrow 0+) integral_x^1 t^(5/2 d t)-"сходится"\
  
$
$
  lim_(x arrow infinity) integral_1^x (t^(5/2) d t)/(1+t^2)^2 <= lim_(x arrow infinity) integral_1^x (t^(5/2) d t)/(t^4)=lim_(x arrow infinity) integral_1^x (d t)/(t^(3/2))-"сходится, значит весь интеграл сходится"\
  integral_1^infinity ln(1+sin 1/x) d x\
  "Так как синус стремится к нулю, логарифм стремится к нулю, значит можем применить эквивалентность"\
  =>integral_1^infinity ln(1+sin 1/x) d x tilde integral_1^infinity ln(1+1/x) d x tilde integral_1^infinity 1/x d x-"расходится"\
  integral_2^infinity (d x)/(x^2+root(3,x^4+1)) tilde integral_2^infinity (d x)/(x^2+x^(4/3)) tilde integral_2^infinity (d x)/(x^2)-"сходится"\
  integral_0^infinity (ln(1+x))/(x^p) d x= integral_0^1 (ln(1+x))/(x^p) d x+integral_1^infinity (ln(1+x))/(x^p) d x=\
  =lim_(x arrow 0+) integral_x^1 (ln(1+t))/(t^p) d t + lim_(x arrow infinity+) integral_1^x (ln(1+t))/(t^p) d t\
  lim_(x arrow 0+) integral_x^1 (ln(1+t))/(t^p) d t tilde lim_(x arrow 0+) integral_x^1 1/(t^(p - 1)) d t-"сходится при " p<2\
  lim_(x arrow infinity+) integral_1^x (ln(1+t))/(t^p) d t <= lim_(x arrow infinity+) integral_1^x (t)/(t^p) = lim_(x arrow infinity+) integral_1^x (1)/(t^(p-1))-"сходится при "p>1\
  "значит интеграл сходится при" 1<p<2\
  
$
]