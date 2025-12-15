#import "../../exam_template.typ": *
#let title = "ДЗ 9"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория вероятностей"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Покажите, что следующие функции являются борелевскими и вычислите интегралы по множеству $A=[0, 2]: f(x)=2x+1$, вычислите $integral_A f d mu$, где $mu$ задана плотностью $g(t)=(d mu)/(d lambda)=3t^2$.
]
#solution[
$
  f(x) in C(A)=>f(x)-"борелевская".\
  integral_A f d mu = integral_A f (d mu)/(d lambda) d lambda = integral_0^2 (2x + 1) 3x^2 d x = integral_0^2 6x^3+3x^2 d x = 32
$
]
#answer[
32
]
#pagebreak()
#problem(name: 2)[
Покажите, что следующие функции являются борелевскими и вычислите интегралы по множеству $A=RR: f_1(x)=x, f_2(x)=(x-2)^2$, вычислите $integral_A f_1 d mu_F, integral_A f_2 d mu_F$, где мера $mu_F$ задана функцией распределения\
$
  F(t)=cases(0", "x<1,1/4", "1<=x<2,3/4", "2<=x<3,1", "x >=3)
$ 
]
#solution[
$
  f_1, f_2 in C(A)=>"они борелевские"\
  F(t)= mu_F ((-infinity, t])=ё\
  mu_F (A) = 1/4delta_1(A)+2/4 delta_2(A)+1/4delta_3(A), delta_(x_0)(A)-"мера Дирака"\
  =>integral_A f_1 d mu_F=1/4integral_A f_1 d delta_1+1/2 integral_A f_1 d delta_2 + 1/4 integral_A f_1 d delta_3=1/4+1+3/4 =2\
  integral_A f_2 d mu_F=1/4integral_A f_2 d delta_1+1/2 integral_A f_2 d delta_2 + 1/4 integral_A f_2 d delta_3=1/4 +0+1/4 =1/2
$
]
#answer[
$
  2, 1/2
$
]
#pagebreak()
#problem(name: 3)[
Покажите, что следующие функции являются борелевскими и вычислите интегралы по множеству $A=[0,1]: f(x)=cos(pi x), T(x)=2x mod 1, mu(B)=lambda(T^(-1)(B))$. Вычислите интеграл $integral_A f d mu$.
]
#solution[
$
  f(x) in C(A) =>f-"борелевская"\
  integral_A f d mu =integral_(T^(-1) (A)) f(T(x)) d lambda=integral_RR cos(pi (2x mod 1)) d x =integral_0^1 cos(pi(2x mod 1)) d x =integral_0^(1/2) cos(2pi x) d x +\
  +integral_(1/2)^1 cos(pi(2x - 1)) d x =0
$
]
#answer[
0
]
#pagebreak()
#problem(name: 4)[
Пусть $f_n (x)=n^2 x (1-x^2)^n$ и $forall x in [0,1] space f(x)=lim_(n arrow infinity) f_n (x)$ есть поточечный предел. Проверьте можно ли менять интеграл и предел местами $display(lim_(n arrow infinity) integral_([0,1]) f_n d lambda) =^? integral_([0,1]) f d lambda$? Объясните почему применимы/не применимы теоремы о монотонной и мажорируемой сходимости.
]
#solution[
Заметим, что $f(x)=0$
$
  integral_([0,1]) 0 d lambda =0\
  integral_([0,1]) f_n d lambda =  integral_0^1 n^2 x (1-x^2)^n d x =|t = 1-x^2, d t = 2 x d x, x d x =  (d t)/2|=-n^2/2 integral_0^1 t^n d t != 0\
  "Значит нельзя менять" 
$
Заметим, что $f_n (x)$ не ограничена при $n arrow infinity$, значит не существует интегрируемой мажоранты, значит не применима теорема о мажорируемой сходимости. Последовательность функций не возрастающая по $n$, значит не применима теорема о монотонной сходимости.
]
#answer[
ч.т.д.
]
#pagebreak()
#problem(name: 5)[
Случайная величина $xi$ имеет функцию распределения равную:
$
  F(x)=cases(0", " x<2,0.05+0.1(2+x)", " -2<=x< -1,0.15+0.05(1+e^(x+1))", " -1<= x < 0,0.85+0.15(1-e^(-(x-1)))", " x>=0)
$
Найдите ее математическое ожидание и дисперсию.
]
#solution[
$
  EE[xi]=integral xi d PP=integral_RR x d PP_xi
$
По теореме Лебега о разложении мер, мера $PP_xi$ разложится в сумму абсолютно-непрерывной меры и дискретной меры. Дискретная мера будет взвешенной суммой мер Дирака. Найдём ее:
$
  mu_D (A) = delta_2(A) dot 0.05+delta_(-1)(A) dot 0.1 + delta_0(A) dot (0.8-0.2e).
$
Теперь найдем абсолютно-непрерывную составляющую. На участках непрерывности производная функции распределения равна производной Радона-Никодима. Вычислим производную Радона-Никодима на каждом участке непрерывности:
$
  rho_1(x)= 0, x < 2\
  rho_2(x) = 0.1, -2 <= x < -1\
  rho_3(x)=0.05e^(x+1), -1 <= x < 0\
  rho_4(x)=0.15e^(-(x-1))\
  =>rho(t) = cases(rho_1(t)", " t < 2, rho_2(t)", " -2 <= t < -1, rho_3(t)", " -1 <= t < 0, rho_4(t)", " t>=0)
$
Абсолютно непрерывная мера тогда задаётся следующим соотношением:
$
  nu(A) = integral_A rho(t) d lambda\
  =>PP_xi (A) = mu_D (A) + nu(A)\
  =>integral_RR x d PP_xi=integral_RR x d mu_D + integral_RR x d nu\
  integral x d mu_D=0.05integral x d delta_(-2)+0.1integral x d delta_(-1) + (0.8-0.2e)integral x d delta_0=-0.2\
  integral_RR x d nu=integral_((-infinity, 2)) x d nu+integral_([-2,-1)) x d nu+integral_([-1, 0)) x d nu + integral_([0, +infinity)) x d nu=\
  =integral_((-infinity, 2)) x dot 0 d lambda+integral_([-2,-1)) x dot 0.1 d lambda+integral_([-1, 0)) x dot 0.05e^(x+1) d lambda+integral_([0, +infinity)) x dot 0.15e^(-(x-1)) d lambda=\
  =-3/20+-0.05e + 0.1 +0.15e+0.3=0.1e-0.25\
  EE[xi^2]=integral_RR x^2 d mu_D + integral_RR x^2 d nu\
$
$
  integral_RR x^2 d mu_D=0.05integral x^2 d delta_(-2)+0.1integral x^2 d delta_(-1) + (0.8-0.2e)integral x^2 d delta_0=0.2+0.1=0.3\
  integral_RR x^2 d nu = -1/60 + 2/5e\
  D[xi]=-1/60+2/5e-(0.1e-0.25)^2=-e^2/100+53/240+9e/20
$
]
#answer[
$
  EE[xi]=0.1e-0.25\
  D[xi]=-e^2/100+53/240+9e/20
$
]
#pagebreak()
#problem(name: 6)[
Случайная величина $xi$ имеет геометрическое распределение с параметром $p in [0, 1]$. Найдите ее математическое ожидание и дисперсию.
]
#solution[
$
  PP_xi (k)=(1-p)^(k-1) p\
  EE[xi]=integral xi d PP = integral x d PP_xi= sum_(k=1)^infinity k PP_xi (k)=sum_(k=1)^infinity k (1-p)^(k-1) p=p sum_(k=1)^infinity k (1-p)^(k-1)\
  g(x)=1/(1-x)=sum_(k=0)^infinity x^k\
  f(x)=sum_(k=1)^infinity k x^(k-1), abs(x) < 1\
  1/(1-x)^2 = sum_(k=0)^infinity k x^(k-1)\
  =>p sum_(k=1)^infinity k (1-p)^(k-1)=1/p\
  EE[xi^2]=integral x^2 d PP_xi=p sum_(k=1)^infinity k^2 (1-p)^(k-1)=p/(1-p) sum_(k=1)^infinity k^2 (1-p)^k 
$
Из курса матанализа 2 известно, что сумма это ряда есть:
$
  sum_(k=1)^infinity k^2 (1-p)^k=((1-p)(2-p))/p^3\
  EE[xi^2]=(2-p)/p^2\
  DD[xi]=(2-p)/p^2-1/p^2=(1-p)/p^2
$
]
#answer[
$
  EE[xi]=1/p\
  DD[xi]=(1-p)/p^2
$
]
#pagebreak()
#problem(name: 7)[
Случайная величина $xi$ имеет распределение Коши с плотностью $p=1/(pi(1+x^2))$. Выясните, существует ли у этой случайной величины математическое ожидание и дисперсия?
]
#solution[
$
  EE[xi]=integral xi d PP=integral x d PP_xi=integral_RR x p(x) d lambda =integral_RR x/(pi(1+x^2)) d lambda tilde integral_RR abs(x)/(pi(1+x^2)) d lambda=\
  =2 integral_0^infinity x/(pi(1+x^2)) d x=2/pi integral_0^infinity x/(1+x^2)=2/pi lim_(n arrow infinity) integral_0^n x/(1+x^2) d x\
  integral_0^n x/(1+x^2) d x=|t=1+x^2, d t = 2 x d x, x d x =(d t)/2|=1/2integral_1^(n^2+1) 1/t d t =1/2 ln(n^2+1)\
   2/pi lim_(n arrow infinity) integral_0^n x/(1+x^2) d x=2/pi lim_(n arrow infinity) 1/2 ln(n^2+1)-"не существует"\
   =>EE[xi] "не определен"\
   =>DD[xi] "не определена"
$
]
#answer[
Не существует
]
#pagebreak()
#problem(name: 8)[
Пусть $(Omega, cal(F), PP)$ вероятностное пространство. Пусть $cal(L)_2={xi: EE xi^2 < +infinity}$
]
#pagebreak()
#problem(name: 9)[
Выведите классические неравенства для математического ожидания:
1. Неравенство Ляпунова: $display((EE abs(xi)^s)^(1/s) <= (EE abs(xi)^t)^(1/t)), 0<s<t$

2. Неравенство Гёльдера: $display(EE abs(xi eta )<=(EE abs(xi)^p)^(1/p) (EE abs(eta)^q)^(1/q)), 1/p+1/q=1, p,q >1$
3. Неравенство Минковского: $display((1<=p < infinity):(EE abs(xi+eta)^p)^(1/p)<=(EE abs(xi)^p)^(1/p)+(EE abs(eta)^p)^(1/p))$
]
#solution[
1. Рассмотрим функцию $psi(x)=x^(t/s)$, она выпуклая на $RR_+$. Тогда по неравенству Йенсена следует:
$
  psi(integral abs(xi)^s d PP)<= integral psi(abs(xi)^s) d PP\
  =>(EE abs(xi)^s)^(t/s) <=EE abs(xi)^t\
  =>(EE abs(xi)^s)^(1/s) <= (EE abs(xi)^t)^(1/t)
$
3. 
$
  abs(xi + eta)^p=abs(xi + eta) abs(xi+eta)^(p-1) <= (abs(xi)+abs(eta))abs(xi+eta)^(p-1)\
  EE abs(xi+eta)^p <=EE[abs(xi)abs(xi+eta)^(p-1)]+EE[abs(eta)abs(xi+eta)^(p-1)]\
  q = p/(p-1)\
  1/q + 1/p=1\
  =>"По неравенству Гёльдера:"\
  EE[abs(xi)abs(xi+eta)^(p-1)]<=(EE abs(xi)^p)^(1/p) dot (EE[(abs(xi+eta)^(p-1))^q])^(1/q)<=(EE abs(xi)^p)^(1/p) dot (EE abs(xi+eta)^p)^(1/q)\
  "Аналогично для другого слагаемого:"\
  EE[abs(eta)abs(xi+eta)^(p-1)] <= (EE abs(eta)^p)^(1/p) dot (EE abs(xi+eta)^p)^(1/q)\
  EE abs(xi+eta)^p <= (EE abs(xi)^p)^(1/p)+EE abs(eta)^p)^(1/p)) dot (EE abs(xi+eta)^p)^(1/q)\

  "Сокращаем на второй множитель:"\
  (EE abs(xi+eta)^p)^(1/p)<=(EE abs(xi)^p)^(1/p)+(EE abs(eta)^p)^(1/p)
$
]
