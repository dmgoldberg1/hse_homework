#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 20"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Дискретная математика"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Является ли полной система функций {0, 1, $and$, EV}, где EV$(x,y,z)=0$ тогда и только тогда, когда количество единиц среди $x,y,z$ чётно?
]
#solution[
  Воспользуемся критерием Поста. $1 in.not T_0, 0 in.not T_1, "EV" in.not M("так как EV"(1,0,0)=1, "EV"(1,1,0)=0, (1,0,0)<(1,1,0)), and in.not S("так как" not 0 and not 1 != not(0 and 1)), and in.not L("так как многочлен Жегалкина для конъюнкции имеет вид" x y, " а это не линейная функция")=>$ по критерию Поста система функций является полной.
]
#answer[
  да
]
#pagebreak()

#problem(name: 2)[
  При каких $n>=2$ является полной система функций, состоящая из одной функции
$
  1 xor xor.big_(1<=i<j<=n) x_i and x_j?
$
]
#solution[
  Заметим, что в выражении $display(1+sum_(i=1)^(n-1) n-i =(n dot (n-1))/2)+1$ слагаемых и $n$ переменных. Функция не сохраняет ноль. Функция не будет сохранять единицу, если в ней чётное число слагаемых, то есть $(n dot (n-1))/2$ должно быть нечётным. Это происходит при $n equiv 2;3 space (mod 4)$. Далее считаем, что в выражении чётное число слагаемых. Упорядочим переменные по возрастанию индекса. Функция не является монотонной, так как $f(0,0,...,0)=1,f(0,..,1,1)=0("одно из слагаемых с переменными равно 1, остальные 0"), (0,...,0)<(0,...,1,1)$. Функция является самодвойственной при $n equiv 3 space (mod 4)$, так как $f(0,...,0,...,1)=1, not f(1,...,1,...,0)=1$(так как $n-1$ чётное и всего $n-1$ слагаемых с последней переменной, которые занулятся, останется чётное число единиц в итоговой сумме, а это ноль, при инвертировании 1). Функция не является самодвойственной при $n equiv 2 space (mod 4)$, так как $f(0,...,0,...,1)=1, not f(1,...,1,...,0)=0$(аналачно с предыдущем рассуждением, $n-1$ нечётное и в итоговой останется нечётное число единиц, а это 1, при инвертировании 0). Функция не является линейной по определению. По критерию Поста система является полной.
]
#answer[
  при $n equiv 2 space (mod 4)$
]
#pagebreak()

#problem(name: 3)[
  Докажите, что ${1,xor}$ является базисом для $L$.
]
#solution[
Заметим, что только единицами не выразить все линейные функции, также через $xor$ нельзя выразить все линейные функции, так как единица не выражается через $xor$($xor$ многих переменных на присваивании, где все переменными 0, даст 0). Через 1 и $xor$ можно выразить все линейные функции, так как 0 выражается как $1 xor 1$, тогда по определению линейных функций их все можно выразить через $1,0,xor$.
]
#answer[
  ч.т.д
]