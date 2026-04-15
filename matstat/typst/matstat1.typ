#import "../../exam_template.typ": *
#let title = "ДЗ 1"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математическая статистика 1"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
В онлайн-сервисе изучают поведение пользователей после просмот-
ра контента. Пусть для каждого пользователя фиксируют случайную величину $X_i in (0, 1)$, которая интерпретируется как доля оставшегося интереса. Предполагается, что $X_i tilde "Beta"(theta, 1)$, где $theta >0-$ некоторый неизвестный параметр. Плотность бета-распределения $"Beta"(theta, 1)$
$
  p(x)=theta x^(theta - 1), x in [0, 1].
$
Для исследования были собраны данные по $n >= 1$ независимым пользователям,
то есть получена выборка $X_1, X_2,...,X_n$. Компания оценивает неизвестный
параметр $theta$ следующим образом
$
  hat(theta)_n (bold(X)):= -n/(sum_(i=1)^n ln X_i)
$
1. Найдите функцию распределения и плотность распределения случайной величины $Y_1 := -ln X_i$
2. Является ли $hat(theta)_n (bold(X))$ несмещенной оценкой $theta$? Является ли $hat(theta)_n (bold(X))$ асимптотически несмещенной?
3. Посчитайте дисперсию $hat(theta)_n (bold(X))$
4. Является ли $hat(theta)_n (bold(X))$ состоятельной оценкой $theta$?
]
#solution[
1. 
$
  F_(Y_1)(x) = PP(Y_1 <=x)=PP(-ln X_1 <= x)=PP(e^(-ln X_1) <= e^x)=PP(1/X_1 <= e^x)=PP(X_1 >= e^(-x))=PP(X_1>e^(-x))=\
  =1-PP(X_1 <= e^(-x))=1-F_(X_1)(e^(-x))=1-e^(-theta x) dot II{x >= 0}.\
  p_(Y_1) (x) = (F_(Y_1)(x))^prime=e^(-theta x) dot theta dot II{x > 0}
$
2.
$
  b_n (hat(theta)_n)=EE[hat(theta)_n] - theta=EE[n/(sum_(i=1)^n -ln X_i)] - theta=EE[n/(sum_(i=1)^n Y_1)] - theta=n EE[1/(G_n)]-theta(G_n tilde G(n, 1/theta))=\
  =n integral_0^infinity 1/x dot ((1/theta)^n x^(n-1) e^(-x/theta))/(G(n)) d x - theta=n/(theta(n-1)) -theta\
  =>"оценка смещенная"\
  lim_(n arrow infinity) b_n (hat(theta)_n) =theta -theta=0=>"оценка явлется асимптотически несмещенной"
$
3.
$
  EE[(n/(sum_(i=1)^n -ln X_i))^2]=n^2 EE[1/(G_n^2)]=n^2integral_0^infinity 1/x^2 dot ((1/theta)^n x^(n-1) e^(-x/theta))/(G(n)) d x=n^2/(theta^2(n-1)(n-2))\
  =>"Var"(hat(theta)_n (bold(X)))=n^2/(theta^2(n-1)(n-2))-(n/(theta(n-1)))^2=n^2/(theta^2(n-1)^2(n-2))
$
4.
$
  "Var"(hat(theta)_n (bold(X))) arrow 0, n arrow infinity => "оценка состоятельная из достаточного условия состоятельности"
$
]
#answer[
в решении
]
#pagebreak()
#problem(name: 2)[
Пусть $X_1,...,X_n$ из равномерного распределения $U([a, b]), a < b$, $a$ и $b$ неизвестны. Пусть $X_((1))=min X_i$ и $X_((n))=max X_i$. Пусть для длины отрезка $theta=b-a$ построена оценка $hat(theta)_n (bold(X))=X_((n))-X_((1))$.
1. Является ли $hat(theta)_n (bold(X))$ несмещенной оценкой $theta$? Является ли $hat(theta)_n (bold(X))$ асимптотически несмещенной?
2. Найти функцию совместного распределения и плотность совместного распределения статистик $X_((1))$ и $X_((n))$
3. Посчитайте ковариацию порядковых статистик $X_((1))$ и $X_((n))$
4. Посчитайте дисперсию $hat(theta)_n (bold(X))$
5. Является ли $hat(theta)_n (bold(X))$ состоятельной оценкой $theta$?
]
#solution[
1.
$
  F_(X_((1)))(t)= PP(X_((1)) <= t)=1-PP(X_((1)) > t)=1- product_(i=1)^n PP(X_i > t)=1-product_(i=1)^n 1-PP(X_i <= t)=1-product_(i=1)^n 1-F_(X_i) (t)=\
  =1-product_(i=1)^n 1 - (t-a)/(b-a) dot II{a<=t<=b}=1- (1-(t-a)/(b-a) dot II{a<=t<=b})^n\
  rho_(X_((1))) (x) = (F_(X_((1)))(x))^prime = n/(b-a)^n (b-x)^(n-1), x in [a, b]\
  F_(X_((n)))(t) = PP(X_((n)) <= t)=product_(i=1)^n PP(X_(1) <=t) =((t-a)/(b-a))^n, t in [a, b]\
  rho_(X_((n))) (x)= (F_(X_((n))) (x))^prime=n/(b-a)^n (x-a)^(n-1), x in [a, b]\
  b_n (hat(theta)_n)=EE[hat(theta)_n (bold(X))]-theta =EE[X_((n))]-EE[X_((1))] - theta=integral_a^b x rho_(X_((n))) (x) d x - integral_a^b x rho_(X_((1))) (x) - theta=\
  =a+n/(n+1)(b-a) - (b-n/(n+1)(b-a)) -theta=(n-1)/(n+1)(b-a) - theta\
  =>"оценка смещенная"\
  b_n (hat(theta)_n)=(n-1)/(n+1)theta - theta arrow 0,n arrow infinity\
  =>"оценка асимптотически несмещенная"
$
2.
$
  F_((X_((1)), X_((n)))) (x, y) = PP(X_((1)) <= x, X_((n)) <=y)=PP(X_((n)) <=y)-PP(X_((1)) >x, X_((n)) <=y)=\
  =F_(X_((n)))(y)-(PP(x < X_1 <=y))^n=F_(X_((n)))(y)-(F_(X_1) (y)-F_(X_1)(x))^n=((y-a)/(b-a))^n-((y-x)/(b-a))^n\
  rho_((X_((1)), X_((n)))) (x, y) = (F_((X_((1)), X_((n)))) (x, y))_(x y)^(prime prime)=(n(n-1))/(b-a)^n (y-x)^(n-2), a<=x<=y<=b
$
3.
$
  "Cov"(X_((1)), X_((n)))=-EE[X_((1))] EE[X_((n))] + EE[X_((1)) X_((n))]\
  EE[X_((1)) X_((n))]=integral_a^b integral_a^y x y (n(n-1))/(b-a)^n (y-x)^(n-2) d x d y=a b + (b-a)^2/(n+2)\
  EE[X_((1))]=b-n/(n+1)(b-a)\
  EE[X_((n))]=a+n/(n+1)(b-a)\
  =>"Cov"(X_((1)), X_((n)))=(b-a)^2/((n+1)^2 (n+2))
$
4.
$
  "Var"[hat(theta)_n (bold(X))]=EE[(hat(theta)_n (bold(X))^2)]-EE[hat(theta)_n (bold(X))]^2=integral_a^b x^2 rho_(X_((n))) (x) d x -((n-1)/(n+1)(b-a))^2=\
  =(2(n-1))/((n+1)^2(n+2))(b-a)^2
$
5.
$
  "Var"[hat(theta)_n (bold(X))] arrow 0, n arrow infinity\
  b_n (hat(theta)_n) arrow 0, n arrow infinity\
  =>"оценка состоятельная из достаточного условия состоятельности"
$

]