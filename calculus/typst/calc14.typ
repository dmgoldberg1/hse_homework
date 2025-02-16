#import "../../exam_template.typ": *
#import "../../exam_template.typ": *
#let title = "ДЗ 14"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem[
  Найдите значение дифференциала функции\
  а) $f(x,y)=root(3,4x^2+y^2)$ в точке (1, 2) на векторе (-0.2, 0.3);  б) $f(x,y)=x^3y-x y^3$ в точке (1, 2) на векторе (-0.5, 0.8)  
]
#solution[
  а) $nabla f=((8x)/(3root(3,(4x^2+y^2)^2)), (2y)/(3root(3,(4x^2+y^2)^2)))=> nabla f(1,2)=(2/3, 1/3)=>(nabla f(1,2), (-0.2, 0.3)^T)=2/3 dot (-0.2)+1/3 dot (0.3)=-1/30$\
  б) $nabla f=(3x^2y-y^3,x^3-3x y^2)=>nabla f(1,2)=(-2,-11)=>(nabla f, (-0.5,0.8)^T)= -2 dot (-0.5)+(-11) dot 0.8=-7.8$
]
#answer[
  -1/30, -7.8
]
#pagebreak()

#problem[
  Пусть $f(x,y)=x^2-x y +y^2$. Вычислите производную по направлению $(cos alpha, sin alpha)$ в точке (1, 1). Для какого $alpha$ эта проищводная а) максимальна; б) минимальна; в) равна нулю.
]
#solution[
$nabla f=(2x-y, 2y-x)=> nabla f(1,1)=(1,1)=>(nabla f(1,1), (cos alpha, sin alpha)^T)=cos alpha + sin alpha.$ Из вида и свойств графика функции $y=sin x + cos x$ заключаем, что максимум достигается при $alpha =pi/4$, минимум при $alpha =(5pi)/4$, ноль при $alpha =(3pi)/4$.]
#answer[
$pi/4, (5pi)/4, (3pi)/4$
]
#pagebreak()

#problem[
  Найти касательную плоскость к поверхности $z=x^3+3x y^2$ в точке (1, 2, 13)
]
#solution[
$F_x prime=3x^2+3y^2=> F_x prime(1,2,13)=15$\
$F_y prime=6x y=> F_y prime(1,2,13)=12$\
$F_z prime=-1$\
$=>$ уравнение касательной имеет вид
$
  15(x-1)+12(y-2)-(z-13)=0
$
]
#answer[
  $
    15(x-1)+12(y-2)-(z-13)=0
  $
]