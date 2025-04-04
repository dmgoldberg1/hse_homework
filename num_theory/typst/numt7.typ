#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 7"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория чисел"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template


#problem(name: 1)[
Выясните, разрешимо ли сравнение $x^2 equiv 3 space (mod 143).$
]
#solution[
Исходное сравнение равносильно системе
$
  cases(x^2 equiv 3 space (mod 13), x^2 equiv 3 space (mod 11))
$
Вычислим соответствующие символы Лежандра для проверки разрешимости сравнений
$
  (3/13)=(13/3)=(1/3)=1\
  (3/11)=-(11/3)=-(2/3)=1
$
Оба равны 1, значит исходное сравнение разрешимо.
]
#answer[
  разрешимо
]
#pagebreak()

#problem(name: 2)[
Выясните, разрешимо ли сравнение $x^2 equiv 3 space (mod 119).$
]
#solution[
  Исходное сравнение равносильно системе
$
  cases(x^2 equiv 3 space (mod 7), x^2 equiv 3 space (mod 17))
$
Вычислим соответствующие символы Лежандра для проверки разрешимости сравнений
$
  (3/7)=-(7/3)=-(1/3)=-1 => "система не разрешима, значит исходное сравнение не разрешимо."
$
]
#answer[
  нет
]
#pagebreak()

#problem(name: 3)[
  Вычислите сумму символов Якоби $display(sum_(n=1)^499 (n/1001))$.
]
#solution[
Заметим, что сумма символов Якоби $display(sum_(n=1)^1001 (n/1001))=0$. Эту сумму можно переписать как
$
  display(sum_(n=1)^499 (n/1001))+display(sum_(n=500)^1000 (n/1001)+(1001/10001))=0.
$
Заметим, что $display((n/1001)=((n-1001)/1001)=((1001-n)/1001) dot (-1/1001)=((1001-n)/1001)) =>$\
$
  => display(sum_(n=500)^1000 (n/1001))=display(sum_(n=1)^501 (n/1001))=display(sum_(n=1)^499 (n/1001))+display((500/1001)+(501/1001))=display(sum_(n=1)^499 (n/1001)) + 2.
$
Подставляя в верхнюю сумму, получаем, что
$
  2display(sum_(n=1)^499 (n/1001)) + 2 =0 => display(sum_(n=1)^499 (n/1001))=-1
$
]
#answer[
  -1
]
#pagebreak()

#problem(name: 4)[
Пусть $P-$нечётное число, $P>=3$. Докажите, что $display((2/P)=(-1)^[(P+1)/4]).$
]
#solution[
По свойтву символа Якоби
$
  display((2/P)=(-1)^((P^2-1)/8)=cases(1", если" P equiv plus.minus 1 space (mod 8),-1", если" P equiv plus.minus 3 space (mod 8)))
$
Рассмотрим 4 случая:\
1. $P equiv 1 space (mod 8)=>P=8n + 1$\
   $[(P+1)/4]=[(8n+2)/4]=[2n+0.5]=2n=>(-1)^[(P+1)/4]=1=(-1)^((P^2-1)/8)$
2. $P equiv 7 space (mod 8)=>P=8n + 7$\
  $[(P+1)/4]=[(8n+8)/4]=[2n+2]=2n+2=>(-1)^[(P+1)/4]=1=(-1)^((P^2-1)/8)$
3. $P equiv 3 space (mod 8)=>P=8n + 3$\
  $[(P+1)/4]=[(8n+4)/4]=[2n+1]=2n+1=>(-1)^[(P+1)/4]=-1=(-1)^((P^2-1)/8)$
4. $P equiv 5 space (mod 8)=>P=8n + 5$\
  $[(P+1)/4]=[(8n+6)/4]=[(2n+1)+1/2]=2n+1=>(-1)^[(P+1)/4]=-1=(-1)^((P^2-1)/8)$
Получили, что $display((2/P)=(-1)^((P^2-1)/8)=(-1)^[(P+1)/4])$, так как значения по соответствующим модулям одинаковые.
]
#answer[
ч.т.д
]
#pagebreak()

#problem(name: 5)[
Пусть $a,b in NN$ и пусть $P=4 a b - 1$. Докажите, что сравнение $x^2 equiv -a space (mod P)$ неразрешимо.
]
#solution[
1. Пусть $a-$нечётное. Рассмотрим соответствующий символ Якоби
$
  display(((-a)/P)= ((-1)/P) dot (a/P)=-(a/P)=-(P/a) dot (-1)^(((P-1) dot (a-1))/4))\
  display((-1)^(((P-1)(a-1))/4)=(-1)^((a b - 0.5) dot (a - 1))=(-1)^((a-1)a b) dot (-1)^((a-1) dot (-0.5))=(-1)^(-(a-1)/2)=(-1)^((a-1)/2))\

$
  Так как $P equiv -1 space (mod a)=> display(-(P/a)=-((-1)/a)=-(-1)^((a-1)/2)) =>$\
  $
    => display(((-a)/P)=-(P/a) dot (-1)^(((P-1) dot (a-1))/4)=-(-1)^((a-1)/2) dot (-1)^((a-1)/2)=-1) => "сравнение неразрешимо"
  $
2. Пусть $a-$чётно. Значит $a=2^k dot n$, $n-$нечётное. Рассмотрим соответствующий символ Якоби
$
  display(((-a)/P)=-(a/P)=-(2/P)^k dot (n/P))\
  (2/P)=(-1)^((P^2-1)/8)=(-1)^(2a^2b^2-a b)=1\
  (n/P)=1("считается также, как и в первом пункте")\
  => display(((-a)/P)=-(a/P)=-(2/P)^k dot (n/P))=-1=>"сравнение неразрешимо"
$
Получили, что при всех $a$ сравнение неразрешимо.
]
#answer[
ч.т.д
]