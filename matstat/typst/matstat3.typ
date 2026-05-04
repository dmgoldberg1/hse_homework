#import "../../exam_template.typ": *
#let title = "ДЗ 3"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математическая статистика 1"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Пусть $(X_1,Y_1),...,(X_n, Y_n)-$ выборка, соответствующая случайному вектору $(xi, eta)$. Является ли статистика
$
  T=1/(n-1)sum_(i=1)^n (X_i - overline(X))(Y_i - overline(Y)).
$
1. Несмещенной оценкой ковариации $"cov"(xi, eta)$
2. Состоятельной оценкой ковариации $"cov"(xi, eta)$
]
#solution[
1.
$
 EE[T]=1/(n-1)EE[sum_(i=1)^n (X_i - overline(X))(Y_i - overline(Y))]=1/(n-1) EE[sum_(i=1)^n X_i Y_i -n overline(X) space overline(Y)]\
 EE[sum_(i=1)^n X_i Y_i]=n EE[X_1Y_1] =n("cov"(xi, eta)+EE[xi]EE[eta])\
 EE[n overline(X) space overline(Y)]=n ("cov"(overline(X), overline(Y))+EE[overline(X)]EE[overline(Y)]) = n(1/n "cov"(xi, eta)+EE[xi]EE[eta])="cov"(xi, eta) + n EE[xi]EE[eta]\
 =>EE[T]=1/(n-1) (n "cov"(xi, eta) + n EE[xi]EE[eta]-"cov"(xi, eta)-n EE[xi]EE[eta])="cov"(xi, eta)\
 =>"оценка несмещенная"
$
2.
$
  T^prime = 1/(n)sum_(i=1)^n (X_i - overline(X))(Y_i - overline(Y))=1/(n) sum_(i=1)^n X_i Y_i -n overline(X) space overline(Y)\
  =>T=n/(n-1)T^prime\
  1/(n) sum_(i=1)^n X_i Y_i arrow^PP EE[X_1Y_1]="cov"(xi, eta)+EE[xi]EE[eta]("ЗБЧ")\
  overline(X) space overline(Y) arrow^PP EE[xi]EE[eta]\
  =>T^prime arrow^PP "cov"(xi, eta)\
  =>T arrow^PP "cov"(xi, eta)("так как "lim_(n arrow infinity) n/(n-1)=1)\
  =>"оценка состоятельная"
$
]
#answer[
Несмещенная и состоятельная
]
#pagebreak()
#problem(name: 2)[
Пусть $X_1, X_2, ...,X_n$ выборка из бета-распределения $"Beta"(alpha, beta)$ с параметрами $alpha, beta >0$\
$
  p(x)=1/(B(alpha, beta))x^(alpha - 1)(1-x)^(beta - 1)II{x in [0,1]}
$
1. Принадлежит ли распределение экспоненциальному семейству?
2. Найдите минимальную достаточную для параметра $theta=(alpha,beta)$ статистику.
]
#solution[
1.
$
  ln p(x)=(alpha - 1) ln x+(beta-1)ln(1-x)-ln B(alpha, beta)+ln II{x in [0, 1]}\
  => p(x)=II{x in [0, 1]} dot exp((alpha-1) ln x+(beta-1)ln(1-x)-ln B(alpha, beta))\
  =>"распределение принажлежит экспоненциальному семейству"
$
2.
$
  "Из разложение следует, что достаточной статистикой является:"\
  T(bold(X))=(sum ln X_i, sum ln(1-X_i))\
  "Проверим её на минимальность"\
  (p_theta (x))/(p_theta (y))=(((product x_i)/(product y_i))^(alpha - 1) dot ((product 1-x_i)/(1-y_i))^(beta - 1) dot product II{x_i in [0, 1]})/(product II{y_i in [0, 1]})\
  ln (p_theta (x))/(p_theta (y))=(alpha - 1)(sum ln x_i - sum ln y_i)+(beta - 1)(sum ln(1-x_i)-sum ln(1-y_i))\
  "не зависит от "theta <==>sum ln x_i - sum ln y_i=0 "и " sum ln(1-x_i)-sum ln(1-y_i)=0\
  <==>T(bold(X))=T(bold(Y))\
  => "проверили по критериию минимальности"
$
]
#answer[
Да\
$
  T(bold(X)) = (sum ln X_i, sum ln(1 - X_i))
$
]
#pagebreak()
#problem(name: 3)[
Пусть $X_1,X_2,..,X_n$ выбока из двухпараметрического экспоненциального распределения со свдвигом $"Exp"(a, lambda), lambda >0$, плотность которого
$
  p_theta (x)=lambda e^(-lambda(x-a)) II{x >= a}
$
1. Придлежит ли распределение экспоненциальному семейству?
2. Найдите минимальную достаточную для параметра $theta=(lambda, a)$ статистику.
]
#solution[
1.
$
  II{x >= a} = f(x, a),\ "но в определении экспоненциального семейства могут быть либо функции от "x, "либо от" theta\
  =>"не принадлежит"
$
2.
$
  cal(L)(theta)=product_(i=1)^n lambda e^(-lambda(x_i - a)) II{x_i >= a}=lambda^n exp(-lambda sum_(i=1)^n x_i + n lambda a)II{x_((1))>=a}\
  =>T(bold(X))=(sum X_i, X_((1)))-"достаточная статистика по критерию факторизации"\
  "Проверим минимальность"\
  (p_theta (bold(X)))/(p_theta (bold(Y)))=(lambda^n exp(-lambda sum_(i=1)^n x_i + n lambda a)II{x_((1))>=a})/(lambda^n exp(-lambda sum_(i=1)^n y_i + n lambda a)II{y_((1))>=a})=exp(-lambda(sum x_i - sum y_i)) dot (II{x_((1)) >=a})/(II{y_((1)) >=a})\
  "не зависит от "theta <==> sum x_i = sum y_i; x_((1))=y_((1)) <==>T(bold(X))=T(bold(Y))\
  => "минимальная по критерию минимальности"
$
]
#answer[
Не принадлежит\
$
  T(bold(X))=(sum X_i, X_((1)))
$
]
#pagebreak()
#problem(name: 4)[
Пусть $X_1,X_2,...,X_n$ выборка из логнормального распределения $"LogNormal"(theta_1,theta_2^2)$ с плотностью
$
  p_theta (x)=1/(x theta_2 sqrt(2 pi))exp(-(ln x-theta_1)^2/(2theta_2^2))II{x>0},
$
где $theta=(theta_1, theta_2^2) in RR times RR_+-$ неизвестный параметр.\
1. Придлежит ли распределение экспоненциальному семейству?
2. Найдите минимальную достаточную для параметра $theta$ статистику.
]
#solution[
1.
$
  p_theta (x)=1/x exp(-((ln^2 x-2theta_1 ln x+theta_1^2)/(2theta_2^2))-ln theta_2-ln sqrt(2pi))II{x >0}=\
  =exp((theta_1)/(theta_2^2) ln x+(-1/(2theta_2^2)) ln^2 x-((theta_1^2)/(2theta_2^2)+ln theta_2+ ln sqrt(2pi)))1/x II{x>0}\
  =>"принадлежит экспоненциальному семейству"\
  T(bold((X)))=(sum ln X_i, sum ln^2 X_i)
$
2.
$
  T(bold(X))" достаточная статистика, аналогично в лоб проверяется что она минимальная"\
  "по критерию минимальности"
$
]
#answer[
Принадлежит
$
  T(bold(X))=(sum ln X_i, sum ln^2 X_i)
$
]
#pagebreak()
#problem(name: 5)[
Пусть $X_1,X_2,...,X_n-$ выборка из распределения Коши $"C"(0, theta), theta>0$, плотность которого
$
  p_theta (x)=1/pi dot theta/(x^2+theta^2).
$
Принадлежит ли распределение экспоненциальному семейству?
]
#solution[
$
  ln p_theta (x)=ln theta - ln pi-ln(x^2+theta^2)\
  ln(x^2+theta^2) "нельзя представить как произведение функций от "theta "и от" x", "\
  "значит по определению оно не приндлежит к экспоненциальному семейству". 
$
]
#answer[
Нет
]