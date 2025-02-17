#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#let title = "БДЗ 5"
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Линейная алгебра и геометрия"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
Представьте матрицу
$
A= mat(-2, 6,15,17, -17;
       -10, -25, -13,-34,23;
       6,-7,-31,-38,33;
       13,16,-11,4,4;
       -21,-36,3,-24,12)
$
в виде суммы $r$ матриц ранга 1, $r=rk(A).$
]
#solution[
Воспользуемся алгоритмом построения разложения матрицы в сумму матриц ранга 1: \
(1) Найдем максимально линейно независимую систему столбцов(базис). Для этого приведем к УСВ матрицу $A$
$
mat(-2, 6,15,17, -17;
       -10, -25, -13,-34,23;
       6,-7,-31,-38,33;
       13,16,-11,4,4;
       -21,-36,3,-24,12) => " УСВ:" mat(1,0,0,67/11,-1/11;
                                        0,1,0,-29/11,-4/11;
                                        0,0,1,3,-1;
                                        0,0,0,0,0;
                                        0,0,0,0,0) => " первые три столбца - базис"
$
(2) Выразим оставшиеся столбцы через базис
$
A^((4)) = 67/11A^((1)) - 29/11A^((2)) + 3A^((3)) \
A^((5)) = -1/11A^((1)) - 4/11A^((2)) -A^((3))
$
(3) Получаем, что
$
B_1 = mat(-2;-10;6;13;-21) dot mat(1,0,0,67/11,-1/11)\
B_2 = mat(6;-25;-7;16;-36) dot mat(0,1,0,-29/11,-4/11)\
B_3 = mat(15;-13;-31;-11;3) dot mat(0,0,1,3,-1)
$
$
A = B_1 + B_2 + B_3, " где" rk(B_1), rk(B_2), rk(B_3) = 1, rk(A) = 3 = r
$
]
#answer[
$
A = B_1 + B_2 + B_3, " где" rk(B_1), rk(B_2), rk(B_3) = 1, rk(A) = 3 = r
$
]
#pagebreak()

#problem[
В пространстве $RR^3$ заданы два базиса $bb(e)=(e_1,e_2,e_3)$ и $bb(e prime)=(e^prime_1,e^prime_2,e^prime_3)$, где $e_1=(3,-2,1), e_2=(-1,3,1), e_3=(3,2,1),e^prime_1=(-3,7,5), e^prime_2=(-5,9,3),e^prime_3=(3,5,11)$ и вектор $v$, имеющий в базисе $bb(e)$ координаты (-1,2,5). \

(а) Докажите, что наборы векторов $bb(e)$ и $bb(e prime)$ действительно являются базисами в $RR^3$. \

(б) Найдите матрицу перехода от базиса $bb(e)$ к базису $bb(e prime)$. \

(в) Найдите координаты вектора $v$ в базисе $bb(e prime)$.
]
#solution[
(а)\
#h(12pt) (1) Докажем, что векторы из $bb(e)$ линейно независимы, для этого найдем ранг соответствующей матрицы
$
mat(3,-1,3;
    -2,3,2;
    1,1,1) => " УСВ:" mat(1,0,0;
                          0,1,0;
                          0,0,1) => " ранг 3, а значит векторы из" bb(e) " линейно независимые"
$
#h(12pt) (2) Покажем, что векторы стандартного базиса в $RR^3$ есть линейные комбинации векторов из $bb(e)$
$
mat(1;0;0) = -1/16e_1 - 1/4e_2 + 5/16e_3 \
mat(0;1;0) = -1/4e_1 + 1/4e_3\
mat(0;0;1) = 11/16e_1 + 3/4e_2 -7/16e_3 
$
#h(20pt) Получили, что векторы стандартного базиса $RR^3$ принадлежат линейной оболочке $bb(e) => bb(e)$ порождает $RR^3 => bb(e)$ действительно базис. \

#h(12pt) (3) Докажем, что векторы из $bb(e prime)$ линейно независимы, для этого найдем ранг соответствующей матрицы
$
mat(-3,-5,3;
    7,9,5;
    5,3,11) => " УСВ:" mat(1,0,0;
                          0,1,0;
                          0,0,1) => " ранг 3, а значит векторы из" bb(e prime) " линейно независимые"
$
#h(12pt) (4) Покажем, что векторы стандартного базиса в $RR^3$ есть линейные комбинации векторов из $bb(e prime)$
$
mat(1;0;0) = -21/16e^prime_1 + 13/16e^prime_2 + 3/8e^prime_3 \
mat(0;1;0) = -e^prime_1 + 3/4e^prime_2 + 1/4e^prime_3\
mat(0;0;1) = 13/16e^prime_1 - 9/16e^prime_2 -1/8e^prime_3 
$
#h(20pt) Получили, что векторы стандартного базиса $RR^3$ принадлежат линейной оболочке $bb(e prime) => bb(e prime)$ порождает $RR^3 => bb(e prime)$ действительно базис. \

(б) Матрица перехода является решением соответствующего матричного уравения $bb(e) dot x = bb(e prime)$
$
mat(3,-1,3,-3,-5,3;
    -2,3,2,7,9,5;
    1,1,1,5,3,11; augment: #3) => x =mat(15/8,1/8,49/8;
                                         9/2,7/2,15/2;
                                         -11/8,-5/8,-21/8)
$
\
(в) Пусть $C$ -- матрица перехода из пункта (б). Для того, чтобы найти координаты вектора в базисе $bb(e prime)$, решим СЛУ 
$
mat(C, v; augment: #1)
$
$
mat(15/8,1/8,49/8,-1;
    9/2,7/2,15/2,2; 
    -11/8,-5/8,-21/8,5;augment: #3) => v prime = mat(-105/4;73/4;15/2)
$
]
#answer[
(a) ч.т.д \

(б) $
mat(15/8,1/8,49/8;
                                         9/2,7/2,15/2;
                                         -11/8,-5/8,-21/8)
$

(в)
$
  mat(-105/4;73/4;15/2)
$
]
#pagebreak()

#problem[
Найдите базис и размерность каждого из подпространств $L_1, L_2,U=L_1 + L_2, W= L_1 sect L_2$ пространства $RR^5$, если $L_1$ -- линейная оболочка векторов
$
a_1 = (1,-4,-2,2,-1), a_2 = (5,-20,5,-2,4), a_3= (-1,4,-3,2,-2), a_4 =(-3,-4,2,-2,-2),
$
a $L_2$ — линейная оболочка векторов
$
b_1 = (3,-12,-1,2,0), b_2 = (-7,-4,6,-6,3), b_3= (-9,23,-3,-8,4), b_4 =(-3,-1,-5,-4,4).
$ 
]
#solution[
(1) Найдем базис $L_1$. Для этого приведем к УСВ соответствующую матрицу
$
mat(1,5,-1,-3;
    -4,-20,4,-4;
    -2,5,-3,2;
    2,-2,2,-2;
    -1,4,-2,-2) => " УСВ:" mat(1,0,2/3,0;
                               0,1,-1/3,0;
                               0,0,0,1;
                               0,0,0,0;
                               0,0,0,0) => " как базис можно взять векторы" a_1,a_2,a_4 => dim(L_1) = 3

$
(2) Найдем базис $L_2$. Для этого приведем к УСВ соответствующую матрицу
$
mat(3,-7,-9,-3;
    -12,-4,23,-1;
    -1,6,-3,-5;
    2,-6,-8,-4;
    0,3,4,4) => " УСВ:" mat(1,0,0,2;
                            0,1,0,0;
                            0,0,1,1;
                            0,0,0,0;
                            0,0,0,0) => " как базис можно взять векторы" b_1,b_2,b_3=>dim(L_2)=3
$
(3) Найдем базис $L_1 + L_2$. Так как пространства заданы первым способом, то достаточно рассмотреть УСВ следующей матрицы
$
mat(1,5,-1,-3,3,-7,-9,-3;
    -4,-20,4,-4,-12,-4,23,-1;
    -2,5,-3,2,-1,6,-3,-5;
    2,-2,2,-2,2,-6,-8,-4;
    -1,4,-2,-2,0,3,4,4) => " УСВ:" mat(1,0,2/3,0,4/3,0,0,8/3;
                                       0,1,-1/3,0,1/3,0,0,2/3;
                                       0,0,0,1,0,0,0,0;
                                       0,0,0,0,0,1,0,0;
                                       0,0,0,0,0,0,1,1)\
 => " как базис можно взять векторы" a_1,a_2,a_4,b_2,b_3 => dim(L_1 + L_2) = 5                                      

$
(4) Пользуясь альтернативным способом, найдем базис $L_1 sect L_2$. Найдем ФСР(как в алгоритме) для ОСЛУ
$
mat(1,5,-1,-3,3,-7,-9,-3;
    -4,-20,4,-4,-12,-4,23,-1;
    -2,5,-3,2,-1,6,-3,-5;
    2,-2,2,-2,2,-6,-8,-4;
    -1,4,-2,-2,0,3,4,4; augment: #4) => " УСВ:" mat(1,0,2/3,0,4/3,0,0,8/3;
                                       0,1,-1/3,0,1/3,0,0,2/3;
                                       0,0,0,1,0,0,0,0;
                                       0,0,0,0,0,1,0,0;
                                       0,0,0,0,0,0,1,1; augment: #4)\
=> " ФСР:" mat(-2/3;1/3;1;0;0;0;0;0),mat(4/3;1/3;0;0;1;0;0;0),mat(8/3;2/3;0;0;0;0;-1;1)
$
Следуя алгоритму,получаем, что 
$
linspan(mat(0;0;0;0;0),mat(3;-12;-1;2;0),mat(6;-24;-2;4;0)) " порождает" L_1 sect L_2
$
Вектор (3, -12, -1, 2, 0) является базисом $L_1 sect L_2 => dim(L_1 sect L_2) = 1$
]
#answer[
$L_1$:\
#h(12pt) Базис: $a_1, a_2, a_4$,\
#h(12pt) Размерность: 3.\
$L_2$:\
#h(12pt) Базис: $b_1, b_2, b_3$,\
#h(12pt) Размерность: 3.\
$L_1 + L_2$:\
#h(12pt) Базис: $a_1, a_2, a_4, b_2, b_3$,\
#h(12pt) Размерность: 5.\
$L_1 sect L_2$:\
#h(12pt) Базис: (3, -12, -1, 2, 0),\
#h(12pt) Размерность: 1.\
]
#pagebreak()
#problem[
Пусть $U-$ подпространство в $RR^5$, порожденное векторами
$
  v_1=(-7,14,-3,-7,-10),v_2=(-14,-9,-6,-12,-13),v_3=(12,-7,-12,0,7),v_4=(12,-44,-12,2,14).
$
Укажите базис какого-нибудь подпространства $W subset RR^5$, такого что $RR^5=U xor W$ и $W$ не представимо в виде линейной оболочки одних лишь векторов стандартного базиса пространства $RR^5$. Ответ обоснуйте.
]
#solution[
(1) Найдем базис $U$. Для этого приводим к УСВ матрицу
$
mat(-7,-14,12,12;
    14,-9,-7,-44;
    -3,-6,-12,-12;
    -7,-12,0,2;
    -10,-13,7,14) => " УСВ:" #isv(array(((-7,-14,12,12),(14,-9,-7,-44),(-3,-6,-12,-12),(-7,-12,0,2),(-10,-13,7,14)))) => " как базис можно взять векторы" v_1,v_2,v_3
$
(2) Как было доказано на семинаре, $W$ доп. к $U <=> exists u_1,...,u_k in U: W=linspan(e_j_1 + u_1,...,e_j_k + u_k) =>$ как $W$ можно взять
$
  linspan(mat(-6;14;-3;-7;-10),mat(-14;-8;-6;-12;-13))" эти векторы линейно независимы, берем их как базис"
$
]
#answer[
$
  mat(-6;14;-3;-7;-10),mat(-14;-8;-6;-12;-13)
$
]
#pagebreak()

#problem[
В пространстве $"Mat"_("2x2")(RR)$ рассмотрим подпространства $U=linspan(v_1,v_2)$ и $W=linspan(v_3,v_4)$, где
$
v_1=mat(-8,13;
         -4,-8), v_2=mat(-11,-15;
                         -10,14), v_3 =mat(-7,-11;
                                            -14,11), v_4=mat(-8,14;
                                            -13,-1).
$

(а) Докажите, что $"Mat"_("2x2")(RR)=U xor W.$\

(б) Найдите проекцию вектора
$
  xi = mat(49, 1;
            59,-19)
$
#h(18pt) на подпространство $W$ вдоль подпространства $U$.
]
#solution[
Так как $"Mat"_("2x2")(RR) tilde.eq RR^4$, то перепишем векторы как
$
v_1=mat(-8;13;-4;-8),v_2=mat(-11;-15;-10;14),v_3=mat(-7;-11;-14;11), v_4=mat(-8;14;-13;-1)
$
1. Докажем, что $U$ и $W$ линейно независимые. Сначала найдем $dim(U)$
$
  mat(-8,-11;
      13,-15;
      -4,-10;
      -8, 14)=> " УСВ:" #isv(array(((-8,-11),(13,-15),(-4,-10),(-8,14))))=>dim(U) =2
$
2. Найдем dim($W$)
$
  mat(-7,-8;
      -11, 14;
       -14,-13;
       11,-1)=> " УСВ:" #isv(array(((-7,-8),(-11,14),(-14,-13),(11, -1)))) => dim(W) = 2
$
3. Найдем dim($U + W$)
$
mat(-8,-11,-7,-8;
    13,-15,-11,14;
    -4,-10,-14,-13;
    -8,14,11,-1) => " УСВ:" #isv(array(((-8,-11,-7,-8),(13,-15,-11,14),(-4,-10,-14,-11),(-8,14,11,-1)))) => dim(U + W) = 4\
    dim(U + W) = dim(U) + dim(W) = 4 => U "и "W " линейно независимые"
$
4. Проверим, что базисные векторы лежат в $U + W$. Решим матричное уравнение
$
  mat(-8,-11,-7,-8,1,0,0,0;
    13,-15,-11,14,0,1,0,0;
    -4,-10,-14,-13,0,0,1,0;
    -8,14,11,-1,0,0,0,1;augment: #4)=> X=mat(-961/12813,	-357/4271,	-394/12813,	-728/4271;
-1243/12813,	236/4271,	1397/12813,	565/4271;
908/12813,	-516/4271,	-2041/12813,	-801/4271;
274/12813,	484/4271,	259/12813,	652/4271;;
	) => \
    " базисные векторы лежат в " U + W =>"Mat"_("2x2")(RR) = U xor W
$
5.
$
  mat(49;1;59;-19) = -9970/4271 dot v_1 - 3327/4271 dot v_2 - 10606/4271 dot v_3 - 2335/4271 dot v_4 =>\
  -10606/4271 dot mat(-7;-11;-14;11) - 2335/4271 dot mat(-8;14;-13;-1) =mat(92922/4271;83976/4271;178839/4271;-114331/4271)- " проекция на " W
$
]
#answer[
1. ч.т.д\
2. 
$
  mat(92922/4271,83976/4271;178839/4271,-114331/4271)
$
]
#pagebreak()

