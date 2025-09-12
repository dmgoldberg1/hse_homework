#import "../../exam_template.typ": *
#let title = "ДЗ 1"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ 2"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
Вычислите интеграл, рассматривая его как предел интегральной суммы при сеточном разбиении
прямоугольника $D=[0, 2] times [0, 3]$ на ячейки – квадраты со сторонами, длины которых равны $1/n$, выбирая в качестве $xi_i$ верхние правые вершины ячеек:
$
integral.double_D x y^3 d x d y
$
]
#solution[
$
  f = x y^3\
  sigma(f, T_k, xi_k) = sum_(i=1)^(2k) sum_(j=1)^(3k) i/k dot (j/k)^3 dot 1/k^2=1/k^6sum_(i=1)^(2k) i sum_(j=1)^(3k) j^3=1/k^6 sum_(i=1)^(2k)i (((3k+1) * 3k)/2)^2=\
  =(((3k+1) * 3k)/2)^2 dot 1/k^6 dot ((2k + 1) dot 2k)/2=(162k^3+189k^2+72k+9)/(4k^3)\
  lim_(k arrow infinity) sigma(f, T_k, xi_k)=lim_(k arrow infinity) (162k^3+189k^2+72k+9)/(4k^3) = 81/2\
$
]
#answer[
  $
    81/2
  $
]
#pagebreak()

#problem(name: 2)[
Вычислите двойной интеграл
$
  integral_1^2 integral_0^3 x y^3 d y space d x
$
]
#solution[
$
  integral_1^2 integral_0^3 x y^3 d y space d x=integral_1^2 x integral_0^3 y^3 d y space d x=integral_1^2 81/4 x d x=81/4 integral_1^2 x d x = 81/4 dot 3/2=40.5
$
]
#answer[
  30.375
]
#pagebreak()

#problem(name: 3)[
Привести двойной интеграл $integral.double_D f(x, y) d x d y$ к повторному во всех возможных порядках, где $D={(x, y) | x in [0, 1/2], y in [0, 1], (x-1)^2+(y-1)^2 >= 1}$
]
#solution[
  $
    D
  $
#image("image-1.png")
$
  (0.5-1)^2+(y-1)^2=1\
  (y-1)^2=0.75\
  y=1-sqrt(3)/2, x=0.5-"пересечение окружности и прямой"\
  cases(0<= x <= 0.5, 0 <= y <= 1)\
  y=1-sqrt(1-(x-1)^2)
  \

$
$
integral.double_D f(x, y) d x d y=integral_0^0.5 integral_(0)^(1-sqrt(1-(x-1)^2))f(x, y) d y d x=integral_(0)^(1-sqrt(3)/2) integral_(0)^(0.5)f(x, y) d x d y + integral_(1-sqrt(3)/2)^(1) integral_(0.5)^(1-sqrt(1-(y-1)^2))f(x, y) d x d y
$
]
#answer[
$
  integral.double_D f(x, y) d x d y=integral_0^0.5 integral_(0)^(1-sqrt(1-(x-1)^2))f(x, y) d y d x=integral_(0)^(1-sqrt(3)/2) integral_(0)^(0.5)f(x, y) d x d y + integral_(1-sqrt(3)/2)^(1) integral_(0.5)^(1-sqrt(1-(y-1)^2))f(x, y) d x d y
$
]
#pagebreak()

#problem(name: 4)[
Изменить порядок интегрирования в повторном интеграле:
$
  integral_0^1 d y integral_sqrt(4-4y)^sqrt(4-y^2) f(x, y) d x+integral_1^2 d y integral_0^sqrt(4-y^2)f(x, y)d x
$
]
#solution[
#image("image.png")
Искомая область это фиолетовая + красная область.
$
  integral_0^1 d y integral_sqrt(4-4y)^sqrt(4-y^2) f(x, y) d x+integral_1^2 d y integral_0^sqrt(4-y^2)f(x, y)d x=\
  integral_0^2 d x integral_(1-x^2/4)^(sqrt(4-x^2)) f(x, y) d y
$
]