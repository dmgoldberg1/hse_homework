#import "../../exam_template.typ": *
#let title = "ДЗ 14"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория вероятностей"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Пусть $xi_n arrow^PP xi, eta_n arrow^PP eta$. Покажите, что если $phi(x, y)$ непрерывная функция, то $phi(xi_n, eta_n) arrow^PP phi(xi, eta)$.
]
#solution[
Из непрывности:
$
  forall x_0, y_0 in Omega: forall epsilon > 0: exists delta>0: forall x,y in Omega: abs(x - x_0) < delta, abs(y-y_0) < delta => abs(phi(x, y) - phi(x_0, y_0)) < epsilon
$
Фиксируем $epsilon$, выбираем $delta$ из определения непрывности, тогда:
$
  PP(abs(phi(xi_n, eta_n) - phi(xi, eta)) < epsilon) >= PP(abs(xi_n - xi) < delta sect abs(eta_n - eta) < delta)("из монотонности меры")\
  =>PP(abs(phi(xi_n, eta_n) - phi(xi, eta)) >= epsilon) < PP(abs(xi_n - xi) >= delta) + PP(abs(eta_n - eta) >= delta) arrow 0, n arrow infinity("из сходимости по вероятности").\
$
Получили сходимость по вероятности.
]
#answer[
ч.т.д.
]
#pagebreak()
#problem(name: 2)[
Пусть $(xi_n - xi)^2 arrow^PP 0$. Показать, что $xi_n^2 arrow^PP xi^2$.
]
#solution[
$
PP(abs(xi_n - xi) >= epsilon) <= PP((xi_n - xi)^2 >= epsilon) arrow 0, n arrow infinity\
=> xi_n arrow^PP xi =>xi_n^2 arrow^PP xi^2("по лемме Слуцкого, так как "x^2 "непрерывна")
$
]
#answer[
ч.т.д.
]
#pagebreak()
#problem(name: 3)[
Покажите, что если $xi_n arrow^d C,$ где $C-$ постоянная, то имеет место сходимость по вероятности:
$
  xi_n arrow^d C => xi_n arrow^PP C
$
]
#solution[
$
  PP(abs(xi_n - C) >= epsilon)=PP(xi_n >= epsilon +C)+PP(xi_n <= C-epsilon)=1-F_xi_n (epsilon+C)+F_xi_n (C-epsilon)
$
Заметим, что $xi_n arrow^d xi <==> F_xi_n arrow F_xi$. Устремляя выражение выше к бесконечности по $n$, получаем\
$
  PP(abs(xi_n -C) >= epsilon)=1-F_C (epsilon+C)+F_C (C-epsilon)=1-1+0=0\
  => xi_n arrow^PP C
$
]
#answer[
ч.т.д.
]
#pagebreak()
#problem(name: 4)[
Пусть $xi_n$ последовательность случайных величин. Пусть $S_n=xi_1+...+xi_n$. Покажите, что если $xi_n arrow^cal(L_1) xi$, то $display(S_n"/"n arrow^cal(L_1) xi)$.
]
#solution[
$
  xi_n arrow^cal(L_1) xi <==> EE[abs(xi_n - xi)] arrow 0, n arrow infinity\
  EE[abs(S_n/n - xi)]=EE[1/n abs(sum_(k=1)^n xi_k - xi)]<=1/n sum_(k=1)^n EE[abs(xi_k - xi)]arrow 0, n arrow infinity\
  => S_n/n arrow^cal(L_1) xi
$
]
#answer[
ч.т.д.
]
#pagebreak()
#problem(name: 5)[
По первой лемме Бореля-Кантелли, если $display(sum_(n=1)^infinity PP(abs(xi_n) > epsilon) < infinity)$ для любого $epsilon >0 => xi_n arrow^("a.s.") 0$. Приведите пример, показывающий, что сходимость $xi_n arrow 0$ может иметь место и при условии $display(sum_(n=1)^infinity PP(abs(xi_n) > epsilon) = infinity)$.
]
#solution[
Рассмотрим последовательность случайных величин:
$
  xi_n = cases(0"," x in.not (0, 1/n), n"," x in (0, 1/n))\
$
Легко видеть, что $xi_n arrow 0$ и $display(sum_(n=1)^infinity PP(abs(xi_n) > epsilon)=sum_(n=1)^infinity 1/n = infinity)=>$ пример подходит.
]
#answer[
$
  xi_n = cases(0"," x in.not (0, 1/n), n"," x in (0, 1/n))\
$
]
#pagebreak()
#problem(name: 6)[
Пусть $((0, 1), cal(B)((0, 1), lambda))$ вероятностное пространство. $A_n =(0, 1/n)$ последовательность событий. Покажите, что $sum PP(A_n)=infinity$, но каждое $w$ из $(0, 1)$ может принадлежать только конечно числу множеств, то есть $PP$($A_n$ бесконечно часто)$=0$.
]
#solution[
$
  sum PP(A_n)=sum lambda((0, 1/n))=sum 1/n=infinity\
  PP(A_n "бесконечно часто")=PP(limsup A_n)=PP(sect.big_(n=1)^infinity union.big_(k =n)^infinity A_k)=lim_(n arrow infinity) PP(union.big_(k=n)^infinity A_k)=lim_(n arrow infinity) PP((0, 1/n))=\
  =lim_(n arrow infinity) 1/n =0.
$
Показали.
]
#answer[
ч.т.д.
]
#pagebreak()
#problem(name: 7)[
Приведите пример последовательности случайных величин такой, что с вероятностью единица $limsup xi_n=infinity,liminf xi_n=-infinity$, но тем не менее существует случайная величина $eta$ такая, что $xi_n arrow^PP eta$.
]
#solution[

]