#import "../../exam_template.typ": *
#let title = "ДЗ 3"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Алгебра"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
  Сколько элементов порялков 2, 5, 10 и 25 в группе $ZZ_2 times ZZ_10 times ZZ_25$?
]
#solution[
1. Элементы порядка 2 это элементы, для которых выполнено
$
  cases(2g_1 equiv 0 space (mod 2), 2g_2 equiv 0 space (mod 10), 2g_3 equiv 0 space (mod 25)) =>"всего" 2 dot 2 dot 1 - 1=3 "элемента"
$
2. Элементы порядка 5 это элементы, для которых выполнено
$
  cases(5g_1 equiv 0 space (mod 2), 5g_2 equiv 0 space (mod 10), 5g_3 equiv 0 space (mod 25)) =>"всего" 1 dot 5 dot 5 - 1=24 "элемента"
$
3. Элементы порядка 10 это элементы, для которых выполнено
$
  cases(10g_1 equiv 0 space (mod 2), 10g_2 equiv 0 space (mod 10), 10g_3 equiv 0 space (mod 25)) =>"всего" 2 dot 10 dot 5 - 24 - 3 - 1=72 "элемента(вычитаем еще элементы порядков 2 и 5)"
$
4. Элементы порядка 25 это элементы, для которых выполнено
$
  cases(25g_1 equiv 0 space (mod 2), 25g_2 equiv 0 space (mod 10), 25g_3 equiv 0 space (mod 25)) =>"всего" 1 dot 5 dot 25 - 24 - 1 -=100 "элеменов(вычитаем еще элементы порядка 5)"
$
]
#answer[
3, 24, 72, 100
]
#pagebreak()

#problem(name: 2)[
Сколько подгрупп порядков 3 и 21 в нециклической абелевой группе порядка 63?
]
#solution[
Пусть $abs(A)=63-$группа из условия. Тогда $A tilde.eq ZZ_3 times ZZ_3 times ZZ_7$. Пусть $H subset.eq A, abs(H)=3 => H tilde.eq ZZ_3$. Групп порядка 3 столько, сколько элементов порядка 3 в группе $A$ делить пополам, так как в $ZZ_3$ два элемента порядка 3. Элементов порядка 3 в $A$ 8(ищем по аналогии с первым номером)$=>$ 4 подгруппы порядка 3.\
\
Пусть $H subset.eq A, abs(H)=21.$ $H tilde.eq ZZ_7 times ZZ_3 tilde.eq Z_21$. Найдём количество элементов порядка 21 в $ZZ_21$. Это есть $phi(21)=12$. Элементов порядка 21 в $A$ ровно $3 dot dot 3 dot 7 - 8 - 7=48$(вычитаем элементы порядка 3 и порядка 7). Итого подгрупп порядка 21 ровно $48/12 = 4$.
]
#answer[
4, 4
]
#pagebreak()

#problem(name: 3)[
При каком наименьшем $n in NN$ группа $ZZ_15 times ZZ_18 times ZZ_20$ изоморфна прямому произведению $n$ циклических групп?
]
#solution[
Заметим, что
$
  ZZ_15 tilde.eq ZZ_5 times ZZ_3\
  ZZ_18 tilde.eq ZZ_2 times ZZ_9\
  ZZ_20 tilde.eq ZZ_5 times ZZ_4\
  => ZZ_15 times ZZ_18 times ZZ_20 tilde.eq ZZ_5 times ZZ_3 times ZZ_2 times ZZ_9 times ZZ_5 times ZZ_4 tilde.eq ZZ_6 times ZZ_5 times ZZ_9 times ZZ_5 times ZZ_4 tilde.eq ZZ_30 times ZZ_9 times ZZ_5 times ZZ_4 tilde.eq\
  tilde.eq ZZ_30 times ZZ_20 times ZZ_9 tilde.eq ZZ_30 times ZZ_180
$
Значит исходная группа изоморфна прямому произведению двух циклических групп. Это и есть наименьшее значение, так как $n != 1$. Если $n=1$, то $exp(ZZ_15 times ZZ_18 times ZZ_20)="НОК"(15, 18, 20)=180$, но порядок группы равен $15 dot 18 dot 20 != 180 =>$ группа не является цикличной $=> n != 1$.
]
#answer[
  2
]
#pagebreak()
#problem(name: 4)[
  Пусть $k-$ наибольший порядок элементов конечной абелевой группы $A$. Докажите, что порядок любого элемента $A$ делит $k$.
]
#solution[
  
]

