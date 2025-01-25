#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 2"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Теория чисел"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
Докажите равенства\

а) $(a,b)=(a+b,[a,b])$;\

б)$frac((a,b)(b,c)(c,a), (a,b,c)^2)=frac([a,b][b,c][c,a], [a,b,c]^2)$
]
#solution[
1. $a = p_1^alpha_1 dot ... dot p_n^alpha_n;b=p_1^beta_1 dot ... dot p_n^beta_n; a+b = p_1^gamma_1 dot ... dot p_n^gamma_n$. Н.У.О, пусть $alpha_n >= beta_n >= gamma_n$
$
  (a,b) =(a+b,b) =>\ " для произвольного простого множителя слева и справа в исходном выражени имеем соотношение"\
  p_n^min(gamma_n, beta_n) = p_n^min(gamma_n, max(alpha_n, beta_n))\
  p_n^gamma_n = p_n^min(gamma_n, alpha_n)\
  p_n^gamma_n = p_n^gamma_n - " верно" => " ч.т.д"
$
2. $a = p_1^alpha_1 dot ... dot p_n^alpha_n;b=p_1^beta_1 dot ... dot p_n^beta_n; c = p_1^gamma_1 dot ... dot p_n^gamma_n$. Н.У.О, пусть $alpha_n >= beta_n >= gamma_n$\
Для произвольного простого множителя слева и справа в исходном выражени имеем соотношение
$
p_n^(min(alpha_n, beta_n) + min(beta_n, gamma_n) + min(gamma_n, alpha_n)- min(alpha_n, beta_n,gamma_n)^2) = p_n^(max(alpha_n, beta_n) + max(beta_n, gamma_n) + max(gamma_n, alpha_n)- max(alpha_n, beta_n,gamma_n)^2)\
p_n^(beta_n + gamma_n + gamma_n - 2gamma_n) = p_n^(alpha_n + beta_n + alpha_n - 2alpha_n)\
p_n^beta_n = p_n^beta_n - " верно" => " ч.т.д"
$
]
#answer[
  ч.т.д
]
#pagebreak()

#problem[
Вычислите, каким количеством нулей оканчивается число 1000!.
]
#solution[
Нам нужно узнать, с какой степенью в это число входит 10. 10 = 5 $dot$ 2 $=> $ найдем с какой степенью входит 5 и 2
$
  alpha_5=floor.l 1000/5 floor.r + floor.l 1000/25 floor.r + floor.l 1000/125 floor.r + floor.l 1000/625 floor.r = 200+40+8+1=249\
  alpha_2=floor.l 1000/2 floor.r + floor.l 1000/4 floor.r + floor.l 1000/8 floor.r + floor.l 1000/16 floor.r + floor.l 1000/32 floor.r+floor.l 1000/64 floor.r+floor.l 1000/128 floor.r+floor.l 1000/256 floor.r+floor.l 1000/512 floor.r=500+\
  250+125+...>249\
  min(alpha_5, alpha_2) = 249 => " входит 249 десяток, значит оканчивается 249 нулями."
$
]
#answer[
249
]
#pagebreak()

#problem[
  Для $n in NN$ будем обозначать $sigma(n)$ сумму натуральных делителей числа $n$. Докажите, что если $n=p_1^alpha_1 dot ... dot p_s^alpha_s$, то
$
  sigma(n) = frac(p_1^(alpha_1 + 1) - 1, p_1-1) dot ... dot frac(p_s^(alpha_s+1)-1,p_s-1).
$
]
#solution[
Заметим, что $sigma(p^x) = 1 + p + p^2 +...+p^x=frac(p^(x+1)-1,x-1)$.
$
  sigma(n) = sigma(p_1^(alpha_1)) dot...dot sigma(p_s^alpha_s)= frac(p_1^(alpha_1 + 1) - 1, p_1-1) dot ... dot frac(p_s^(alpha_s+1)-1,p_s-1) => " ч.т.д"
$
]
#answer[
  ч.т.д
]
#pagebreak()

#problem[
  Вычислите $tau(sigma(108))$.
]
#solution[
$
108 =2^2 dot 3 ^3\
sigma(108) = sigma(2^2) dot sigma(3^3) = 7 * 40 = 280 = 2^3 dot 5 dot 7\
tau(280) = (3 + 1) dot (1 + 1) dot (1 + 1) = 16
$
]
#answer[
$tau(sigma(108)) = 16$
]
#pagebreak()

#problem[
Решите в целых числах уравнение\
а) $19x+88y=2$;\
б) $102x+165y=9$
]
#solution[
1. Воспользуемся алгоритмом с семинара. Приведем матрицу к нужному виду
$
  mat(19,88;
      1,0;
      0,1)arrow.r.bar mat(19, 12;
      1,-4;
      0,1)arrow.r.bar mat(7, 12;
      5, -4;
      -1,1) arrow.r.bar mat(7, 5;
      5,-9;-1,2) arrow.r.bar mat(2, 5;
      14,-9;
      -3,2) arrow.r.bar mat(2, 1;
      14,-37;
      -3,8) arrow.r.bar mat(0,1;
      88, -37;
      -19,8) =>\
      mat(x;y) = mat(-74;16) + t dot mat(88;-19), t in ZZ
$
2. Воспользуемся алгоритмом с семинара. Приведем матрицу к нужному виду
$
mat(102, 165;
1,0;
0,1) arrow.r.bar mat(102, 63;
1,-1;
0,1) arrow.r.bar mat(39, 63;
2, -1;
-1,1) arrow.r.bar mat(39,24;
2,-3;
-1,2) arrow.r.bar mat(15, 24;
5, -3;
-3,2) arrow.r.bar mat(15, 9;
5,-8;
-3,5)\
arrow.r.bar mat(6,9;
13,-8;
-8,5) arrow.r.bar mat(6, 3;
13,-21;
-8,13) arrow.r.bar mat(0, 3;
55,-21;
-34,13) =>\
mat(x;y) = mat(-63;39) + t dot mat(55;-34), t in ZZ
$
]
#answer[
1.
$
  mat(x;y) = mat(-74;16) + t dot mat(88;-19), t in ZZ
$
2.
$
  mat(x;y) = mat(-63;39) + t dot mat(55;-34), t in ZZ
$
]