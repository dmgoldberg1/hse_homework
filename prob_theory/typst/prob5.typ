#import "../../exam_template.typ": *
#let title = "ДЗ 5"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория вероятностей"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 2)[
Пусть $(X,F, mu)$ пространство с мерой, $A in F$ некоторое фиксированное множество. Покажите, что $mu^' (E)=mu(A sect E)$ будет мерой на $(X, F).$\
Пусть $mu_1,...,mu_n$ меры на $(X, F)$ и $a_1,...,a_n$ неотрицательные вещественные числа. Покажите, что
$
  mu(A) = a_1 mu_1(A)+...+a_n mu_n(A), A in F
$
будет мерой на $(X, F)$.
]
#solution[
  a)
$
  mu^' (emptyset) = mu(A sect emptyset) = mu(emptyset) = 0\
  mu^' (union.big_(i=1)^infinity E_i)=mu(union.big_(i=1)^infinity E_i sect A)=sum_(i=1)^infinity mu(E_i sect A) = sum_(i=1)^infinity mu^' (E_i)\
  => mu^'-"мера"
$
b)
$
  mu(emptyset) = a_1 mu_1(emptyset)+...+a_n mu_n (emptyset) = 0\
  mu(union.big_(i=1)^infinity A_i) = a_1 mu_1(union.big_(i=1)^infinity A_i)+...+a_n mu_n (union.big_(i=1)^infinity A_i)=a_1 sum_(i=1)^infinity mu_1 (A_i)+...+a_n sum_(i=1)^infinity mu_n (A_i)=\
  =sum_(i=1)^infinity a_1 mu_1(A_i) + ...+a_n mu_n (A_i)=sum_(i=1)^infinity mu(A_i)\
  =>mu-"мера"
$
]
#answer[
ч.т.д.
]
#pagebreak()
#problem(name: 3)[
Пусть $X$ несчетное бесконечное множество, $F=2^X space sigma$-алгебра всех подмножеств $X$. Покажите, что
$
  mu(A)=cases(0", если" A" не более чем счетное", +infinity", иначе")
$
является мерой на $(X, F)$.
]
#solution[
$
  mu(emptyset)=0\
$
Если в $union.big_(i=1)^infinity A_i$ все $A_i$ не более чем счётные, то счётное объединение не более чем счётных множеств есть не более чем счётное множество, значит $display(mu(union.big_(i=1)^infinity A_i)=0=sum_(i=1)^infinity mu(A_i))$.\
Если в $union.big_(i=1)^infinity A_i$ есть кто-то более чем счётный, то объединение будет тоже будет более чем счётно, значит $display(mu(union.big_(i=1)^infinity A_i)=+infinity=sum_(i=1)^infinity mu(A_i))$.\
Итого $mu$ является мерой.
]
#answer[
ч.т.д
]
#pagebreak()
#problem(name: 4)[
Пусть $(X, F, mu)$ пространство с мерой и пусть $cal(G)={A | A in F, mu(A)=0}$. Выясните, является ли $cal(G) space sigma$-алгеброй? Пусть $A in cal(G), B in F$. Проверьте, что $A sect B in cal(G)$. Проверьте, что $cal(G)$ замкнуто относительно взятия счётных объединений своих элементов.  
]
#solution[
Если $mu(X)!= 0 => X in.not cal(G)=>cal(G)$ не является сигма алгеброй. Если $mu(X)=0=>X in cal(G)$. Так как $mu(X)=0$, то $cal(G)=F$, но $F$ сигма алгебра, значит $cal(G)$ сигма алгебра.\
Проверим, что $A sect B in cal(G)$. $A sect B in F=>mu(A sect B) <= mu(A)=0=>mu(A sect B)=0=>A sect B in cal(G)$.\
Проверим последнее утверждение. Рассмотрим $display(union.big_(i=1)^infinity) A_i, A_i in cal(G)$.
$
  mu(union.big_(i=1)^infinity A_i) <= sum_(i=1)^infinity mu(A_i)=0=>mu(union.big_(i=1)^infinity A_i)=0=>union.big_(i=1)^infinity A_i in cal(G).
$
]
#answer[
ч.т.д.
]