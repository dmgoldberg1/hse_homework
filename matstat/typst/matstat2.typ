#import "../../exam_template.typ": *
#let title = "ДЗ 2"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математическая статистика 1"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Пусть $X_1, X_2,...,X_n-$ выборка из двухпараметрического экспоненциального распределения со сдвигом $"Exp"(theta, lambda)$, функция распределения которого
$
  F_theta (x)=(1-e^(-lambda (x-theta))) II{x>=theta}, lambda >0.
$
1. Найдите распределение минимальной порядковой статистики $X_((1))$: посчитайте функцию распределения и плотность распределения
2. Сравните в среднеквадратичном смысле оценки $hat(theta)_1 (bold(X))=overline(X)-1/lambda$ и $hat(theta)_2 (bold(X))=X_((1)) - 1/(lambda n)$ для параметра $theta$.
]
#solution[
1.
$
  F_X_((1))(x) = PP(X_((1)) <= x)= 1 - PP(X_((1)) >x)=1-product_(i=1)^n PP(X_i > x) = 1-product_(i=1)^n 1 -PP(X_i <= x)=\
  =1-product_(i=1)^n 1 -F_(X_i)(x)=1-(1-F_(theta)(x))^n=1-(1-II{x>=theta}+e^(-lambda (x-theta))II{x>=theta})^n=\
  =cases(0"," x < theta,1-e^(-lambda n (x-theta))"," x >=theta)\
  => rho_(X_((1))) (x)=(F_X_((1))(x))^prime=cases(0"," x < theta, lambda n e^(-lambda n (x-theta))"," x>=theta)
$
2.
$
  R(hat(theta)_1 (bold(X)))=b(hat(theta)_1 (bold(X))) + "Var"(hat(theta)_1 (bold(X)))=0+"Var"(hat(theta)_1 (bold(X)))="Var"(overline(X))=1/(n lambda^2)\
  R(hat(theta)_2 (bold(X)))=b(hat(theta)_2 (bold(X))) + "Var"(hat(theta)_2 (bold(X)))=0+"Var"(hat(theta)_2 (bold(X)))="Var"(X_((1)))=1/(n^2 lambda^2)\
  1/(n^2 lambda^2) < 1/(n lambda^2)=>"вторая оценка лучше"
$
]
#pagebreak()
#problem(name: 2)[
Пусть дана выбока $(X_1,...,X_n)$ из стандартного экспоненциального распределения Exp(1). Пусть $X_((n))-$ максимальная порядковая статистика. Докажите, что предельное распределение верхних экстремумов с лог-нормировкой есть распределение Гумбеля, то есть докажите, что для всех $x in RR$ выполнено
$
  lim_(n arrow infinity) PP(X_((n)) - ln n <=x)=G(x),
$
где $G(x)=e^(-e)^(-x)-$ функция распределения Гумбеля.
]
#solution[
Зафиксируем $n$:
$
  PP(X_((n)) - ln n <=x)=product_(i=1)^n PP(X_i - ln n <=x)=product_(i=1)^n PP(X_i <= x + ln n)=product_(i=1)^n F_(X_1) (x+ ln n) = (F_(X_1)(x+ln n))^n=\
  =(1-e^(-x-ln n))^n dot II{x+ln n >=0}\
  => "при фиксированном "x:\
  lim_(n arrow infinity) (1-e^(-x-ln n))^n dot II{x+ln n >=0} = lim_(n arrow infinity) (1- e^(-x)/(e^(ln n)))^n II{x +ln n >=0}=lim_(n arrow infinity) (1- e^(-x)/(n))^n II{x +ln n >=0}=\
  =lim_(n arrow infinity) (1- e^(-x)/(n))^n ("так как начиная с какого-то номера индикатор всегда 1")=\
  =e^(-e^(-x))=G(x)("замечательный предел")
$
]
#answer[
ч.т.д
]
#pagebreak()
#problem(name: 3)[
Количество минут, затраченных пользователями Steam на компьютерные игры, описывается случайной величиной с плотностью
$
  p_theta (x)=theta x^(-(theta+1))II{x>=1},
$
где $theta>0-$ некоторый параметр. Для исследования были собраны данные по $n>=3$ независимым пользователям, то есть получена выборка $X_1,X_2,...,X_n.$ Для параметра $theta$ была предложена следующая оценка
$
  hat(theta)_n (bold(X)) := n/(sum_(i=1)^n ln X_i)
$
1. Найдите распределение случайной величины $Y_1:= ln X_1:$ посчитайте функцию распределения и плотность распределения
2. Является ли $hat(theta)_n (bold(X))$ несмещенной оценкой $theta$? Асимптотически несмещенной?\
3. Является ли $hat(theta)_n (bold(X))$ состоятельной оценкой $theta$? Сильно состоятельной?\
4. Является ли $hat(theta)_n (bold(X))$ асимптотически нормальной оценкой $theta$? В случае положительного ответа предъявите асимптотическую дисперсию.
]
#solution[
1.
$
  F_(Y_1)(x) = PP(Y_1 <= x)=PP(ln X_1 <= x)=PP(X_1 <= e^x)=integral_1^(e^x) theta t^(-(theta+1)) d t=theta integral_1^(e^x) t^(-(theta+1)) d t=1-e^(-theta x)II{x>=0}\
  =>p_(Y_1) (x)=(F_(Y_1)(x))^prime=theta e^(-theta x)II{x>=0} => Y_1 tilde "Exp"(theta)
$
2.
$
  b_n (hat(theta)_n (bold(X)))=EE[hat(theta)_n (bold(X))] - theta=n EE[1/Z_n] - theta(Z_n tilde G(n, theta))=n integral_0^infinity 1/x (theta^n x^(n-1)e^(-theta x))/(n-1)! d x - theta=\
  =(n theta)/(n-1) - theta=theta/(n-1)=>"оценка смещенная"\
  lim_(n arrow infinity) b_n (hat(theta)_n (bold(X)))=lim_(n arrow infinity) theta/(n-1) =0=>"оценка асимптотически несмещенная"
$
3.
$
  EE[(hat(theta)_n (bold(X)))^2]=n^2 integral_0^infinity 1/x^2 (theta^n x^(n-1)e^(-theta x))/(n-1)! d x=(n^2 theta^2)/((n-1)(n-2))\
  =>"Var"(hat(theta)_n (bold(X)))=(n^2 theta^2)/((n-1)(n-2))-(n^2 theta^2)/(n-1)^2=(n^2 theta^2)/((n-1)^2 (n-2)) arrow 0, n arrow infinity\
  =>"оценка состоятельная из достаточного условия состоятельности"\
  (sum_(i=1)^n ln X_i)/n arrow^(a.s.) EE[Y_1]=1/theta ("по УЗБЧ")\
  =>n/(sum_(i=1)^n ln X_i) arrow^(a.s.) theta ("по т. о наследовании сходимости")\
  =>"оценка сильно состоятельная"
$
4.
$
  sqrt(n)((sum_(i=1)^n ln X_i)/n - 1/theta) arrow^(d_theta) cal(N)(0, 1/theta^2) ("по ЦПТ")\
  =>sqrt(n) (g((sum_(i=1)^n ln X_i)/n)-g(1/theta)) arrow^(d_theta) cal(N)(0,(g^prime (1/theta))^2 1/theta^2) ("дельта-метод")\
  g(x)=1/x\
  =>sqrt(n) (n/(sum_(i=1)^n ln X_i)-theta) arrow^(d_theta) cal(N) (0,theta^2)\
  =>"оценка асимптотически нормальная с асимптотической дисперсией" theta^2
$
]