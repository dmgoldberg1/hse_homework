#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 17"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Дискретная математика"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
Докажите, что при изоморфизме порядков антицепь переходит в антицепь.
]
#solution[
  Будем рассуждать от противного. Пусть антицепь переходит не в антицепь. Тогда среди образа антицепи найдется хотя бы одна пара сравнимых элементов. Так как отображение является изоморфизмом, то прообразы этой пары элементов тоже должны быть сравнимы, но это не так, так как прообразы лежат в антицепи, получили противоречие. Значит антицепь переходит в антицепь.
]
#answer[
ч.т.д
]
#pagebreak()

#problem[
  Пусть P, Q — такие линейные порядки на счётных множествах, что любой отрезок [x, y] конечен,
и в каждом из этих порядков есть наименьший элемент. Верно ли, что P изоморфен Q?
]
#solution[
  Так как $P$ и $Q$ есть линейные порядки на счетных множествах, то пронумеруем в них элементы в порядке возрастания. Тогда рассмотрим функцию $phi: P arrow Q$, которая элементу с номером $i$ из $P$ сопоставляет элемент с номером $i$ из $Q$. Эта функция биективная и если $x<y$ (номер $x<  "номер "y$), то $phi(x)<phi(y)$ (номер $phi(x)<$ номер $phi(y)$). Значит порядки изоморфны.
]
#answer[
Верно
]
#pagebreak()

#problem[
  Пусть $A={(n,k)in NN times NN:n>=k}$ и $B={(n,k)in NN times NN:n<=k}$. Рассмотрим ограничение
лексикографического порядка $NN times _(l e x) NN$ на эти множества. Изоморфны ли эти порядки на множествах $A$ и $B$?
]
#solution[
  Заметим, что при фиксированном $n$ количество пар вида $(n, k)$ в $A$ конечное количество, а в $B$ их бесконечно, но биекции между конечным подмножеством и бесконечным подмножеством не существует, значит эти порядки не изоморфны.
]
#answer[
  ч.т.д
]
