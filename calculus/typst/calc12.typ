#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#let title = "ДЗ 12"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
  Проведя полное исследование (в частности, найдя промежутки
монотонности и промежутки выпуклости/вогнутости), постройте графики функций
$
  а) space f(x) = (x+1)(x-2)^2; space б) space f(x)= (x^3(3x + 4))/(x+1)^3;\
  в) space f(x)=sqrt(x) ln x; space г) space f(x)=(x-6) e^(-1/x)
$
]
#solution[
1. $f(x) = (x+1)(x-2)^2$\
  1.1 D(f) = $RR$\
  1.2 Функция не является четной, ни нечтной, не является периодической\
  1.3 Пересечение с Оy: f(0)=4\
  #h(18pt)Пересечение с Оx: -1,2\
  1.4 $f prime (x) = 3x^2-6x; space f prime prime (x)=6x-6$\
  1.5 Возрастает при $x in (-infinity, 0) union (2, +infinity)$\
  #h(18pt)Убывает при $x in (0, 2)$\
  1.6 Выпукла при $x in (1, +infinity)$\
  #h(18pt) Вогнута при $x in (-infinity, 1)$\
  1.7 $ f prime (x) = 0 =>x=0;2-$ точки экстремума\
  #h(18pt) $f prime prime (x)=0 =>x=1-$точка перегиба\
  1.8 Асимптот нет\
  #figure(
  image("1.jpg", width: 80%),

)


2. $f(x)= (x^3(3x + 4))/(x+1)^3$\
  1.1 D(f) = $RR backslash {-1}$\
  1.2 Функция не является четной, ни нечетной, не является периодической, в -1 разрыв 2-го рода\
  1.3 Пересечение с Оy: f(0)=0\
  #h(18pt)Пересечение с Оx: $-4/3$,0\
  1.4 $f prime (x) = (3x^4+12x^3+12x^2)/(x+1)^4; space f prime prime (x)=(12x^2+24x)/(x+1)^5$\
  1.5 Возрастает при $x in (-infinity, -2) union (-2, -1) union (-1, 0) union (0, +infinity)$\
  #h(18pt)Убывает при $x in emptyset.rev$\
  1.6 Выпукла при $x in (-2, -1) union (0, +infinity)$\
  #h(18pt) Вогнута при $x in (-infinity, -2) union (-1, 0)$\
  1.7 $ f prime (x) = 0 =>x=-2;0-$ точки экстремума\
  #h(18pt) $f prime prime (x)=0 =>x=-2;0-$точки перегиба\
  1.8 $x=-1-$ вертикальная асимптота\
  #h(18pt) $display(lim_(x arrow infinity)) (x^3(3x + 4))/x(x+1)^3 = 3$\

  #h(18pt) $display(lim_(x arrow infinity)) (x^3(3x + 4))/(x+1)^3 - 3x=-5 => y= 3x-5 $ наклонная асимптота 
  #figure(
  image("2.jpg", width: 80%),
)

3. $f(x)=sqrt(x) ln x$\
  1.1 D(f) = $(0, +infinity)$\
  1.2 Функция не является четной, ни нечетной, не является периодической, в 0 устранимый разрыв\
  1.3 Пересечение с Оy: не определено\
  #h(18pt)Пересечение с Оx: 1\
  1.4 $f prime (x) = (ln x + 2)/(2sqrt(x)); space f prime prime (x)=(-ln x)/(4x sqrt(x))$\
  1.5 Возрастает при $x in (1/e^2, +infinity)$\
  #h(18pt)Убывает при $x in (0, 1/e^2)$\
  1.6 Выпукла при $x in (0, 1)$\
  #h(18pt) Вогнута при $x in (1, +infinity)$\
  1.7 $ f prime (x) = 0 =>x=1/e^2-$ точка экстремума\
  #h(18pt) $f prime prime (x)=0 =>x=1-$точка перегиба\
  1.8 Асимптот нет
  #figure(
  image("3.jpg", width: 80%),
)

4. $f(x)=(x-6) e^(-1/x)$\
  1.1 D(f) = $RR backslash {0}$\
  1.2 Функция не является четной, ни нечетной, не является периодической, в 0 разрыв 2-го рода\
  1.3 Пересечение с Оy: не определено\
  #h(18pt)Пересечение с Оx: 6\
  1.4 $f prime (x) = e^(-1/x)+(x e^(-1/x)-6e^(-1/x))/x^2; space f prime prime (x)=(13x-6)/(e^(1/x)x^4)$\
  1.5 Возрастает при $x in (-infinity, -3) union (2, +infinity)$\
  #h(18pt)Убывает при $x in (-3, 0) union (0, 2)$\
  1.6 Выпукла при $x in (6/13, +infinity)$\
  #h(18pt) Вогнута при $x in (-infinity, 0) union (0, 6/13)$\
  1.7 $ f prime (x) = 0 =>x=-3;2-$ точки экстремума\
  #h(18pt) $f prime prime (x)=0 =>x=6/13-$точка перегиба\
  1.8 $x = 0-$вертикальная асимптота\
  #h(18pt)$display(lim_(x arrow infinity)) ((x-6) e^(-1/x))/x = 1$\

  #h(18pt) $display(lim_(x arrow infinity)) (x-6) e^(-1/x) - x=-7 => y= x-7 $ наклонная асимптота 
  #figure(
  image("4.jpg", width: 80%),
)
]