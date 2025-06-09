#import "../../exam_template.typ": *
#let title = "ДЗ 8"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Алгебра"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Избавьтесь от иррациональности в знаменателе дроби $display((1+55root(3, 7)-8root(3, 49))/(1-2root(3,7)-4root(3,49)))$ и упростите полученное выражение.
]
#solution[
$
  alpha = root(3, 7)=>alpha^3=7, alpha^4=7 alpha\
  (1+55alpha-8alpha^2)/(1-2alpha-4alpha^2) in QQ(alpha)\
  QQ(alpha) tilde.eq QQ[x] slash (x^3-7)\
  QQ(alpha)={a_0+a_1 alpha +a_2 alpha^2}\
  1+55alpha-8alpha^2=(1-2alpha-4alpha^2)(a_0+a_1 alpha +a_2 alpha^2)=a_0+a_1alpha +a_2alpha^2-2alpha a_0-2 alpha^2 a_1 -2alpha^3a_2-\
  -4alpha^2a_0-4alpha^3 a_1-4alpha^4 a_2=a_0+alpha(a_1-2a_0)+alpha^2(a_2-2a_1-4a_0)+7(-2a_2-4a_1)+7a(-4a_2)\
  cases(a_0-28a_1-14a_2=1,a_1-2a_0-28a_2=55,a_2-2a_1-4a_0=-8) <==> (a_0,a_1,a_2)=(1,1,-2)\
  => 1+55alpha-8alpha^2=(1-2alpha-4alpha^2)(1+alpha -2 alpha^2)=>\
  (1+55alpha-8alpha^2)/(1-2alpha-4alpha^2) = (1+alpha-2alpha^2)=1+root(3,7)-2root(3,49)\
$
]
#answer[
$1+root(3,7)-2root(3,49)$
]
#pagebreak()

#problem(name: 2)[
Найдите минимальный многочлен для числа $sqrt(5)-sqrt(3)+1$ над $QQ$.
]
#solution[
$
  alpha = sqrt(5)-sqrt(3)+1\
  alpha - 1= sqrt(5)-sqrt(3) | "^2"\
  alpha^2-2alpha+1=5-2sqrt(15)+3\
  a^2-2alpha-7=-2sqrt(15) | "^2"\
  alpha^4-4alpha^3-10alpha^2+28alpha-11=0\
  =>h(alpha)=alpha^4-4alpha^3-10alpha^2+28alpha-11 "аннулирующий для" alpha, "докажем, что он минимальный"\
$
Заметим, что его корнями над $RR$ являются числа:
$
  alpha_1=sqrt(5)-sqrt(3)+1\
  alpha_2=-sqrt(5)-sqrt(3)+1\
  alpha_3=-sqrt(5)+sqrt(3)+1\
  alpha_4=sqrt(5)+sqrt(3)+1\
$
Если многочлен приводим над $QQ$, то он разлагается в произведение двух квадратичных многочленов(степень 1 быть не может из-за того, что свободный член линейного множителя будет не из $QQ$). Рассмотрим комбинации линейных многочленов по 2, и покажем, что у них есть коэффициенты не из $QQ$.
1.
$
  (alpha -(sqrt(5)-sqrt(3)+1))(alpha-(-sqrt(5)-sqrt(3)+1))=alpha^2-1+2sqrt(3)alpha-2alpha-2sqrt(3) in.not QQ[alpha]\
$
2.
$
  (alpha -(sqrt(5)-sqrt(3)+1))(alpha-(-sqrt(5)+sqrt(3)+1))=alpha^2-2alpha-7+2sqrt(15) in.not QQ[alpha]
$
3.
$
  (alpha -(sqrt(5)-sqrt(3)+1))(alpha-(sqrt(5)+sqrt(3)+1))=alpha^2+3-2sqrt(5)alpha -2alpha+2sqrt(5) in.not QQ[alpha]\
$
4.
$
  (alpha -(-sqrt(5)-sqrt(3)+1))(alpha-(-sqrt(5)+sqrt(3)+1))=alpha^2+3+2sqrt(5)alpha-2alpha-2sqrt(5) in.not QQ[alpha]\
$
5.
$
  (alpha -(-sqrt(5)-sqrt(3)+1))(alpha-(sqrt(5)+sqrt(3)+1))=alpha^2-2alpha-7-2sqrt(15) in.not QQ[alpha]\
$
6.
$
  (alpha -(-sqrt(5)+sqrt(3)+1))(alpha-(sqrt(5)+sqrt(3)+1))=alpha^2-1-2sqrt(3)alpha-2alpha+2sqrt(3) in.not QQ[alpha]
$
Показали, значит $h$ неприводим над $QQ$, значит $h$ минимален.
]
#answer[
$h(alpha)=alpha^4-4alpha^3-10alpha^2+28alpha-11$
]
#pagebreak()

#problem(name: 3)[
Постройте явно поле $FF_8$ и составьте для него таблицы сложения и умножения.
]
#solution[
$
  p=2, n=3\
  h in  ZZ_2[x] - "неприводимый, " deg h = 3.\
  "Например," h=x^3+x+1\
  FF_8=Z_2[x] slash (x^3+x+1)={a+b z+c z^2 | a, b in {0, 1}}={0,1,z,z+1,z^2,z^2+z,z^2+1,z^2+z+1}\
  
$

#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,auto),
  inset: 4pt,
  align: center,
  table.header(
    [+],[0], [1], [z],[z+1],[$z^2$],[$z^2+z$],[$z^2+1$],[$z^2+z+1$]
  ),
  $0$, $0$,$1$,$z$,$z+1$,$z^2$,$z^2+z$,$z^2+1$,$z^2+z+1$,
  $1$,$1$,$0$,$z+1$,$z$,$z^2+1$,$z^2+z+1$,$z^2$,$z^2+z$,
  $z$,$z$,$z+1$,$0$,$1$,$z^2+z$,$z^2$,$z^2+z+1$,$z^2+1$,
  $z+1$,$z+1$,$z$,$1$,$0$,$z^2+z+1$,$z^2+1$,$z^2+z$,$z^2$,
  $z^2$,$z^2$,$z^2+1$,$z^2+z$,$z^2+z+1$,$0$,$1$,$z$,$z+1$,
  $z^2+z$,$z^2+z$,$z^2+z+1$,$z^2$,$z^2+1$,$1$,$0$,$z+1$,$z$,
  $z^2+1$,$z^2+1$,$z^2$,$z^2+z+1$,$z^2+z$,$z$,$z+1$,$0$,$1$,
  $z^2+z+1$,$z^2+z+1$,$z^2+z$,$z^2+1$,$z^2$,$z+1$,$z$,$1$,$0$
)
#table(
  columns: (auto, auto, auto, auto, auto, auto, auto, auto,auto),
  inset: 4pt,
  align: center,
  table.header(
    [$*$],[0], [1], [z],[z+1],[$z^2$],[$z^2+z$],[$z^2+1$],[$z^2+z+1$]
  ),
  $0$, $0$,$0$,$0$,$0$,$0$,$0$,$0$,$0$,
  $1$,$0$,$1$,$z$,$z+1$,$z^2$,$z^2+z$,$z^2+1$,$z^2+z+1$,
  $z$,$0$,$z$,$z^2$,$z^2+z$,$z+1$,$z^2+z+1$,$1$,$z^2+1$,
  $z+1$,$0$,$z+1$,$z^2+z$,$z^2+1$,$z^2+z+1$,$1$,$z^2$,$z$,
  $z^2$,$0$,$z^2$,$z+1$,$z^2+z+1$,$0$,$1$,$z$,$z+1$,
  $z^2+z$,$0$,$z^2+z$,$z^2+z+1$,$1$,$1$,$0$,$z+1$,$z$,
  $z^2+1$,$0$,$z^2+1$,$1$,$z^2$,$z$,$z+1$,$0$,$1$,
  $z^2+z+1$,$0$,$z^2+z+1$,$z^2+1$,$z$,$z+1$,$z$,$1$,$0$
)
]
#answer[
см. решение
]
#pagebreak()

#problem(name: 4)[
Пусть $K subset.eq F-$ расширение полей и $alpha in F$. Положим $K[alpha]={f(alpha) | f in K[x]}$. Докажите, что если $K[alpha]$ конечномерно как векторное пространство над $K$, то $K[alpha]=K(alpha)$.
]
#solution[
Заметим, что из конечности $K$ следует, что все элементы поля $F$ являются алгебраическими над $K$(задача 7 из 11 листка). Значит $forall alpha in F$ найдется минимальный многочлен $h, deg h = n$. Всякий элемент $K(alpha)$ можно представить как $beta_0 +beta_1 alpha +...+beta_(n-1) alpha^(n-1)=f(alpha), beta_i in K$(утверждение из лекции)$=> K[alpha]=K(a)$.
]