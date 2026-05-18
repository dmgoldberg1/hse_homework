#import "../../exam_template.typ": *
#let title = "ДЗ 4"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математическая статистика 1"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Пусть $X_1,...,X_n-$ выборка из экспоненциального распределения $"Exp"(theta)$ с параметром $theta > 0$. Посчитайте информацию Фишера о параметре $theta$, содержащуюся\
1. Во всей выборке $X_1,...,X_n$
2. В достаточной для параметра $theta$ статистике
Сравните эти информации. Для каких функций $tau(theta)$ существует эффективная оценка? Какой вид имеет эта оценка?
]
#solution[
1.
Так как экспоненциальное распределение удовлетворяет регулярной модели, то информацию Фишера можно искать по формуле:
$
  I_n (bold(X))=-EE[diff/(diff theta) U_theta (bold(X))]
$
$
  p_theta (bold(X))=theta^n e^(-theta(sum_(i=1)^n X_i)) II{X_1 >=0, ..., X_n >=0}\
  ln p_theta (bold(X)) = n ln theta - theta sum_(i=1)^n X_i+ln II{X_1>=0,..., X_n >=0}(II{...}=1)\
  U_theta (bold(X))=n/theta - sum_(i=1)^n X_i\
  diff/(diff theta) U_theta (bold(X)) = -n/theta^2\
  => I_n (bold(X))=n/theta^2
$
2.
Из критерия факторизации следует, что достаточной статистикой является $T(bold(X))=sum_(i=1)^n X_i$\
$
  X_i tilde "Exp"(theta) => T tilde "G"(n, theta)\
  p_theta (t)=(theta^n)/(G(n)) t^(n-1)e^(-theta t), t>=0\
  ln p_theta (t)=n ln theta - ln G(n)+ (n-1)ln t-theta t\
  U_theta (T(bold(X)))=n/theta-t\
  I_n (T(bold(X)))=EE[U_theta (bold(X))^2]=EE[(n/theta-t)^2]="Var"(T)=n/theta^2\
  =>"информация Фишера одинаковая"
$
3.
Экспоненциальное распределение также принадлежит эскпоненциальному семейству, при этом
$
  eta(theta)=-theta\
  T(x)=x\
  A(theta)=-ln theta\
  C(x)=II{x >=0}
$
Тогда по Теормеме 9:
$
  tau(theta)=(A^prime (theta))/(eta^prime (theta))=1/theta\
  hat(T)(bold(X))=overline(X)\
  "с точностью до одного и того же афинного преобразования"
$
]
#pagebreak()
#problem(name: 2)[
Пусть $X_1,...,X_n-$ выборка из распределения с плотностью
$
  p_theta (x)=theta (1+x)^(-(1+theta))II{x>0}, theta >0.
$
Посчитайте информацию Фишера о параметре $theta$, содержащуюся\
1. Во всей выборке $X_1,...,X_n$
2. В достаточной для параметра $theta$ статистике
Сравните эти информации. Для каких функций $tau(theta)$ существует эффективная оценка? Какой вид имеет эта оценка?
]
#solution[
Сделаем замену $Y=ln(X+1)$\
$
  F_Y (x)=PP(Y <= x)=PP(ln(X+1)<=x)=PP(X <=e^x - 1)=integral_0^(e^x - 1) theta(1+t)^(-(1+theta)) d t=cases(0"," x<=0,1-e^(-theta x)"," x>0)\
  =>Y tilde "Exp"(theta)
$
Так как наше преобразование биекция, то информацию о параметре мы не теряем, а для экспоненциального распределения мы уже все посчитали в 1 задаче.
$
  =>I_n (bold(X))=n/theta^2; I_n (T(X))=n/theta^2
$
3.
Информации одинаковые. Опять же из Теоремы 9:
$
  tau(theta)=1/theta\
  hat(X)=1/n sum_(i=1)^n ln(X_i+1)\
  "с точностью до афинного преобразования"
$
]
#pagebreak()
#problem(name: 3)[
Пусть $X_1,X_2,...,X_n-$ выборка из логнормального распределения $"LogNormal"(theta_1, theta_2^2)$ с плотностью
$
  p_theta (x)=1/(x theta_2 sqrt(2 pi)) exp(-(ln x -theta_1)^2/(2theta_2^2))II{x>0},
$
где $(theta_1, theta_2^2) in RR times RR_+$. Посчитайте информацию Фишера о параметре $theta$, содержащуюся\
1. Во всей выборке $X_1,...,X_n$
2. В достаточной для параметра $theta_1$ статистике
Сравните эти информации. Найти эффективную оценку $theta_1$ через критерий эффективности.
]
#solution[
Сделаем замену $Y_i = ln(X_i)=>Y_i tilde cal(N)(theta_1,theta_2^2)$
1.
$
  p_theta (Y)=1/(theta_2 sqrt(2 pi))^n exp(-1/theta_2^2 sum_(i=1)^n (Y_i - theta_1)^2)\
  ln p_theta (Y)=-n ln theta_2-n/2ln(2pi)-1/(2theta_2^2) sum_(i=1)^n (Y_i - theta_1)^2\
  =>U_(theta_1) (Y)=diff/(diff theta_1) ln p_theta (Y)=-1/(2theta_2^2) sum_(i=1)^n -2(Y_1-theta_1)=1/theta_2^2 sum_(i=1)^n (Y_i-theta_1)\
  I_n (Y)=-EE[diff/(diff theta_1) U_(theta_1) (Y)]=n/(theta_2^2)\
  =>I_n (X)=n/theta_2^2("преобразование биекция")\
$
2.
Из предыдущего дз знаем, что достаточной для параметра $theta_1$ статистикой является:
$
  T(X)=sum_(i=1)^n  ln(X_i)=sum_(i=1)^n Y_i\
  T tilde cal(N)(n theta_1, n theta_2^2)\
  p_theta (x)=1/sqrt(2pi n theta_2^2) exp(-(x-n theta_1)^2/(2n theta_2^2))\
  ln p_theta (T(X))=-1/2 ln(2pi n theta_2^2)-(T-n theta_1)^2/(2n theta_2^2)\
  U_(theta_1)(T(X))=(T-n theta_1)/(theta_2^2)\
  diff/(diff theta_1) U_(theta_1) (X)=-n/theta_2^2\
  =>I_n (T(X))=n/theta_2^2\
  =>"информации совпадают"
$
3.
Эффективной оценкой $theta_1$ будет являться $hat(theta_1)(bold(X))=sum_(i=1)^n ln(X_i)$. Проверим это через критерий эффективности:
$
  hat(theta_1) - theta_1=1/n sum_(i=1)^n (ln X_i - theta_1)=theta_2^2/n dot 1/theta_2^2 sum_(i=1)^n (ln X_i - theta_1)=theta_2^2/n U_(theta_1) (X)
$
Критерий выполняется, то есть оценка действительно эффективная.
]
