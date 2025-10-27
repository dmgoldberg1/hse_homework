#import "../../exam_template.typ": *
#let title = "ДЗ 7"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Вычислить сумму ряда:
$
  sum_(n=1)^infinity n/(4n^2-1)^2
$
]
#solution[
$
sum_(n=1)^k n/(4n^2-1)^2=sum_(n=1)^k n/((2n-1)^2 dot (2n+1)^2)=1/8 sum_(n=1)^k (1/(2n-1)^2 - 1/(2n+1)^2)=1/8(1-1/(2k+1)^2)=>\
=> k -> infinity space sum_(n=1)^infinity n/(4n^2-1)^2 = 1/8
$
]
#answer[
$
  1/8
$
]
#pagebreak()
#problem(name: 2)[
  Исследовать ряды на сходимость:\
  $
    1) space sum_(n=1)^infinity (1-1/n)^n; n -> infinity space (1-1/n)^n arrow.not 0=>"расходится"\
    2) space sum_(n=1)^infinity n sin((n+1)/(n^2+2)); lim_(n arrow infinity) n sin((n+1)/(n^2+2))=lim_(n arrow infinity) n sin 1/n=1!=0=>"расходится"\
    3) space sum_(n=2)^infinity (ln n+3)/(n(ln^2 n+2)) tilde sum_(n=2)^infinity 1/(n ln n) tilde integral_2^infinity 1/(n ln n) d n, integral 1/(n ln n) d n = ln ln n=>\ "расходится по интегральному признаку"\
    4) space sum_(n=1)^infinity (n!)^2/(2n)!; (a_(n+1))/(a_n)=((n+1)! dot (n+1)!)/((2n+2)!) dot (2n)!/(n!)^2=(n+1)^2/((2n+1)(2n+2))=>lim_(n arrow infinity) (a_(n+1))/(a_n)=1/4=>"сходится по Даламберу"\
    5) space sum_(n=1)^infinity arctan^n sqrt(3n+1)/sqrt(n+2); lim_(n arrow infinity) root(n, arctan^n sqrt(3n+1)/sqrt(n+2))=arctan sqrt(3)=pi/3>1=>\
    "расходится по радикальному признаку Коши"\
    6) space sum_(n=1)^infinity ((2n+3)!!)/(n^3(2n)!!)
  $
]
#pagebreak()
#problem(name: 3)[
Исследовать ряды на сходимость:
$
  1) space sum_(n=1)^infinity ((-1)^n sqrt(n))/(3n-2); b_n = sqrt(n)/(3n-2)-"убывает, проверим монотонность".\
  (sqrt(x)/(3x-2))^prime=(-3x-2)/(2sqrt(x)(3x-2)^2)<0, x>=1, n arrow infinity =>b_n arrow 0 =>"сходится по признаку Лейбница"\
  2) space sum_(n=1)^infinity (cos n)/(n+ln n); sum_(n=1)^N cos n < M; 1/(n+ln n) arrow 0, n arrow infinity\
  (1/(x+ ln x))^prime<0, x>=1 =>"сходится по признаку Дирихле"\
  3) space sum_(n=1)^infinity ((-1)^([ln n]))/(2^n +n) <= sum_(n=1)^infinity 1/(2^n +n)<=sum_(n=1)^infinity 1/(2^n)-"сходится"=>"исходный ряд сходится"\
  4) space sum_(n=1)^infinity ((-1)^n sin 2n)/sqrt(n+6)=sum_(n=1)^infinity (cos pi n dot sin 2 n)/sqrt(n+6)=1/2sum_(n=1)^infinity (sin(n(pi+2)))/sqrt(n+6)+1/2sum_(n=1)^infinity (sin(n(2-pi)))/sqrt(n+6),\
  "оба ряда сходятся по признаку Вейерштрасса, значит исходный ряд сходится"
$
]