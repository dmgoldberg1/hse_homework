#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#let title = "ДЗ 11"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
Найдите промежутки монотонности и точки экстремума и определите
их характер для функций:
$
а)space f(x)=(3x-7)/(x^2-1)^2;space б) space f(x) = (ln x)^2/(sqrt(x)); space в) space f(x)=(2x)/(1 + x^2); space г) space f(x)=x^2 - ln x^2
$
]
#solution[
а) $f prime(x) = (-4x(3x - 7))/(x^2 - 1)^3 + 3/(x^2 - 1)^2$
$
  f prime(x) = 0 => x =1/9;3 - " экстремумы"\
  f prime (x) > 0 => x in (-1, 1/9) union (1, 3) - " возрастает"\
  f prime (x) < 0 => x in (-infinity, -1) union (1/9, 1) union (3, infinity) - " убывает "\
  => 1/9;3 - " локальные максимумы"
$
б) $f prime (x) = -0.5ln(x)^2/x^1.5 + 2ln(x)/x^1.5$
$
  f prime(x) = 0 => x =1;e^4 - " экстремумы"\
  f prime (x) > 0 => x in (1, e^4) - " возрастает"\
  f prime (x) < 0 => x in (0, 1) union (e^4, +infinity) - " убывает "\
  => 1 - " локальный минимум"; e^4-" локальный максимум"
$
в) $f prime (x) = (2-2x^2)/(1+x^2)^2$
$
  f prime(x) = 0 => x =-1;1 - " экстремумы"\
  f prime (x) > 0 => x in (-1, 1) - " возрастает"\
  f prime (x) < 0 => x in (-infinity, -1) union (1, +infinity) - " убывает "\
  => -1 - " локальный минимум"; 1-" локальный максимум"
$
г) $f prime (x) = (2x^2 - 2)/x$
$
  f prime(x) = 0 => x =-1;1 - " экстремумы"\
  f prime (x) > 0 => (-1, 0) union (1, +infinity) - " возрастает"\
  f prime (x) < 0 => (-infinity, -1) union (0, 1) - " убывает "\
  => -1;1-" локальные минимумы"
$
]
#pagebreak()

#problem[
Найдите наибольшее и наименьшее значение функции $f(x)=x^3+3x^2-9x+2$ на отрезках
$
  а)space [-4,2];space б)space [-1,0];space в)space [-6,4]
$
]
#solution[
$f prime(x)=3x^2+6x-9$
$
  f prime(x) = 0 => x =-3;1 - " экстремумы"\
  f prime (x) > 0 => x in (-infinity,-3) union (1, +infinity) - " возрастает"\
  f prime (x) < 0 => x in (-3, 1) - " убывает "\
  => 1 - " локальный минимум"; -3-" локальный максимум"
$
а) $f(-3)=29-$ наибольшее значение. $f(1)=-3-$ наименьшее значение\

б) $f(-1)=13-$ наибольшее значение. $f(0)=2-$ наименьшее значение\

в) $f(4)=78-$ наибольшее значение. $f(-6)=-52-$ наименьшее значение\
]
#pagebreak()

#problem[
Докажите неравенства
$
а) space 1 +x/2-x^2/8<=sqrt(1+x)<=1+x/2,space x>0;\
б) space e^(x-1) + ln x -2x+1>=0, space x>=1;\
в) space (b-a)/b<ln b/a<(b-a)/a, space 0<a<b
$
]
#solution[
а) $f(x)=1+x/2-x^2/8-sqrt(1+x)$
$
f prime(x)=(sqrt(1+x)(2-x)-2)/(4sqrt(1+x))<0 " при" x>0 => f(x) space "монотонно убывает при" x>0\
f(0)=0<=0=>f(x)<=0 => 1 +x/2-x^2/8<=sqrt(1+x)
$
#h(16pt) $g(x)=sqrt(1+x)-1-x/2$
$
g prime (x)=(1-sqrt(1+x))/(2sqrt(1+x)) < 0 " при" x>0 => g(x) space "монотонно убывает при" x>0\
g(0)=0<=0=>g(x)<=0 => sqrt(1+x)<=1+x/2 =>\
1 +x/2-x^2/8<=sqrt(1+x)<=1+x/2
$
б) $f(x)=e^(x-1)+ln x -2x+1$
$
f prime(x)=e^(x-1) + 1/x - 2\
f prime prime(x)=e^(x-1) - 1/x^2 >= 0 " при "x>=1=>f prime(x) " монотонно возрастает"\
f prime(1)=0>=0 => f prime(x) >= 0 => " монотонно возрастает"\
f(1)=0>=0=> f(x)>=0=>e^(x-1)+ln x -2x+1>=0
$
в) Заметим, что $e^x>1+x$(доказано на семинаре) $=> x>ln(1+x)$.\
Пусть $1+x=b/a => x =(b-a)/a =>$\
$
  (b-a)/a>ln(b/a)
$
Пусть $1+x=a/b=>x=(a-b)/b=>$
$
  (a-b)/b>ln(a/b)\
  (b-a)/b< -ln(a/b)= -ln((b/a)^(-1))=ln(b/a) =>\
  (b-a)/b<ln b/a<(b-a)/a
$
]