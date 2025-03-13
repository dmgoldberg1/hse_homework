#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 8"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория чисел"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Найдите все первообразные корни по модулю 11, лежащие на интервале от 0 до 11.
]
#solution[
2 - корень($"ord"_11 2 = phi(11)$)$=> 6$ тоже корень как обратный вычет. $(3, phi(11))=1 => 2^3-$ корень и 7 тоже корень как обратный вычет. Всего существует $phi(phi(11))=4$ корня, мы их нашли. 
]
#answer[
2,6,7,8
]
#pagebreak()

#problem(name: 2)[
Докажите, что число $-2$ является первообразным корнем по модулю каждого простого числа вида $2p + 1$, где $p-$ тоже простое, $p equiv -1 space (mod 4)$.
]
#solution[
Покажем, что -2 является первообразным корнем. Так как показатель является делителем $phi(2p+1)=2p$, проверим, что:
$
  cases((-2)^2 equiv.not 1 space (mod 2p+1), (-2)^p equiv.not 1space (mod 2p+1)).
$
Первое сравнение верно, так как $2p+1 > 5, 4+1 =5 equiv.not 0 space (2p +1)$.\
Второе сравнение докажем от противного. Пусть $(-2)^p equiv 1space (mod 2p+1)$. Тогда для $q=2p+1$ имеем $(-2)^((q-1)/2) equiv 1 space (mod q)=> ((-2)/q)=1$ по критерию Эйлера. С другой стороны:
$
  display(((-2)/q)=((-1)/q) dot (2/q)=(-1)^p dot (-1)^((q^2 - 1)/8)=-1 dot (-1)^((4p^2+4p)/8)=-1 dot (-1)^((p dot (p + 1))/2)=-1)("так как" 4 | p+ 1).
$
Получили противоречие, значит второе сравнение верно, значит =2 является первообразным корнем.
]
#answer[
ч.т.д
]
#pagebreak()

#problem(name: 3)[
Пусть $P-$ произведение всех положительных первообразных корней по модулю 79. Докажите, что $P equiv 1 space (mod 79).$
]
#solution[
Пусть, $g-$ первообразный корень, тогда все числа вида $g^k, (k, phi(79))=1$ тоже первообразные корни. Тогда
$
  display(P=g^(sum_(1<k<78 \ (k, 78)=1) k) =g^(78 dot phi(78)/2)=g^936)
$
Значение суммы такое, так как все числа, взаимопростые с 78, делятся на пары вида $n,78-n$, всего пар $phi(78)/2=12$. Заметим, что $g^78 equiv 1 space (mod 79) => (g^78)^12 equiv 1^12 space (mod 79)=> g^936 equiv 1 space (mod 79)=> P equiv 1 space (mod 79)$.
]
#answer[
ч.т.д
]
#pagebreak()

#problem(name: 4)[
Пусть $g-$ первообразный корень по модулю $m$ и пусть $k in NN$. Докажите, что
$
  "ord"_m (g^k)=phi(m)/((k,phi(m))).
$
]
#solution[
Пусть $d$ такое наименьшее число, что
$
  (g^k)^d equiv 1 space (mod m) => phi(m) | k d("Теорема 22 из лекции")\
  => k d equiv 0 space (mod phi(m))
$
Тогда $k=(k, phi(m)) dot k^prime, phi(m)=(k,phi(m)) dot m^prime, (k^prime,m^prime)=1 =>$
$
  => (k, phi(m)) dot k^prime dot d equiv 0 space (mod  space (k,phi(m)) dot m^prime)\
  => k^prime dot d equiv 0 space (mod m^prime) <==> d equiv 0 space (mod m^prime)=> d=m^prime=phi(m)/((k,phi(m)))
$
Что и требовалось доказать.
]
#answer[
ч.т.д
]