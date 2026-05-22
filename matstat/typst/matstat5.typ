#import "../../exam_template.typ": *
#let title = "ДЗ 5"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математическая статистика 1"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Пусть $X_1,X_2,...,X_n-$ выборка из распределения с плотностью
$
  p_theta (x)=theta(1+x)^(-(1+theta)), theta>0, x>0.
$
1. Найдите оценку параметра $theta$ по методу максимального правдоподобия.
2. Будет ли оценка состоятельна и асимптотически нормальна? В случае положительного ответа посчитайте асимптотическую дисперсию;
3. Найдите оценку параметра $theta$ по методу моментов с пробной функцией $g_1 (x)=ln(1+x)$. Можно ли найти оценку методом моментов с пробной функцией $g_1(x)=x?$
]
#solution[
1.
$
  cal(L)(theta)=product_(i=1)^n theta(1+x_i)^(-(1+theta))=theta^n product_(i=1)^n (1+x_i)^(-(1+theta))\
  ln cal(L)(theta)=n ln theta -(1+theta) sum_(i=1)^n ln (1+ x_i)\
  (diff ln cal(L)(theta))/(diff theta)=n/theta -sum_(i=1)^n ln(1+x_i)=0\
  =>hat(theta) (bold(X))=n/(sum_(i=1)^n ln(1+x_i)) ("вторая производная меньше нуля, значит максимум")
$
2. Тут я сошлюсь на 3 задачу 2 дз. Там мы доказали сильную состоятельность и асимптотическую нормальность этой оценки. Асимптотическая дисперсия: $theta^2$
3.
$
  g_1(x) = ln(1+x)\
  m_1 (theta)=EE_theta ln(1+X_1)=1/theta (т.к. ln(1+x_1) tilde "Exp"(theta))\
  overline(g_1(bold(X)))=1/n sum_(i=1)^n ln(1 + x_i)\
  m_1 (theta) = overline(g_1(bold(X))) <==> 1/theta = 1/n sum_(i=1)^n ln(1 + x_i) <==> hat(theta) (bold(X))=n/(sum_(i=1)^n ln(1+x_i))\
  g_1(x)=x\
  EE_theta  abs(X_1)=integral_0^infinity abs(x theta(1+x)^(-(1+theta))) d x=integral_0^infinity x theta(1+x)^(-(1+theta)) d x=1/(theta - 1)\
  m_1 (theta) = overline(g_1(bold(X))) <==> 1/(theta - 1)=1/n sum_(i=1)^n x_i <==> n = (theta - 1) sum_(i=1)^n x_i <==> hat(theta) (bold(X))=(n - sum_(i=1)^n x_i)/(sum_(i=1)^n x_i)= n/(sum_(i=1)^n x_i) - 1
$
]
#pagebreak()
#problem(name: 2)[
Пусть $X_1,X_2,...,X_n-$ выборка из распределения с плотностью
$
  p_theta (x)=lambda e^(-lambda(x-mu)) II{x>=mu}, lambda, mu >0
$
Найдите оценку параметра $theta=(lambda, mu)$\
1. Методом максимального правдоподобия
2. Методом моментов с пробными функциями $g_1(x)=x$ и $g_2(x)=x^2$
]
#solution[
1.
$
  cal(L)(theta)=product_(i=1)^n lambda e^(-lambda(x_i-mu)) II{x_i>=mu}=lambda^n II{X_((1)) >= mu} product_(i=1)^n e^(-lambda(x_i - mu))\
  "Пусть далее индикатор равен 1, иначе вся цепочка 0"
  \
  ln cal(L)(theta)= n ln lambda -lambda sum_(i=1)^n (x_i - mu)\
  (diff ln cal(L)(theta))/(diff lambda) =n/lambda - sum_(i=1)^n (x_i - mu)=0 => lambda =n/(sum_(i=1)^n x_i - mu)\
  (diff ln cal(L)(theta))/(diff mu)=lambda n >0=>\
  "при фикс." lambda "правдоподобие растёт по "mu", но" mu <= X_((1))=>hat(mu)=X_((1))\
  => hat(lambda)=n/(sum_(i=1)^n x_i - X_((1)))("максимум так как вторая производная больше нуля")\
  =>hat(theta)=(n/(sum_(i=1)^n x_i - X_((1))), X_((1)))
$
2.
$
  m_1 (theta)=EE_theta X_1=integral_mu^infinity x lambda e^(-lambda(x-mu)) d x =integral_0^infinity (t+mu) lambda e^(-lambda t) d t=integral_0^infinity t lambda e^(-lambda t) d t + mu integral_0^infinity lambda e^(-lambda t) d t =1/lambda + mu\
  overline(g_1 (bold(X)))=overline(bold(X))\
  m_2(theta) = EE_theta X_1^2 = EE_theta (mu + Y)^2(Y tilde "Exp"(lambda))=mu^2+(2mu)/lambda+EE Y^2=mu^2+(2mu)/lambda+2/lambda^2\
  overline(g_2(bold(X)))=overline(X^2)\
  cases(1/lambda +mu=overline(X), mu^2+(2mu)/lambda + 2/lambda^2=overline(X^2))\
  mu = overline(X) - 1/lambda\
  t = 1/lambda\
  =>(overline(X)-t)^2 +2t(overline(X)-t)+2t^2=overline(X^2)\
  =>overline(X)^2-2 overline(X) t + t^2 + 2 t overline(X)-2t^2+2t^2=overline(X^2)\
  =>overline(X)^2+t^2=overline(X^2)\
  =>t=sqrt(overline(X^2)-overline(X)^2)\
$
$
  =>hat(lambda)=1/(sqrt(overline(X^2)-overline(X)^2))\
  =>hat(mu)=overline(X)-sqrt(overline(X^2)-overline(X)^2)
$
]
#pagebreak()
#problem(name: 3)[
Пусть $X_1,X_2,...,X_n-$ выборка из дискретного распределения
$
  PP_theta (X_1=1)=(1-theta)/2, PP_theta (X_1=2)=1/4, PP_theta (X_1=3)=(1+2theta)/4.
$
Определите область возможных значений параметра $theta$ и найдите его оценку
1. Методом максимального правдоподобия
2. Методом моментов с пробной функцией $g_1(x)=x$.
]
#solution[
$
  0 <= (1-theta)/2 <= 1 <==> theta in [-1, 1]\
  0 <= (1+2theta)/4 <=1 <==> theta in [-1/2, 3/2]\
  (1-theta)/2 + 1/4 + (1+2theta)/4=1\
  => theta in [-1/2, 1]
$
1.
$
  cal(L)(theta)= product_(i=1)^n PP_theta (X_1 = x_i)=((1-theta)/2)^(n_1)(1/4)^(n_2)((1+2theta)/4)^(n_3), n_1+n_2+n_3=n\
  ln cal(L)(theta)= n_1 ln (1-theta)/2+n_2 ln 1/4 +n_3 ln (1+2theta)/4\
  (diff ln cal(L)(theta))/(diff theta) = (-n_1)/(1-theta)+(2n_3)/(1+2theta)=0\
  =>hat(theta)=(2n_3-n_1)/(2(n_1+n_3)), n_1+n_3>0("иначе любое число из области значений")\
  ("максимум, так как вторая производная меньше нуля")
$
2.
$
  m_1(theta)=EE_theta X_1=(1-theta)/2+1/2+(3+6theta)/4=(7+4theta)/4\
  g_1 (bold(X))=overline(X)\
  m_1(theta)=g_1(X) <==> (7+4theta)/4=overline(X) <==> hat(theta)=min(1, max(-1/2,(4overline(X)-7)/4))
$
]