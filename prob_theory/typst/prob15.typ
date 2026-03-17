#import "../../exam_template.typ": *
#let title = "ДЗ 15"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория вероятностей"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Пусть $xi_n$ случайные величины имеющие экспоненциальное распределение с параметром $n$. Найдите слабый предел последовательности вероятностных мер $PP_xi_n$.
]
#solution[
$
  phi_(xi_n) (t)=EE[e^(i t xi_n)] = integral_0^infinity e^(i t x) n e^(-n x) d lambda(x)=n integral_0^infinity e^(x(i t - n)) d lambda(x)=n lim_(k arrow infinity) integral_0^k e^(x(i t - n)) d lambda(x)=\
  =n lim_(k arrow infinity)((e^(k(i t -n)) - 1)/(i t - n))=-n/(i t - n)=(i t - n - i t)/(i t - n)=1 - (i t)/( i t - n) arrow 1, n arrow infinity
$
Но характеристическая функция, равная единице, может быть разве что у $xi=0=>PP_xi_n=delta_0$(мера Дирака в нуле).
]
#answer[
$
  delta_0
$
]
#pagebreak()
#problem(name: 2)[
Пусть $xi_n$ случайные величины, принимающие значения $k"/"n, k =1...n$ с вероятностями 1/$n$. Покажите, что слабый предел $PP_(xi_n)$ есть равномерное распределение на отрезке [0, 1].
]
#solution[
$
  PP(xi_n=k/n)=1/n, k in {1,...,n}\
$
Из теоремы Александрова слабая сходимость эквивалентна сходимости функций распределения. При этом функция распределения равномерного распределения есть $F_xi (x)=x=>$ достаточно показать:
$
  F_xi_n (x) arrow F_xi (x)=x\
  => forall epsilon > 0:  exists N: forall n > N: abs(F_xi_n (x) - x) < epsilon
$
Заметим, что $F_xi_n$ имеет ступенчатый вид, при этом величина скачка равна $1/n=>$ начиная с некоторого номера $N, abs(F_xi_n (x) - x) < 1/N < epsilon$. Что и требовалось доказать. 
]
#answer[
ч.т.д
]
#pagebreak()
#problem(name: 3)[
Вычислите характеристические функции:
1. Биномиального распределения с параметрами $(n, p)$
2. Геометрического распределения с параметром $p$
3. Равномерного распределения на отрезке $[a, b]$
4. Показательного распределения с параметром $alpha$
]
#solution[
$
  xi tilde "Binom"(n, p)\
  phi_xi (t)=EE[e^(i t xi)]=sum_(k=0)^n e^(k i t) binom(n, k) p^k (1-p)^(n - k)\
  (a+b)^n = sum_(k=0)^n binom(n, k) a^k b^(n-k)\
  a = p e^(i t), b = 1 -p => phi_xi (t) = (p e^(i t)+1-p)^n\
  xi tilde "Geom"(p)\
  phi_xi (t) = sum_(m=0)^infinity e^(m i t) p (1-p)^m=p sum_(m=0)^infinity (e^(i t)(1-p))^m=p/(1- e^(i t)(1-p))\
  xi tilde U(a, b)\
  phi_xi (t)=1/(b-a) integral_a^b e^(i t x) d x=1/(b-a)((e^(i t b)-e^(i t a))/(i t))\
  xi tilde "Exp"(alpha)\
  phi_xi (t) = 1-(i t)/(i t - alpha)("считали в первом номере")
$
]
#answer[
см. решение
]
#pagebreak()
#problem(name: 4)[
Пусть случайные величины $X, Y$ независимы и $EE[X]=EE[Y]=0, "Var"[X]=sigma_X, "Var"[Y]=sigma_Y$. Вычислите $EE[(X+Y)^2]$ и $EE[(X+Y)^3]$ используя характеристические функции.
]
#solution[
$
  phi_(X+Y) (t) = phi_X (t) phi_Y (t)\
  EE[(X+Y)^2]=(phi_(X+Y)^((2)) (0))/(-1)\
  phi_(X+Y)^((2)) (0))=phi^((2))_X (0)+phi_Y^((2)) (0) = -sigma_X - sigma_Y => EE[(X+Y)^2]=sigma_X+sigma_Y\
  phi_(X+Y)^((3)) (0) = phi_(X)^((3)) (0)+phi_(Y)^((3)) (0)=EE[X^3]+EE[Y^3]=>EE[(X+Y)^3]=EE[X^3]+EE[Y^3]
$
]
#answer[
$
EE[(X+Y)^2]=sigma_X+sigma_Y\
EE[(X+Y)^3]=EE[X^3]+EE[Y^3]
$
]
#pagebreak()
#problem(name: 5)[
Пусть $X tilde "Bin"(n, p), Y tilde "Bin"(m, p)$ независимые случайные величины. Используя характеристические функции найдите распределение $X+Y$.
]
#solution[
$
  phi_(X+Y) (t)=phi_X (t) phi_Y (t)=(p e^(i t)+1-p)^(n+m)
$
Остается заметить, что такой характеристической функцией обладает случайная величина с биномиальным распределением с параметрами $m + n$ и $p$.
]
#answer[
$
  X+Y tilde "Bin"(n+m,p)
$
]
#pagebreak()
#problem(name: 6)[
Пусть $X, Y$ независимые и имеют показательное распределение с параметром $lambda$. Используя характеристические функции найдите распределение $X-Y$.
]
#solution[
$
  phi_(X-Y) (t)=phi_(X+(-Y)) (t)=phi_X (t) phi_(-Y) (t)\
  phi_(-Y) (t) = phi_Y (-t)=1-(i t)/(i t + lambda)\
  phi_(X-Y) (t) = (1-(i t)/(i t -lambda))(1-(i t)/(i t + lambda))=(lambda^2)/(t^2+lambda^2)\
  => X-Y tilde "Laplase"(lambda,0)
$
]
#answer[
$
  X-Y tilde "Laplase"(lambda,0)
$
]
#pagebreak()
#problem(name: 7)[
Покажите, что выпуклая комбинация характеристических функций является характеристической функцией.
]
#solution[
$
  phi = sum_(i=1)^k phi_i lambda_i, sum lambda_i = 1, lambda_i >=0\
$
Проверим условие теоремы Бохнера-Хинчина. Для любых $t_1,...,t_n in RR$ и $sigma_1,..., sigma_n in CC$ должно быть выполнено
$
  sum_(p,q=1)^n phi(t_p-t_q) sigma_p overline(sigma_q) >=0\
  sum_(p,q=1)^n phi(t_p-t_q) sigma_p overline(sigma_q)=sum_(p,q=1)^n sum_(i=1)^k phi_i (t_p - t_q) lambda_i sigma_p overline(sigma_q)=sum_(i=1)^k sum_(p,q=1)^n phi_i (t_p - t_q) sigma_p overline(sigma_q) lambda_i\
  sum_(p,q=1)^n phi_i (t_p - t_q) sigma_p overline(sigma_q)>=0,"так как" phi_i-"хар. функция"\
  "домноножение на "lambda_i>=0 "не меняет знак"=>sum_(p,q=1)^n phi(t_p-t_q) sigma_p overline(sigma_q) >=0
$
По теореме Бохнера-Хинчина $phi-$ характеристическая функция.
]
#answer[
ч.т.д.
]