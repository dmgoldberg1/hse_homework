#import "../../exam_template.typ": *
#let title = "ДЗ 11"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория вероятностей"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Игрок бросает правильную монету. Если выпал орёл, он бросает игральную кость один раз. Если решка, то бросает кость два раза. Найти вероятность того, что сумма выпавших очков равна 5.
]
#solution[
Если выпадает орёл, то вероятность равна $display(1/2 dot 1/6 = 1/12)$. Если решка, то $display(1/2 dot 1/9=1/18)$. Тогда ответ это $display(1/12 + 1/18 =5/36).$
]
#answer[
$
  5/36
$
]
#pagebreak()
#problem(name: 2)[
Частица начинает движение из точки 0 на прямой. Каждую секунду она делает шаг с вероятностью 0.6 шаг +1, с вероятностью 0.4 шаг -1. Но если после шага координата становится положительной, то на следующем шаге вероятности меняются на 0.7 и 0.3 соответственно. Если после шага координата ноль или отрицательная, то вероятности равны исходным. Найдите вероятность того, что после 4 шагов координата будет равна 2.
]
#solution[
Нарисуем дерево разбора вариантов, отметив маршруты, подходящие под условие:
$
  #image("/assets/image-3.png")
$
Тогда искомая вероятность будет равна:
$
  0.4 dot 0.6 dot 0.6 dot 0.7+0.6 dot 0.3 dot 0.6 dot 0.7+0.6 dot 0.7 dot 0.3 dot 0.7+0.6 dot 0.7 dot 0.7 dot 0.3=0.3528
$
]
#answer[
$
  0.3528
$
]
#pagebreak()
#problem(name: 3)[
Пусть случайный вектор имеет независимые компоненты $(X, Y)$, где $X$ равномерно распределена на отрезке [0, 2], $Y$ экспоненциально с параметром $lambda=2$. Найдите математическое ожидание и дисперсию случайной величины
$
  Z=e^(-X) sin(Y)+sqrt(X) dot II{Y > 2}.
$ 
]
#solution[
$
  EE[Z(X, Y)]=integral Z(X, Y) d PP=integral_(RR^2) Z d PP_((X, Y))=integral_(RR^2) Z rho(x, y) d lambda_2\
  rho_((X, Y)) =1/2 dot II{0 <= x <=2} dot 2 e^(-2y)dot II{0<=y <infinity}=e^(-2y) dot II{0 <= x <=2} dot II{0<=y <infinity}\
  =>integral_(RR^2) Z rho(x, y) d lambda_2=integral_(RR^2) (e^(-x) sin(y)+sqrt(y) dot II{y > 2}) e^(-2y) dot II{0 <= x <=2} dot II{0<=y <infinity} d lambda_2=\
  =integral_(RR^2) e^(-x) sin(y) e^(-2y) dot II{0 <= x <=2} dot II{0<=y <infinity} d lambda_2+integral_(RR^2) sqrt(y) dot II{y > 2} e^(-2y) dot II{0 <= x <=2} dot II{0<=y <infinity} d lambda_2\
  =integral_0^2 e^(-x) d x integral_0^infinity e^(-2y) sin(y) d y+integral_0^2 d x integral_2^infinity e^(-2y) sqrt(y) d y
$
Значение интеграла не представляется в нормальном виде, поэтому оставлю так. Найдём матож квадрата, чтобы посчитать дисперсию:
$
  EE[Z^2(X, Y)] =integral_(RR^2) Z^2 rho_((X,Y))(x, y) d x d y=integral_(RR^2) (e^(-x) sin(y)+sqrt(y) dot II{y > 2})^2 e^(-2y) dot II{0 <= x <=2} dot II{0<=y <infinity} d lambda_2\
$
Этот интеграл аналогично раскрывается по линейности и сводится к повторным, но очень много считать...
]
#answer[
  $
    EE[Z] = integral_0^2 e^(-x) d x integral_0^infinity e^(-2y) sin(y) d y+integral_0^2 d x integral_2^infinity e^(-2y) sqrt(y) d y
  $
Дисперсия выражается через матож квадрата.
]
#pagebreak()
#problem(name: 4)[
Пусть $X, Y$ независимые нормальные стандартные случайные величины $(cal(N)(0,1))$. Найдите математическое ожидание и дисперсию случайной величины
$
  Z=X^2+Y^2
$
]
#solution[
$
  EE[Z] =integral Z(X, Y) d PP = integral_(RR^2) Z rho_((X,Y)) d lambda_2=integral_(RR^2) (x^2+y^2) dot II{0<=x<=1} dot II{0<=y<=1} d x d y=\
  =integral_0^1 d x integral_0^1 x^2 + y^2 d y=2/3\
  EE[Z^2] = integral_0^1 d x integral_0^1 (x^2 + y^2)^2 d y=28/45\
  DD[Z]=EE[Z^2]-(EE[Z])^2=28/45-4/9=8/45
$
]
#answer[
$
  EE[Z]=2/3\
  DD[Z]=8/45
$
]
#pagebreak()
#problem(name: 5)[
Пусть $X, Y$ независимые стандартные нормальные случайные величины. Найдите $EE[e^((X Y)/2)]$.
]
#solution[
$
  EE[e^((X Y)/2)]=integral_(RR^2) e^((x y)/2) dot II{0<=x<=1} dot II{0<=y<=1} d x d y=integral_0^1 d x integral_0^1 e^((x y)/2) d y tilde 1.1403\
  ("он не считается нормально")
$
]
#answer[
$
  1.1403
$
]
#pagebreak()
#problem(name: 6)[
Пусть $PP$ распределение вероятностей последовательности $n$ испытаний Бернулли, $w=(w_1,..,w_n), w_i=1,0$ с вероятностями $p$ и $1-p$ соответственно. Найдите $PP(w_1=1|w_1+...+w_n=m).$
]
#solution[
$
  PP(w_1=1|w_1+...+w_n=m)=(PP(w_1=1 sect w_1+...+w_n=m))/(PP(w_1+...+w_n=m)).\
  PP(w_1+...+w_n=m)=binom(n,m) p^m (1-p)^(n-m)\
  PP(w_1=1 sect w_1+...+w_n=m)=binom(n -1, m-1)p^(m)(1-p)^(n-m)\
  =>PP(w_1=1|w_1+...+w_n=m)=(binom(n -1, m-1)p^(m)(1-p)^(n-m))/(binom(n,m) p^m (1-p)^(n-m))=m/n
$
]
#answer[
$
  m/n
$
]
#pagebreak()
#problem(name: 7)[
В сумке находятся две монеты. Одна монета симметричная, а другая --- нет: если ее подбросить, то она падает на землю гербом вверх с вероятностью 0.6. Наугад вытащили одну монету и подбросили. Она упала гербом вверх. Какова вероятность того, что та же самая монета упадет гербом вверх, если ее подбросить снова?
]
#solution[
Пусть $A-$симметричная монета, $B-$ нет. $PP(A)=PP(B)=1/2$. Пусть $G_1-$первый бросок монеты, при котором она падает гербом вверх. $PP(G_1|A)=1/2, PP(G_1|B)=0.6$. Пусть $G_2-$ второй бросок монеты, при котором она падает гербом вверх. Тогда
$
  PP(G_2|G_1)=PP(A|G_1) dot PP(G_2|A)+PP(B|G_1) dot PP(G_2|B)\
  PP(G_1)=PP(A) dot PP(G_1|A)+PP(B) dot PP(G_1|B)=0.55\
  PP(A|G_1)=(PP(A) dot PP(G_1|A))/(PP(G_1))=5/11\
  PP(B|G_1)=6/11\
  =>PP(G_2|G_1)=5/11 dot 1/2 + 6/11 dot 0.6=61/110
$
]
#answer[
$
  61/110
$
]