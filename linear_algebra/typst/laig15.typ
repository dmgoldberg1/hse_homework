#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#let title = "ДЗ 15"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Линейная алгебра и геометрия"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
Подпространства $U$ и $W$ в $RR^4$ заданы как множества решений ОСЛУ
$
cases(x_1 + 2x_2 + x_4 = 0,x_1 + x_2 + x_3 = 0) #h(6pt) и #h(6pt)
cases(x_1 + x_3 = 0, x_1 + 3x_2 + x_4 = 0)
$
соответственно. Найдите базис в $U$ $sect$ $W$ и базис в $U$ $+$  $W$
]
#solution[
Найдем базис в $U$ $sect$ $W$. Для этого найдем ФСР для ОСЛУ(так как заданы 2ым способом)
$
mat(1, 2, 0, 1;
    1, 1, 1, 0;
    1, 0, 1, 0;
    1, 3, 0, 1)
==> "УСВ: "
mat(1, 0, 0, 1;
    0, 1, 0, 0;
    0, 0, 1, -1;
    0, 0, 0, 0)
=> "ФСР: " mat(-1;
                0;
                1;
                1) - "искомый базис"
$
Найдем базис в $U$ $+$ $W$: \
(1) Найдём ФСР для ОСЛУ
$
mat(1, 2, 0, 1;
    1, 1, 1, 0) => "УСВ: "mat(1, 0, 2, -1;
                              0, 1, -1, 1) => "ФСР: "mat(-2;1;1;0);mat(1; -1; 0; 1)
$
$
=> U = linspan(mat(-2;1;1;0),mat(1; -1; 0; 1))
$
(2) Найдём ФСР для ОСЛУ
$
mat(1, 0, 1, 0;
    1, 3, 0, 1) => "УСВ: "mat(1, 0, 1, 0;
                              0, 1, -1/3, 1/3) => "ФСР: "mat(-1;1/3;1;0);mat(0; -1/3; 0; 1)
$
$
=> W = linspan(mat(-1;1/3;1;0),mat(0; -1/3; 0; 1))
$
(3) Искомый базис --- базис в 
$
linspan(mat(-2;1;1;0),mat(1; -1; 0; 1), mat(-1;1/3;1;0), mat(0; -1/3; 0; 1))
$
Для поиска базиса приводим соответствующую матрицу к УСВ:
$
mat(-2, 1, -1, 0;
    1, -1, 1/3, -1/3;
    1, 0, 1, 0;
    0, 1, 0, 1) => "УСВ: " mat(1, 0, 0, 1;
                               0, 1, 0, 1;
                               0, 0, 1, -1;
                               0, 0, 0, 0)
$
$=> "как базис можно взять векторы "$
$
mat(-2;1;1;0);mat(1; -1; 0; 1);mat(-1;1/3;1;0)
$
]
#answer[
Базис в $U$ $sect$ $W$:
$
mat(-1;0;1;1)
$
Базис в $U$ $+$ $W$:
$
mat(-2;1;1;0);mat(1; -1; 0; 1);mat(-1;1/3;1;0)
$
]
#pagebreak()

#problem[
  Подпространства $U$ и $W$ в $RR^5$ заданы как множества решений ОСЛУ
$
cases(x_1 + x_2 - x_5 = 0,x_2 + x_3 + x_5 = 0, x_3 + x_4 + x_5 = 0) #h(6pt) и #h(6pt)
cases(x_1 + x_3 + x_5 = 0, 2x_2 + x_3 + x_4 = 0, x_1 + 2x_2 + x_3 + 2x_4 - x_5 = 0)
$
соответственно. Найти dim($U$ $sect$ $W$) и dim($U$ $+$  $W$)
]
#solution[
(1) Найдем размерность $U$. Для этого найдём число векторов в ФСР для ОСЛУ
$
mat(1, 1, 0, 0, -1;
    0, 1, 1, 0, 1;
    0, 0, 1, 1, 1) => "УСВ: " mat(1, 0, 0, 1, -1;
                                  0, 1, 0, -1, 0;
                                  0, 0, 1, 1, 1) => dim(U) = 2
$
(2) Найдем размерность $W$. Для этого найдём число векторов в ФСР для ОСЛУ
$
mat(1, 0, 1, 0, 1;
    0, 2, 1, 1, 0;
    1, 2, 1, 2, -1) => "УСВ: " mat(1, 0, 0, 1, -1;
                                  0, 1, 0, 1, -1;
                                  0, 0, 1, -1, 2) => dim(W) = 2
$
(3) Найдем размерность $U$ $sect$ $W$. Подпространства заданы вторым способом, поэтому искомая размерность это число векторов в ФСР для ОСЛУ
$
mat(1, 1, 0, 0, -1;
    0, 1, 1, 0, 1;
    0, 0, 1, 1, 1;
    1, 0, 1, 0, 1;
    0, 2, 1, 1, 0;
    1, 2, 1, 2, -1) => "УСВ: " mat(1, 0, 0, 0, -1/2;
                                   0, 1, 0, 0, -1/2;
                                   0, 0, 1, 0, 3/2;
                                   0, 0, 0, 1, -1/2;
                                   0, 0, 0, 0, 0;
                                   0, 0, 0, 0, 0) => dim(U sect W) = 1
$
(4) $dim(U + W) = dim(U) + dim(W) - dim(U sect W) = 2 + 2 - 1 = 3$
]
#answer[
$dim(U sect W) = 1$ \
$dim(U + W) = 3$
]
#pagebreak()

#problem[
Найти размерности суммы и пересечения подпространств в $RR^4$: \
1. $U$ = $linspan((1, 1, 1, 1), (1, -1, 1, -1), (1,3,1,3))$, \
 $W$ = $linspan((1, 2, 0, 2), (1,2, 1, 2), (3,1,3,1))$
 
2. $U$ = $linspan((2, -1, 0, -2), (3, -2, 1, 0), (1,-1,1,-1))$, \
 $W$ = $linspan((3, -1, -1, 0), (0,-1, 2, 3), (5,-2,-1,0))$
]
#solution[
1.
#h(6pt) (1) Найдём размерность $U$. Для этого найдём число главных неизвестных в УСВ матрицы
$
mat(1, 1, 1;
    1, -1, 3;
    1, 1, 1;
    1, -1, 3) => "УСВ: " mat(1, 0, 2;
                             0, 1, -1;
                             0, 0, 0;
                             0, 0, 0) => dim(U) = 2
$
#h(6pt) (2) Найдём размерность $W$. Для этого найдём число число главных неизвестных в УСВ матрицы
$
mat(1, 1, 3;
    2, 2, 1;
    0, 1, 3;
    2, 2, 1) => "УСВ: " mat(1, 0, 0;
                            0, 1, 0;
                            0, 0, 1;
                            0, 0, 0) => dim(W) = 3
$
#h(6pt) (3) Найдём размерность $U + W$. Для этого найдём число число главных неизвестных в УСВ матрицы
$
mat(1, 1, 1, 1, 1, 3;
    1, -1, 3, 2, 2, 1;
    1, 1, 1, 0, 1, 3;
    1, -1, 3, 2, 2, 1
    ) => "УСВ: " mat(1, 0, 2, 0, 3/2, 2;
                     0, 1, -1, 0, -1/2, 1;
                     0, 0, 0, 1, 0, 0;
                     0, 0, 0, 0, 0, 0) => dim(U + W) = 3
$
(4) $dim(U + W) = dim(U) + dim(W) - dim(U sect W) => dim(U sect W) = 2$

2.
#h(6pt) (1) Найдём размерность $U$. Для этого найдём число главных неизвестных в УСВ матрицы
$
mat(2, 3, 1;
    -1, -2, -1;
    0, 1, 1;
    -2, 0, -1) => "УСВ: " mat(1, 0, 0;
                             0, 1, 0;
                             0, 0, 1;
                             0, 0, 0) => dim(U) = 3
$
#h(6pt) (2) Найдём размерность $W$. Для этого найдём число число главных неизвестных в УСВ матрицы
$
mat(3, 0, 5;
    -1, -1, -2;
    -1, 2, -1;
    0, 3, 0) => "УСВ: " mat(1, 0, 0;
                            0, 1, 0;
                            0, 0, 1;
                            0, 0, 0) => dim(W) = 3
$
#h(6pt) (3) Найдём размерность $U + W$. Для этого найдём число число главных неизвестных в УСВ матрицы
$
mat(2, 3, 1, 3, 0, 5;
    -1, -2, -1, -1, -1, -2;
    0, 1, 1, -1, 2, -1;
    -2, 0, -1, 0, 3, 0
    ) => "УСВ: " mat(1, 0, 0, 1, -2, 4/3;
                     0, 1, 0, 1, 1, 5/3;
                     0, 0, 1, -2, 1, -8/3;
                     0, 0, 0, 0, 0, 0) => dim(U + W) = 3
$
(4) $dim(U + W) = dim(U) + dim(W) - dim(U sect W) => dim(U sect W) = 3$
]
#answer[
1. $dim(U + W) = 3; dim(U sect W) = 2$
2. $dim(U + W) = 3; dim(U sect W) = 3$
]
#pagebreak()

#problem[
Пользуясь альтернативным способом, найти базис суммы и базис пересечения линейных оболочек $linspan(a_1, a_2, a_3)$ и $linspan(b_1, b_2, b_3)$, где: \
1. $a_1 = (1, 2, 1)," "a_2 = (1, 1, -1), " "a_3 = (1, 3, 3),$ \
  $b_1 = (1, 2, 2)," "b_2 = (2, 3, -1)," "b_3 = (1, 1, -3)$ \
  в $RR^3$;

2. $a_1 = (1, 1, 0, 0, -1)," "a_2 = (0, 1, 1, 0, 1), " "a_3 = (0, 0, 1, 1, 1),$ \
  $b_1 = (1, 0, 1, 0, 1)," "b_2 = (0, 2, 1, 1, 0)," "b_3 = (1, 2, 1, 2, -1)$ \
  в $RR^5$;
]
#solution[
  $U=linspan(a_1, a_2, a_3), W=linspan(b_1, b_2, b_3)$
1.
#h(6pt) (1) Воспользуемся алгоритмом с семинара для поиска базиса $U sect W$. Приводим соответствующую матрицу к УСВ
$
mat(1, 1, 1, 1, 2, 1;
    2, 1, 3, 2, 3, 1;
    1, -1, 3, 2, -1, -3; augment: #3) => "УСВ: " mat(1, 0, 2, 0, 2, 2;
                                                     0, 1, -1, 0, 1, 1;
                                                     0, 0, 0, 1, -1, -2; augment: #3) => "ФСР: " mat(-2;1;1;0;0;0);mat(2;1;0;1;1;0);mat(2;1;0;2;0;1)           
$
#h(6pt) (2) Получаем, что $
linspan(mat(0;0;0), mat(3;5;1), mat(3;5;1)) " порождает" U sect W
$
#h(6pt) (3) Ищем базис в этой линейной оболочке. Это вектор (3, 5, 1). \

#h(6pt) (4) Ищем базис $U + W$. Из шага один заключаем вывод, что это векторы $a_1, a_2, b_1$

2.
#h(6pt) (1) Воспользуемся алгоритмом с семинара для поиска базиса $U sect W$. Приводим соответствующую матрицу к УСВ
$
mat(1, 0, 0, 1, 0, 1;
    1, 1, 0, 0, 2, 2;
    0, 1, 1, 1, 1, 1;
    0, 0, 1, 0, 1, 2;
    -1, 1, 1, 1, 0, -1;augment: #3) => "УСВ: " mat(1, 0, 0, 0, 1, 2;
                                                   0, 1, 0, 0, 1, 0;
                                                   0, 0, 1, 0, 1, 2; 
                                                   0, 0, 0, 1, -1, -1;
                                                   0, 0, 0, 0, 0, 0;augment: #3) => "ФСР: " mat(1;1;1;1;1;0);mat(2;0;2;1;0;1)           
$
#h(6pt) (2) Получаем, что $
linspan(mat(1;2;2;1;1), mat(2;2;2;2;0)) " порождает" U sect W
$
#h(6pt) (3) Ищем базис в этой линейной оболочке. Это векторы (1, 2, 2, 1, 1) и (2, 2, 2, 2, 0). \

#h(6pt) (4) Ищем базис $U + W$. Из шага один заключаем вывод, что это векторы $a_1, a_2, a_3, b_1$
]
#answer[
1.$" Базис" U sect W$: (3, 5, 1)\
#h(12pt) Базис $U + W$: $a_1, a_2, b_1$ 

2.$" Базис" U sect W$: (1, 2, 2, 1, 1,); (2, 2, 2, 2, 0)\
#h(12pt) Базис $U + W$: $a_1, a_2, a_3, b_1$ 
]
#pagebreak()

#problem[
Найти базис пересечения подпространств из задачи 4.2, используя переход к заданию
подпространств способом II. Сравнить ответ с результатом предыдущей задачи и проверить напрямую, что оба построенных базиса порождают одно и то же подпространство.
]
#solution[
  (1) Найдём ОСЛУ, множество решений которой есть $linspan(a_1, a_2, a_3)$. Для этого найдем ФСР для следующего ОСЛУ
$
mat(1, 1, 0, 0, -1;
    0, 1, 1, 0, 1;
    0, 0, 1, 1, 1) => " УСВ:" mat(1, 0, 0, 1, -1;
                                  0, 1, 0, -1, 0;
                                  0, 0, 1, 1, 1) => "ФСР: " mat(-1;1;-1;1;0), mat(1;0;-1;0;1)
$
#h(12pt) Как искомое ОСЛУ можно взять
$
mat(-1, 1, -1, 1, 0;
    1, 0, -1, 0, 1)
$
(2) Найдём ОСЛУ, множество решений которой есть $linspan(b_1, b_2, b_3)$. Для этого найдем ФСР для следующего ОСЛУ
$
mat(1, 0, 1, 0, 1;
    0, 2, 1, 1, 0;
    1, 2, 1, 2, -1) => " УСВ:" mat(1, 0, 0, 1, -1;
                                  0, 1, 0, 1, -1;
                                  0, 0, 1, -1, 2) => "ФСР: " mat(-1;-1;1;1;0), mat(1;1;-2;0;1)
$
#h(12pt) Как искомое ОСЛУ можно взять
$
mat(-1, -1, 1, 1, 0;
    1, 1, -2, 0, 1)
$
(3) Найдём базис $U sect W$(обозначения как в прошлой задаче), заданных втором способом. Для этого найдём ФСР для ОСЛУ
$
mat(-1, 1, -1, 1, 0;
    1, 0, -1, 0, 1;
    -1, -1, 1, 1, 0;
    1, 1, -2, 0, 1) => "УСВ: " mat(1, 0, 0, -1, 0;
                                   0, 1, 0, -1, -1;
                                   0, 0, 1, -1, -1;
                                   0, 0, 0, 0, 0) => " ФСР: " mat(1;1;1;1;0), mat(0;1;1;0;1)
$
(4) Линейная оболочка ФСР из пункта 3 и линейная оболочка базиса из 4.2 совпадают, так как 
$
mat(2;2;2;2;0) = 2 * mat(1;1;1;1;0); mat(1;2;2;1;1) = mat(1;1;1;1;0) + mat(0;1;1;0;1) => "они задают одно и то же пространство, но ответы разные"
$
]
#answer[
  ч.т.д
]
#pagebreak()

#problem[
Пусть $U_1$ и $U_2$ -- подпространства в $V$. Доказать, что если
$
dim(U_1 + U_2) = 1 + dim(U_1 sect U_2),
$
то сумма $U_1 + U_2$ равна одному из этих подпространств, а пересечение $U_1 sect U_2$ -- другому.
]
#solution[
  (1) Исходя из известного соотношения для суммы и пересечения пространств, имеем систему
$
cases(dim(U_1 + U_2) = 1 + dim(U_1 sect U_2), dim(U_1 + U_2) = dim(U_1) + dim(U_2) - dim(U_1 sect U_2))
$
(2) Вычитая из второго уравнения первое, получаем соотношение
$
0 = dim(U_1 sect U_2) - dim(U_1) + dim(U_1 sect U_2) - dim(U_2) + 1,\ "при этом в общем случае " dim(U_1 sect U_2) <= dim(U_1) and dim(U_1 sect U_2) <= dim(U_2)
$
(3) Докажем, что $dim(U_1 sect U_2) = dim(U_1) or dim(U_1 sect U_2) = dim(U_2)$ \
#h(18pt) Пусть $dim(U_1 sect U_2) < dim(U_1) and dim(U_1 sect U_2) < dim(U_2)$, тогда $dim(U_1 sect U_2) - dim(U_1) <= -1$(так как размерность хотя бы 1). Аналогчино $dim(U_1 sect U_2) - dim(U_2) <= -1$. Получаем, что соотношение из шага 2 не выполняется. Противоречие. Следовательно $dim(U_1 sect U_2) >= dim(U_1) or dim(U_1 sect U_2) >= dim(U_2)$, но строгое неравенство в этом случае невозможно $=> $ $dim(U_1 sect U_2) = dim(U_1) or dim(U_1 sect U_2) = dim(U_2)$ \

(4) Из доказанного в шаге 3 утверждения можно сделать вывод, что $U_1 tilde.eq U_1 sect U_2 or U_2 tilde.eq U_1 sect U_2$. Тогда $U_1 sect U_2 = U_1 or U_1 sect U_2 = U_2$ \

(5) Подставим полученное в шаге 4 соотношение во второе уравнение из шага 1. Получаем
$
dim(U_1 + U_2) = dim(U_1) " в случае " U_1 sect U_2 = U_2. "Тогда " U_1 tilde.eq U_1 + U_2 => U_1 + U_2 = U_1. \
"Аналогичные рассуждения для случая" U_1 sect U_2 = U_1. "Итого исходное утверждение доказано."
$
]
#answer[
  убито
]
#pagebreak()

#problem[
Пусть $U_1$ и $U_2$ -- ($n$ - 1)-мерные подпространства $n$-мерного пространства $V$. Доказать, что
$
dim(U_1 sect U_2) >= n - 2
$
]
#solution[
  Используем известное соотношение для размерностей суммы и пересечения 
$
dim(U_1 + U_2) = dim(U_1) + dim(U_2) - dim(U_1 sect U_2) \
dim(U_1 sect U_2) = 2n - 2 - dim(U_1 + U_2), "но "dim(U_1 + U_2) >= n - 1
$
Пусть $dim(U_1 + U_2) = n - 1$. Тогда $dim(U_1 + U_2) = dim(U_1) = dim(U_2) => U_1 + U_2 = U_1 = U_2$(см. прошлая задача). В этом случае исходное утверждение верно. \

Далее будем считать, что $dim(U_1 + U_2) >= n$(случай $n - 1$ рассмотрен). Тогда
$
dim(U_1 sect U_2) = 2n - 2 - dim(U_1 + U_2) >= 2n - 2 - n = n - 2.
$
Получили, что исходное утверждение верно
]
#answer[
ч.т.д
]
#pagebreak()

#problem[
Пусть $A$, $B$ ∈ $M_n$($F$) ($F$ – поле) и $B$ получается из $A$ элементарным преобразованием строк или столбцов. Доказать, что присоединённая матрица $hat(B)$ получается из присоединённой
матрицы $hat(A)$ некоторой последовательностью элементарных преобразований.
]

#solution[
Рассмотрим, как элементарные преобразования матрицы $A$ влияют на $hat(A)$: \
#h(12pt) (1) Э.П. 2 типа. Покажем, что оно эквивалентно Э.П. 2 типа в $hat(A)$. Пусть $H$ получается перестановкой двух строк в $A$. В подматрицах алгебраических дополнений $A_"ji"$ строки также поменяются местами, меняя знак определителя на противоположный $=>$ строки в $hat(A)$ меняются аналогчиным образом.

#h(12pt) (2) Э.П. 1 типа. После преобразования новые матрицы алгебраических дополнений будут являться линенейной комбинацией матриц до преобразования
]