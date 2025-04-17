#import "../../exam_template.typ": *
#let title = "ДЗ 2"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Алгебра"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 1)[
  Пусть $G-$ группа всех невырожденных верхнетреугольных матриц ($2 times 2$)-матриц с коэффициентами из $RR$. Докажите, что все содержащиеся в $G$ матрицы вида $display(mat(1, *;0,*))$ образуют нормальную подгруппу в $G$.
]
#solution[
Пусть $H-$ искомая подгруппа(то что она действительно подгруппа проверяется тривиально). Тогда нужно доказать, что $g H g^(-1) subset.eq H space forall g in G$. Пусть $display(g=mat(x, y;0, z))$. Тогда
$
  g H g^(-1)=mat(x, y;0, z) dot mat(1, a;0,b) dot mat(1/x, -y/(x z);0, 1/z)=mat(1, -(y+a x+b y)/z;0,b) in H => g H g^(-1) subset.eq H.
$
]
#answer[
ч.т.д
]
#pagebreak()

#problem(name: 2)[
Найдите все гомоморфизмы из группы $ZZ_20$ в группу $ZZ_12$.
]
#solution[
Рассмотрим гомоморфизмы $phi:ZZ_20 arrow ZZ_12$. Данные группы циклические с образующим элементом 1, то образ гомоморфизма определяется образом 1, так как $phi(n)=phi(1 + ... + 1)=phi(1)+..+phi(1)$. Пусть $phi(1)=k$, тогда $phi(n)= n dot k$. Так как нейтральный элемент должен переходить в нейтральный элемент, то $phi(20) = 20k equiv 0 space (mod 12)=> 8k equiv 0 space (mod 12) => 2k equiv 0 space (mod 3) => k equiv 0 space (mod 3)$. Тогда все гомоморфизмы имеют вид $phi(n)= n dot k, k in {0, 3, 6, 9}$.
]
#answer[
  $phi(n)= n dot k, k in {0, 3, 6, 9}$
]
#pagebreak()
#problem(name: 3)[
Пусть $H-$ подгруппа всех элементов конечного порядка в группе $(CC \\ {0}, times)$. Докажите, что $H tilde.eq QQ \\ ZZ$, где группы $QQ$ и $ZZ$ рассматриваются с операцией сложения.
]
#solution[
Рассмотрим отображение $phi:QQ arrow CC \\ {0}, a arrow.bar e^(2 pi i a)=cos(2pi a) + i sin(2pi a)$. Оно является гомоморфизмом(взятие экспоненты гомоморфизм). Тогда $"Im"phi=S^1={z in CC | abs(z)=1}$. С другой стороны, $"Ker"phi=ZZ$. Тогда по теореме о гомоморфизме $S^1 tilde.eq QQ \\ ZZ$. Все элементы конечного порядка это в точности комплексные числа с модулем 1, значит $S^1=H=>H tilde.eq QQ \\ ZZ$.
]
#answer[
ч.т.д
]
#pagebreak()

#problem(name: 4)[
Пусть $m, n in NN$. Докажите, что следующие условия эквивалентны:
1. $(m, n)=1$;
2. Для всякой группы $G$, всякой подгруппы $A subset.eq G$ порядка $m$ и всякой подгруппы $B subset.eq G$ порядка $n$ выполняется условие $A inter B={e}$.
]
#solution[
- Докажем из 1 в 2. Пусть $k in A inter B=> k in A, k in B => "ord"(k) | m, "ord"(k) | n=> (m, n) = "ord"(k)=1=>k=e.$
- Докажем из 2 в 1. Хз
]