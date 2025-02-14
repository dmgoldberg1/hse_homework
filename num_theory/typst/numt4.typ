#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 4"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория чисел"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
  Докажите, что $p-$ простое тогда и только тогда, когда
$
  (p-2)! equiv 1 space (mod p)
$
]
#solution[
1. Докажем слева направо. Пусть $p-$ простое, тогда по теореме Вильсона
$
  (p-1)! equiv -1 space (mod p)\
  (p-1) dot (p-2)! equiv -1 space (mod p)\
  -1 dot (p-2)! equiv -1 space (mod p)\
  (p-2)! equiv 1 space (mod p) => " доказали"
$
2. Докажем справа налево. Пусть $p=p_1^alpha_1 dot ... dot p_n^alpha_n$. Тогда по КТО исходное сравнение равносильно системе сравнений
$
  cases((p-2)! equiv 1 space (mod p_1^alpha_1),...,(p-2)! equiv 1 space (mod p_n^alpha_n))
$
Рассмотрим произвольное сравение из системы $(p-2)! equiv 1 space (mod p_i^alpha_i)$. Заметим, что $p_i^alpha_i <= p-2$(так как $p_i^alpha_i$ член разложения на простые множители и $(p-1,p)=1$). Тогда в выражении $(p-2)! =(p-2) dot (p-1) dot... dot 1$ обязательно встретится множитель, в точности равный $p_i^alpha_i=>$ левая часть сравнения обнулится и мы получим противоречие. Значит $p$ обязано быть простым.
]
#answer[
ч.т.д
]
#pagebreak()

#problem[
  Решите систему сравнений
$
  cases(x equiv 4 space (mod 15), x equiv -1 space (mod 16), x equiv 11 space (mod 17))
$
]
#solution[
По КТО
$
  x equiv sum_(i=1)^3 b_i dot M_i space (mod 4080)\
  M_1=272;M_2=255;M_3=240\
  b_1 dot 272 equiv 4 space (mod 15) => b_1=17\
  b_2 dot 255 equiv -1 space (mod 16) => b_2=1\
  b_2 dot 240 equiv 11 space (mod 17) => b_3=31\
  => x equiv 4624+255+7471 space (mod 4080)\
  => x equiv 79 space (mod 4080)
$
]
#answer[
  $x equiv 79 space (mod 4080)$
]
#pagebreak()

#problem[
Решите сравения
$
  а) space x^2-1 equiv 0 space (mod 15) space б) space x^2-1 equiv 0 space (mod 56)
$
]
#solution[
1. По КТО перепишем сравнение как систему
$
  cases(x^2 equiv 1 space (mod 3), x^2 equiv 1 space (mod 5)) <==> cases(cases(delim: "[", x equiv 1 space (mod 3), x equiv -1 space (mod 3)), cases(delim: "[", x equiv 1 space (mod 5), x equiv -1 space (mod 5)))
$
(1)
$
cases(x equiv 1 space (mod 3), x equiv 1 space (mod 5)) => x equiv 1 space (mod 15)
$
(2)
$
  cases(x equiv -1 space (mod 3), x equiv -1 space (mod 5)) => x equiv -1 space (mod 15)
$
(3)
$
  cases(x equiv 1 space (mod 3), x equiv -1 space (mod 5)) => x equiv 4 space (mod 15)
$
(4)
$
  cases(x equiv -1 space (mod 3), x equiv 1 space (mod 5)) => x equiv 11 space (mod 15)
$
2. По КТО перепишем сравение как систему
$
  cases(x^2 equiv 1 space (mod 2^3), x^2 equiv 1 space (mod 7)) <==> cases(cases(delim: "[", x equiv 1 space (mod 2^3), x equiv -1 space (mod 2^3), x equiv 3 space (mod 2^3), x equiv 5 space (mod 2^3)), cases(delim: "[", x equiv 1 space (mod 7), x equiv -1 space (mod 7)))
$
(1)
$
cases(x equiv 1 space (mod 2^3), x equiv 1 space (mod 7)) => x equiv 1 space (mod 56)
$
(2)
$
cases(x equiv -1 space (mod 2^3), x equiv 1 space (mod 7)) => x equiv 15 space (mod 56)
$
(3)
$
cases(x equiv 3 space (mod 2^3), x equiv 1 space (mod 7)) => x equiv 43 space (mod 56)
$
(4)
$
cases(x equiv 5 space (mod 2^3), x equiv 1 space (mod 7)) => x equiv 29 space (mod 56)
$
(5)
$
cases(x equiv 1 space (mod 2^3), x equiv -1 space (mod 7)) => x equiv 41 space (mod 56)
$
(6)
$
cases(x equiv -1 space (mod 2^3), x equiv -1 space (mod 7)) => x equiv -1 space (mod 56)
$
(7)
$
cases(x equiv 3 space (mod 2^3), x equiv -1 space (mod 7)) => x equiv 27 space (mod 56)
$
(8)
$
cases(x equiv 5 space (mod 2^3), x equiv -1 space (mod 7)) => x equiv 13 space (mod 56)
$
]
#answer[
  1. $x equiv 1;-1;4;11 space (mod 15)$\
  2. $x equiv 1;-1;15;43;29;41;27;13 space (mod 56)$
]
#pagebreak()

#problem[
  Решите уравнение $phi(4^x 6^y)=2phi(35^z)$
]
#solution[
$
  phi(2^(2x+y) dot 3^y)=2phi(7^z dot 5^z)\
  phi(2^(2x+y)) dot phi(3^y)=2phi(7^z) dot phi(5^z)\
  (2^(2x+y) - 2^(2x+y-1)) dot (3^y - 3^(y-1))=2 dot (7^z-7^(z-1)) dot (5^z - 5^(z-1))\
  2^(2x+y-1) dot (2-1) dot 3^(y-1) dot (3 - 1)=2 dot 7^(z-1) dot (7-1) dot 5^(z-1) dot (5 - 1)\
  2^(2x+y) dot 3^(y-1)=2^4 dot 3 dot 7^(z-1) dot 5^(z-1)\
  => y-1=1 => y=2\
  2x+y=4=>x=1\
  z-1=0=>z=1
$
]
#answer[
$(x,y,z)=(1,2,1)$
]
#pagebreak()

#problem[
  Пусть $n in NN, n>=2, e in ZZ, (e, phi(n))=1$. Докажите, что отображение
$
  "Enc"_e (accent(a, macron))=accent(a^e, macron)
$
взаимно однозначно отражает $ZZ_n^*$ на себя.
]
#solution[
Докажем инъективность. Пусть $"Enc"_e (a)="Enc"_e (b) <==> a^e equiv b^e space (mod n)$. Так как $(e, phi(n))=1 => exists space d: e dot d equiv 1 space (mod phi(n))=>e dot d = t dot phi(n) +1$. Тогда $(a^e)^d equiv (b^e)^d space (mod n)=> a^(t dot phi(n)+1) equiv b^(t dot phi(n)+1) space (mod n)=> a equiv b space (mod n)$(по теореме Эйлера). Так как $a$ и $b$ $in ZZ_n^*$, то $a=b$. Доказали\

Докажем сюръективность. Опять же, так как $(e, phi(n))=1 => exists space d: e dot d equiv 1 space (mod phi(n))=>e dot d = t dot phi(n) +1$. Для сюръективности надо доказать, что для любого $k in ZZ_n^* space  exists a^e: a^e equiv k space (mod n)$. Для любого $k$ можем взять $a= k^d space (mod n)(d- "обратный вычет по" phi(n))=>(k^d)^e equiv k space (mod n)=> k^(t dot phi(n)+1) equiv k space (mod n)=> k equiv k space (mod n)$(по теореме Эйлера). Доказали.\

Значит отображение биективное.
]
#answer[
ч.т.д
]