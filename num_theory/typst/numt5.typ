#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 5"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория чисел"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
  Решите сравение $x^3-17x^2-7x+11 equiv 0 space (mod 54)$.
]
#solution[
  Исходное сравнение равносильно системе
$
  cases(x^3-17x^2-7x+11 equiv 0 space (mod 2),x^3-17x^2-7x+11 equiv 0 space (mod 3^3))<==> cases(x equiv 1 space (mod 2),x^3-17x^2-7x+11 equiv 0 space (mod 3^3))
$
Методом подъема решений решим второе сравение
$
  x^3-17x^2-7x+11 equiv 0 space (mod 3)=>cases(delim: "[", x equiv 1 space (mod 3),x equiv 2 space (mod 3))
$
Поднимаем 1
$
  x=1+3t\
  f(1+3t) equiv 0 space (mod 9) <=>f(1)+3t f prime(1) equiv 0 space (mod 9) <=> -12+3t dot (-2) equiv 0 space (mod 9)<=>-3+3t equiv 0 space (mod 9)<=>\
  <=> t equiv 1 space (mod 3) => t = 3t_1+1 => x= 4+9t_1 => x equiv 4 space (mod 9)\
  f(4+9t_1) equiv 0 space (mod 27) <=> f(4) +9t_1 f prime(4) equiv 0 space (mod 27) <=>9+9t_1 dot 1 equiv 0 space (mod 27) <=> t_1 equiv 2 space (mod 3)=>\
  =>t_1=2+3t_2=>x =22+27t_2=>x equiv 22 space (mod 27)
$
Поднимаем 2
$
  x=2 + 3t\
  f(2+3t) equiv 0 space (mod 9) <=> f(2)+3t f prime(2) equiv 0 space (mod 9) <=>0+0 equiv 0 space (mod 9) => t equiv 0;1;2 space (mod 3)\
  => cases(delim: "[", x equiv 2 space (mod 9),x equiv 5 space (mod 9),x equiv 8 space (mod 9))
$
Поднимаем 2
$
  x = 2 + 9t\
  f(2+9t) equiv 0 space (mod 27) <=> f(2)+9t f prime(2) equiv 0 space (mod 27) <=>9+9t dot 0 equiv 0 space (mod 27), "но" 9 equiv.not 0 space (mod 27) =>\
  "не поднимается"
$
Поднимаем 5
$
  x=5+9t\
  f(5+9t) equiv 0 space (mod 27) <=> f(5) +9t f prime(5) equiv 0 space (mod 27) <=>0+9t dot 0 equiv 0 space (mod 27) <=>\
  <=> t equiv 0;1;2 space (mod 3)=> x equiv 5;14;23 space (mod 27)
$
Поднимаем 8
$
  x = -1 + 9t\
  f(-1 +9t) equiv 0 space (mod 27) <=> f(-1) + 9t f prime(-1) equiv 0 space (mod 27) <=> 0+9t dot 0 equiv 0 space (mod 27) <=>\
  <=> t equiv 0;1;2 space (mod 3)=> x equiv 26;8;17 space (mod 27)
$
Итого, имеем систему
$
  cases(x equiv 1 space (mod 2), x equiv (22;5;14;23;26;8;17) space (mod 27))
$
Общее решение имеет вид $x=27k+a=> 27k+a equiv 1 space (mod 2)=> k+a equiv 1 (mod 2)=>  a space "и" space k$ разной четности.
1. $a=22=>k=2m+1=>x=27(2m+1)+22=54m+49$\
2. $a=5=>k=2m=>x=27(2m)+5=54m+5$\
3. $a=14=>k=2m+1=>x=27(2m+1)+14=54m+41$\
4. $a=23=>k=2m=>x=27(2m)+23=54m+23$\
5. $a=26=>k=2m+1=>x=27(2m+1)+26=54m+53$\
6. $a=8=>k=2m+1=>x=27(2m+1)+8=54m+35$\
7. $a=17=>k=2m=>x=27(2m)+17=54m+17$
]
#answer[
  $x equiv 49,5,41,23,53,35,17space  (mod 54)$
]
#pagebreak()

#problem[
Найдите количество решений сравнения $x^2-25 equiv 0 space (mod 16^19 dot 19^91 dot 91^16)$
]
#solution[
Исходное сравение равносильно системе
$
  cases(x^2 -25 equiv 0 space (mod 2^76),x^2 -25 equiv 0 space (mod 19^91),x^2 -25 equiv 0 space (mod 13^16),x^2 -25 equiv 0 space (mod 7^16))
$
Заметим, что $25 equiv 1 space (mod 8)=>$ сравение $x^2 -25 equiv 0 space (mod 2^76)$ имеет ровно 4 решения(общее утверждение доказано на семинаре). 19 не делит 25, 13 не делит 25, 7 не делит 25, значит сравнения $x^2 -25 equiv 0 space (mod 19^91),x^2 -25 equiv 0 space (mod 13^16),x^2 -25 equiv 0 space (mod 7^16)$ имеют ровно по два решения соответственно(общее утверждение доказано на семинаре). Значит всего $4 dot 2 dot 2 dot 2=32$ решения.
]
#answer[
  32
]
#pagebreak()

#problem[
  Пусть $p-$нечетное простое. Докажите, что количество решений сравнения
$
  x^2 equiv y^2 space (mod p)
$
равно $2p-1.$
]
#solution[
Пусть $y^2 equiv 0 space (mod p)<=> y equiv 0 space (mod p)$, тогда сравение $x^2 equiv 0 space (mod p)$ имеет единственное решение $x equiv 0 space (mod p)$. Далее считаем, что $x$ и $y$ не сравнимы с нулем по модулю $p$. У нас есть $p-1$ вариант зафиксировать вычет для $y$ по модулю $p$. Для каждого такого вычета сравение $x^2 equiv y^2 space (mod p)$ будет иметь ровно 2 решения, так как $p$ не делит $y$. Имеем $2 dot (p-1)+1=2p-1$ решений.
]
#answer[
  ч.т.д
]
#pagebreak()

#problem[
  Докажите, что сравение $(x^2-a b)(x^2-b c)(x^2-a c) equiv 0 space (mod p)$ разрешимо при любом простом $p$ и любых $a,b,c in ZZ$.
]
#solution[
Это сравение разрешимо, если хотя бы одна из скобок делится на $p$. Пусть это не так, тогда числа $a b, b c, a c$ являются квадратичными невычетами. C одной стороны, $a b dot b c dot a c=a^2b^2c^2=(a b c)^2$ является квадратичным вычетом(так как это квадрат некоторого числа). Но $a b dot b c$ является квадратичным вычетом(произведение квадратичных невычетом--квадратичный вычет, доказано на лекции). Произведение квадратичного вычета и невычета также является квадратичным невычетом(следует из критерия Эйлера квадратичности вычета). Тогда $(a b dot b c) dot a c$ является квадратичным невычетом. Получили противоречие, значит среди $a b, b c, a c$ есть квадратичный вычет, значит какая-то скобка кратна $p$.
]
#answer[
  ч.т.д
]
#pagebreak()

#problem[
Вычислите сумму символов Лежандра\
$
а) display(sum_(x=0)^58) ((15x+79)/59); б) display(sum_(x=0)^57) ((15x+79)/59)
$
]
#solution[
а) 59 не делит 15$=>$ сумма нулевая(на семинаре нашли все возможные значения суммы $display(sum_(x=0)^(p-1) ((a x + b)/p))$)\
б) $display(sum_(x=0)^57 ((15x+79)/59)) = display(sum_(x=0)^58 ((15x+79)/59)- ((15 dot 58 + 79)/59)=0-((949)/59)=-1 space(949 equiv 5 space (mod 59)-"кв. вычет")))$
]
#answer[
  0;-1
]