#import "../../exam_template.typ": *
#let title = "ДЗ 13"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория вероятностей"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Найдите ковариацию числа выпадений единицы и числа выпадений шестерки при бросании $n$ игральных костей.
]
#solution[
Введем случайные величины $xi_1, xi_2-$ число выпадений единицы при бросании $n$ игральных костей и шестерки соответственно. Заметим, что $display(xi_1=sum_(i=1)^n A_i), display(xi_2=sum_(i=1)^n B_i)$, где $A_i-$ индикатор того, что на $i$-ом броске выпала единица, $B_i-$ индикатор того, что на $i$-ом броске выпала шестерка. Тогда:
$
  "Cov"(xi_1, xi_2)="Cov"(sum_(i=1)^n A_i, sum_(j=1)^n B_j)=sum_(i=1)^n "Cov"(A_i, sum_(j=1)^n B_j)=sum_(i, j=1)^n "Cov"(A_i, B_j)=sum_(i=j, i,j in {1, ...,n}) "Cov"(A_i, B_j)\
  "Cov"(A_i, B_i)=E[A_i dot B_i]-EE[A_i] dot EE[B_i]=0-1/6 dot 1/6=-1/36\
  =>sum_(i=j, i,j in {1, ...,n}) "Cov"(A_i, B_j)=-n/36
$ 
]
#answer[
$
  -n/36
$
]
#pagebreak()
#problem(name: 2)[
 Пусть $X,Y$ случайные величины такие что $abs(im X)=abs(im Y)=2$ и $"cov"(X, Y)=0$. Покажите, что $X$ и $Y$ независимы.
]
#solution[

]
#pagebreak()
#problem(name: 3)[
Найдите ковариацию между случайной величиной $xi tilde cal(N)(0,1)$ и $eta$, где $eta|xi=x tilde "Exp"(e^x)$.
]
#solution[
$
  "Cov"(xi, eta)=EE[xi eta] - EE[xi]EE[eta]=EE[xi eta]\
$
$
  EE[EE[xi eta|xi]]=EE[xi eta]\ EE[xi eta|xi=x]=x EE[eta|xi=x]=x e^(-x) => E[xi eta]=EE[xi e^(-xi)]=display(integral_(-infinity)^infinity x e^(-x) 1/sqrt(2pi) e^(-x^2/2) d x=\
  =1/sqrt(2pi)integral_(-infinity)^infinity x e^(-x-x^2/2) d x)=sqrt(e)/sqrt(2pi) integral_(-infinity)^infinity x e^(-(x+1)^2/2) d x=sqrt(e)/sqrt(2pi) dot -sqrt(2pi)=-sqrt(e)
$
]
#answer[
$
  -sqrt(e)
$
]
#pagebreak()
#problem(name: 4)[
Пусть $phi(X)$ монотонно-возрастающая положительная четная функция. Пусть $EE[phi(abs(X))]$ существует, покажите, что:
$
  PP{abs(X) >=t} <= (EE[phi(abs(X))])/(phi(t)).
$
]
#solution[
Заметим, что доказательство этого утверждения полностью повторяет доказательство предложения 3.3.10 из конспекта. Так как $phi(t)$ положительна и монотонна, то достаточно вместо $t$ взять $phi(t)$. 
]
#answer[
 ч.т.д
]
#pagebreak()
#problem(name: 5)[
Пусть $X ~ "Exp"(2), Y ~ U(0,1), N ~ cal(N)(0,1)$ независимые. $Z=X+Y+N$. Найдите ковариационную матрицу вектора $[X,Y,Z]^T.$
]
#solution[
$
  "Cov"(X,Y)=0\
  "Cov"(X,Z)="Cov"(X, X+Y+N)="Cov"(X,X)+"Cov"(X,Y)+"Cov"(X,N)=1/4\
  "Cov"(Y,Z)="Cov"(Y,X)+"Cov"(Y,Y)+"Cov"(Y,N)=0+1/12+0=1/12\
  "Cov"(Z,Z)="Var"(Z)="Var"(X)+"Var"(Y)+"Var"(N)=1/4+1/12+1=4/3\
  C=mat(1/4,0,1/4;0,1/12,1/12;1/4,1/12, 4/3)
$
]
#answer[
$
  C=mat(1/4,0,1/4;0,1/12,1/12;1/4,1/12, 4/3)
$
]
#pagebreak()
#problem(name: 6)[
Пусть $X tilde U(0, 1), Y tilde "Exp"(1)$ независимые. Пусть $R$  матрица поворота $2 times 2$ на угол $pi/4$. Найдите ковариационные матрицы векторов $[X,Y]^T$ и $R [X, Y]^T$. Сохраняет ли ортогональное преобразование некоррелированость?
]
#solution[
$
  "Cov"(X,X)="Var"(X)=1/12\
  "Cov"(X,Y)=0\
  "Cov"(Y, Y) = "Var"(Y)=1\
  C_1 = mat(1/12,0;0,1)\
  R=mat(sqrt(2)/2, -sqrt(2)/2;sqrt(2)/2, sqrt(2)/2)\
  R dot mat(X;Y)=mat(sqrt(2)/2 X-sqrt(2)/2Y;sqrt(2)/2 X+sqrt(2)/2Y)\
  "Посчитаем новую матрицу ковариации"\
  "Cov"(sqrt(2)/2 X-sqrt(2)/2Y, sqrt(2)/2 X-sqrt(2)/2Y)="Cov"(sqrt(2)/2X,sqrt(2)/2 X-sqrt(2)/2Y)-"Cov"(sqrt(2)/2Y,sqrt(2)/2 X-sqrt(2)/2Y)=\
  ="Cov"(sqrt(2)/2X,sqrt(2)/2X)-"Cov"(sqrt(2)/2X,sqrt(2)/2Y)-"Cov"(sqrt(2)/2Y,sqrt(2)/2X)+"Cov"(sqrt(2)/2Y,sqrt(2)/2Y)=\
  =sqrt(2)/24-0-0+sqrt(2)/2=(13sqrt(2))/24\
  "Cov"(sqrt(2)/2 X-sqrt(2)/2Y, sqrt(2)/2 X+sqrt(2)/2Y)="Cov"(sqrt(2)/2X,sqrt(2)/2 X+sqrt(2)/2Y)-"Cov"(sqrt(2)/2Y,sqrt(2)/2 X+sqrt(2)/2Y)=\
  ="Cov"(sqrt(2)/2X,sqrt(2)/2X)+"Cov"(sqrt(2)/2X,sqrt(2)/2Y)-"Cov"(sqrt(2)/2Y,sqrt(2)/2X)-"Cov"(sqrt(2)/2Y,sqrt(2)/2Y)=\
  =sqrt(2)/24+0-0-sqrt(2)/2=(-11sqrt(2))/24\
  "Cov"(sqrt(2)/2 X+sqrt(2)/2Y, sqrt(2)/2 X+sqrt(2)/2Y)="Cov"(sqrt(2)/2X,sqrt(2)/2 X+sqrt(2)/2Y)+"Cov"(sqrt(2)/2Y,sqrt(2)/2 X+sqrt(2)/2Y)=\
  ="Cov"(sqrt(2)/2X,sqrt(2)/2X)+"Cov"(sqrt(2)/2X,sqrt(2)/2Y)+"Cov"(sqrt(2)/2Y,sqrt(2)/2X)+"Cov"(sqrt(2)/2Y,sqrt(2)/2Y)=\
  =sqrt(2)/24+0+0+sqrt(2)/2=(13sqrt(2))/24\
  C_2=mat((13sqrt(2))/24,-(11sqrt(2))/24;(-11sqrt(2))/24,(13sqrt(2))/24)\
$
Получается, что ортогональное преобразование не сохраняет некоррелированость.
]
#answer[
 $
   C_1=mat(1/12,0;0,1)\
   C_2=mat((13sqrt(2))/24,-(11sqrt(2))/24;(-11sqrt(2))/24,(13sqrt(2))/24)
 $
Не сохраняет
]