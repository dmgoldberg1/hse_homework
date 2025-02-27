#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 6"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория чисел"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
  Пользуясь свойствами символа Лежандра, выясните, разрешимо ли сравнение
  $
    x^2 equiv 219 space (mod 383)
  $
]
#solution[
Вычислим символ Лежандра $display((219/383))$
$
  display((219/383) = (3/383) dot (73/383)=1 dot (383/73) dot (-1)^((383 -1)/2 dot (73 - 1)/2)=(18/73)=(9/73) dot (2/73)=1 dot 1=1)\
  => " разрешимо"
$
]
#answer[
  разрешимо
]
#pagebreak()

#problem(name: 2)[
  Пусть $p-$простое число, $p>5$. Докажите, что
$
  (5/p)=cases(1", если" p equiv plus.minus 1 space (mod 5), -1", если" p equiv plus.minus 2 space (mod 5)).
$
]
#solution[
  $
    (5/p)=(p/5) dot (-1)^((p-1)/2 dot (5 -1)/2)=(p/5)=cases(1", если" p equiv plus.minus 1 space (mod 5)("из свойств для "(-1/p)), -1", если" p equiv plus.minus 2 space (mod 5)("из свойств для "(2/p)))
  $

]
#answer[
ч.т.д
]
#pagebreak()

#problem(name: 3)[
  Найдите количество решений сравнения
$
  x^2+2x+72 equiv 0 space (mod 128 dot 151 dot 199)
$
]
#solution[
$
  x^2+2x+72 equiv 0 space (mod 128 dot 151 dot 199) <==> (x+1)^2 equiv -71 space (mod 2^7 dot 151 dot 199)
$
Это сравнение равносильно системе

$
 cases((x+1)^2 equiv -71 space (mod 2^7),(x+1)^2 equiv -71 space (mod 151), (x+1)^2 equiv -71 space (mod 199))
$
Пользуясь задачей 4 из 5 семинара, первое сравнение разрешимо, так как $-71 equiv 1 space (mod 8)$, при этом оно имеет ровно 4 решения. Выясним, разрешимо ли второе и третье сравнение, для этого вычислим соответстующие символы Лежандра.
$
  ((-71)/151)=(80/151)=(2^4/151) dot (5/151)=1 dot 1 = 1\
  ((-71)/199)=(128/199)=(2^7/199)=1
$
Так как эти сравнения разрешимы, то по задаче 3 из 5 семинара они имеют по два решения. Значит всего 16 решений.
]
#answer[
  16
]
#pagebreak()

#problem(name: 4)[
Пусть $n in NN.$ Докажите, что если число Ферма $f_n=2^2^n + 1$ является простым, то
$
  3^((f_n - 1)/2) equiv -1 space (mod f_n).
$
]
#solution[
По критерию Эйлера:
$
  a^((p-1)/2) equiv (a/p) space (mod p) => \
  3^((f_n - 1)/2) equiv (3/f_n) space (mod f_n)\
  (3/f_n)= (f_n/3) dot (-1)^((3-1)/2 dot (f_n - 1)/2)=(f_n/3)("так как" f_n equiv 1 space (mod 4))
$
Исследуем $f_n$ по модулю 3
$
  2^2 equiv 1 space (mod 3) => (2^2)^2^(n-1) equiv 1 space (mod 3)=> 2^2^n equiv 1 space (mod 3)=> f_n= 2^2^n +1 equiv 1+1 equiv 2 space (mod 3)\
  => (f_n/3)=(2/3)=-1=>3^((f_n - 1)/2) equiv -1 space (mod f_n)
$
]
#answer[
  ч.т.д
]
#pagebreak()

#problem(name: 5)[
Пусть $p,q-$простые числа, причём $q=2p+1, p equiv 3 space (mod 4)$. Докажите, что число Мерсенна $M_p=2^p - 1$ является простым числом только при $p=3$.
]
#solution[
$p= (q-1)/2$, при этом $2^((q-1)/2) equiv (2/q) equiv (-1)^((q^2 - 1)/8)equiv (-1)^((4p^2+4p+1-1)/8)equiv (-1)^((p dot (p +1))/2)equiv 1 space (mod q)$(так как $p + 1 equiv 0 space (mod 4)$). $M_p=2^((q-1)/2)-1 equiv 0 space (mod q)$, но $M_p$ должно быть простым, значит $2^((q-1)/2) =q$, откуда $q=7=>p=3.$
]
#answer[
  ч.т.д
]