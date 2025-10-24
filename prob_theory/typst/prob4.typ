#import "../../exam_template.typ": *
#let title = "ДЗ 4"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория вероятностей"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Покажите, что если $A_n in F$ при всех $n in NN$, где $F-$ некоторая $sigma$-алгебра, то $lim sup A_n, lim inf A_n in F$. 
]
#solution[
Если $lim sup A_n = emptyset$, то утверждение тривиально. Пусть $lim sup A_n != emptyset$. Тогда рассмотрим $B_n = union.big_(j=n)^infinity A_j=> B_n in F$(по определению $sigma$-алгебры). Тогда $sect.big_(i=1)^infinity B_i$ также лежит в $F$(по предложению 2.1.7). Заметим, что $sect.big_(i=1)^infinity B_i=lim sup A_n$. Действительно, $w in B_n => exists k >= n: w in A_k$. $w in sect.big_(i=1)^infinity B_i <==> forall n in NN space exists k >= n: w in A_k$, что соответствует определению $lim sup A_n$.\
Рассмотрим $C_n = sect.big_(j=n)^infinity A_j. C_n in F$(предложение 2.1.7). Тогда $union.big_(i=1)^infinity C_i in F$. Заметим, что $union.big_(i=1)^infinity C_i=lim inf A_n$. 
]
#answer[
ч.т.д
]
#pagebreak()
#problem(name: 2)[
Найдите $lim inf A_n$ и $lim sup A_n$ для $A_1 subset A_2 subset ... subset A_n subset A_(n+1) subset ... $ .
]
#solution[
Заметим, что для каждого элемента $w in lim sup A_n$ существует такое $k in NN$, что $w in A_k$ и $w in.not A_l space forall l < k$. Пусть $T-$ множество всех таких $k$. Пусть $t = min{T}$. Тогда $lim sup A_n= union.big_(j=t)^infinity A_j$. Заметим, что в данном случае для $lim inf A_n$ верна та же конструкция, поэтому оба множества равны.
]
#answer[
описано в решении)
]
#pagebreak()
#problem(name: 3)[
Покажите, что если $A$ алгебра и $union.big_(i=1)^infinity A_i in A$ для всяких ${A_i}_(i in NN)$ таких, что $A_i sect A_j = emptyset$ при $i != j$, то $A$ является $sigma$-алгеброй.
]
#solution[
Возьмём произвольную последовательность множеств $B_1, B_2, ... in A$. Достаточно показать, что $union.big_(i=1)^infinity B_i in A$. Пусть $C_n = B_n \\ union.big_(i=1)^(n - 1) B_i, C_1 = B_1$. $union.big_(i=1)^(n - 1) B_i in A$ по определению алгебры. Тогда $B_n \\ union.big_(i=1)^(n - 1) B_i in A$ как пересечение $B_n$ и дополнения к $union.big_(i=1)^(n - 1) B_i$. Множества $C_i$ попарно не пересекаются по построению и $union.big_(i=1)^infinity C_i=union.big_(i=1)^infinity B_i$. $union.big_(i=1)^infinity C_i in A$ по условию $=> union.big_(i=1)^infinity B_i in A$. Остальные свойства наследуются от свойств алгербы, значит $A$ ещё и $sigma$-алгебра. Приплыли.
]
#answer[
Показали
]
#pagebreak()
#problem(name: 4)[
Покажите, что найдётся такой счётный набор $S subset 2^RR$, который породит $B(RR)=sigma(S)$.
]
#solution[
В качестве $S$ можно взять множество интервалов с рациональными концами, оно счётное:
$
  S = {(a, b) : a, b in QQ, a < b}
$
Так как каждый элемент из S является открытым множеством, то $sigma(S) subset.eq B(RR)$. Покажем включение в другую сторону. Пусть $A-$ открытое множество. Для произвольного $x in A$ верно, что $forall epsilon > 0 space exists$ интервал $(x - epsilon, x+epsilon) subset A$. Так как множество рациональных чисел всюду плотно, то внутри этого интервала можно выбрать $a < b in QQ: x in (a, b) subset A$. Получаем, что $A=union.big {(a, b) in S:(a, b) subset A}$. Но множество интервал с рациональными концами является подмножеством $S$, значит $A$ мы представили как счётное объединение элементов из $S$, значит $A subset.eq sigma(S)$. Произвольное открытое множество лежит в $sigma(S)=>B(RR) subset.eq sigma(S)$.
]
#answer[
ч.т.д
]
#pagebreak()
#problem(name: 5)[
Пусть $S={(a, b] union [-b, -a) | a < b}$. Покажите, что $sigma(S) < B(RR)$. 
]
#solution[
Рассмотрим $s in sigma(S)$. $s in B(RR)$, так как любой октрытый интервал лежит в $B(RR)=>sigma(S) <= B(RR)$. 
]