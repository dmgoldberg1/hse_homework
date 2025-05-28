#import "../../exam_template.typ": *
#import "../../typst-sympy-calculator.typ": *
#import "@preview/pyrunner:0.1.0" as py
#import "../../gause_algo.typ": *
#let title = "ДЗ 20"
#let author = "Гольдберг Дмитрий Максимович"
#let course = "Математический анализ"
#let group = "Группа БПМИ248"
#show: title_page.with(title, author, course, group)
#show: template

#problem(name: 17.6)[
$
  integral x sin(x^2) d x=1/ 2integral sin(x^2) d x^2=-1/2 cos(x^2)+C\
  integral (e^x+e^(2x))/(1-e^x) d x=integral (e^x (1+e^x))/(1-e^x) d x=|u=1-e^x,d u =-e^x d x|=integral (u - 2)/u d u=integral 1 - 2/u d u=u-2 ln abs(u) +C=\
  =1 - e^x -2 ln abs(1-e^x) + C\
  integral (d x)/(x (ln x + 5))=integral 1/(ln x + 5) d ln x=ln abs(ln x + 5) + C\
  integral (d x)/(cos x)=integral (cos x)/(1 - sin^2 x) d x=|u =sin x, d u = cos x d x|=integral 1/(1 - u^2) d u=1/2 ln abs((1+u)/(1 - u)) + C=1/2 ln abs((1 + sin x)/(1 - sin x)) + C\
  integral (sin 2x)/(sqrt(1 - 4sin^2 x)) d x=-integral (1)/(sqrt(1 - (2sin x)^2)) d cos 2 x=-integral 1/(sqrt(2 cos 2x - 1)) d cos 2x =-1/2sqrt(2 cos 2x -1) + C\
  integral sin^7 x d x= integral (1 - cos^2 x)^3 sin x=-integral (1- t^2)^3 d t=integral t^6-3t^4+3t^2-1 d t =1/7 t^7-3/5t^5+t^3-t + C=\
  =1/7 cos^7 x-3/5 cos^5 x + cos^3 x - cos x + C\
  integral (d x)/(cos x + sin x) =integral (cos x - sin x)/(cos^2 x - sin^2 x) d x=integral (cos x)/(cos 2 x) d x - integral (sin x)/(cos 2 x) d x=1/sqrt(2)integral 1/(1 - 2sin^2 x) d sqrt(2)sin x \ + 1/sqrt(2)integral 1/(2 cos^2 x - 1) d sqrt(2)cos x=1/(2sqrt(2)) ln abs((1 + sqrt(2) sin x)/(1 - sqrt(2) sin x)) + 1/(2sqrt(2)) ln abs((sqrt(2) cos x - 1)/(sqrt(2) cos x + 1)) + C\
  integral x^2 sqrt(1-x^2) d x = |x=sin t, d x = cos t d t|=integral sin^2 t cos^ 2t d t = 1/4integral sin^2 2t d t = 1/8 integral (1 - cos 4 t) d t =\
  = 1/8 (t- (sin 4 t)/ 4) + C = 1/8 t - (sin 4 t)/32 + C=1/8 arcsin x-(sin (4 arcsin x))/32 + C\
  integral (d x)/(a^2-x^2)^(3/2)=|x=a sin t, d x = a cos t d t|=integral (a cos t d t)/(a^2 cos^2 t)^(3/2)=integral (a cos t d t)/(a^3 cos^3 t)= 1/a^2 integral 1/(cos^2 t) d t=\
  =1/a^2 tg t + C = (tg (arcsin x/a))/a^2 + C
$
]
#pagebreak()

#problem(name: 17.7)[
$
  integral arctan x d x= x arctan x - integral x d arctan x = x arctan x - integral x/(1 + x^2)d x=x arctan x - 1/2 ln abs(1 + x^2) + C\
  integral ln^2x d x=x ln^2 x - 2integral ln x d x = x ln^2 x - 2 (x ln x - x) + C\
  integral x^2 ln (1+ x) d x=|u=ln(1+x), d v = x^2 d x|=ln(1+x) x^3/3-1/3integral x^3/(1 + x) d x=\
  (integral x^3/(1+x) d x=|t=1+x|=integral (t -1)^3/t d t=integral (t^3-3t^2+3t-1)/t d t=integral t^2 -3t + 3 - 1/t d t=\
  = t^3/3 - 3/2 t^2+3 t- ln abs(t) + C=(1+x)^3/3 - 3/2 (1+x)^2+3 (1+x)- ln abs(1+x) + C) =\
  =ln(1+x) x^3/3-1/3 ((1+x)^3/3 - 3/2 (1+x)^2+3 (1+x)- ln abs(1+x)) + C\
  integral sin(ln x) d x= x sin(ln x) - integral cos(ln x) d x = x sin(ln x) - (x cos (ln x) + integral sin(ln x))\
  2integral sin(ln x) d x = x sin(ln x) - x cos(ln x) + C\
  integral sin(ln x) d x = (x sin(ln x) - x cos(ln x))/2 + C\
  integral sqrt(a^2 + x^2) d x = x sqrt(a^2 + x^2) - integral (x^2)/(sqrt(a^2+x^2)) d x = x sqrt(a^2 + x^2)-integral sqrt(a^2+x^2)-(a^2)/(sqrt(a^2+x^2)) d x=\
  =x sqrt(a^2 + x^2) - (x/2sqrt(a^2+x^2)+a^2/2 ln abs(x+sqrt(a^2+x^2)))+a^2ln abs(x+sqrt(a^2+x^2))+C\
  integral e^(a x) cos(b x) d x=|u=e^(a x), d v = cos(b x) d x|=e^(a x) sin(b x)/b - a integral sin(b x)/ b e^(a x)d x
$
]
#pagebreak()

#problem(name: 18.5)[
$
  integral (d x)/(x(x+1)(x+2)) d x=integral (1/2)/x - 1/(x+1) + (1/2)/(x+2) d x=1/2 ln abs(x)- ln abs(x + 1) + 1/2 ln abs(x + 2) + C\
  integral (x^2+5x+4)/(x^4+5x^2+4) d x\
  (x^2+5x+4)/(x^4+5x^2+4)=(a x + b)/(x^2+1)+ (c x + d)/(x^2+4)\
  x^2+5x+4=(a+c)x^3+(b+d)x^2+(4a+c)x+(4b+d)\
  cases(a+c=0,b+d=1,4a+c=5,4b+d=4) <==> (a,b,c,d)=(5/3,1,-5/3,0)\
  => (x^2+5x+4)/(x^4+5x^2+4)=(5/3 x + 1)/(x^2+1)+ (-5/3 x)/(x^2+4)\
  integral (x^2+5x+4)/(x^4+5x^2+4) d x=integral (5/3 x + 1)/(x^2+1)+ (-5/3 x)/(x^2+4) d x=5/3integral x/(x^2+1) d x + integral 1/(x^2+1) d x-5/3integral x/(x^2+4) d x=\
  =5/6 ln abs(x^2+1) + arctan x-5/6 ln abs(x^2 +4) + C\
  integral (x^2+3x-2)/((x-1)(x^2+x+1)) d x\
  (x^2+3x-2)/((x-1)(x^2+x+1))=a/(x-1) + (b x + c)/(x^2+x+1)\
  x^2+3x-2=(a+b)x^2+(a-b+c)x+(a-c)\
  cases(a+b=1,a-b+c=3,a-c=-2) <==> (a,b,c)=(2/3,1/3,8/3)\
  integral (x^2+3x-2)/((x-1)(x^2+x+1)) d x=2/3integral 1/(x-1)d x+1/3integral (x+8)/(x^2+x+1) d x=2/3 ln abs(x - 1)+1/3(integral (x+1/2)/(x^2+x+1) d x +\ + 15/2integral 1/((x+1/2)^2 +3/4) d x)=2/3 ln abs(x - 1) +1/3(1/2 ln abs(x^2+x+1)+2/sqrt(3) arctan((2x+1)/sqrt(3)))+C\
$
]
#pagebreak()

#problem(name: 18.6)[
$
  integral (d x)/(3+ sin x)d x=|t=tg x/2, sin x = (2t)/(1+t^2),d x =(2 d t)/(1+t^2)|=integral (2 d t)/(3t^2+2t+3)=\
  =2/3integral (d t)/((t+1/3)^2+8/9)=1/sqrt(2) arctan((3 t + 1)/(2sqrt(2))) + C=1/sqrt(2) arctan((3 tg x/2 + 1)/(2sqrt(2))) + C\
  integral (d x)/(2 sin x +3 cos x+5)=|t = tg x/2, sin x = (2t)/(1+t^2),cos x =(1-t^2)/(1+t^2),d x = (2 d t)/(1+t^2)|=\
  =integral (d t)/(t^2+2t+4)=integral (d t)/((t+1)^2+3)=1/sqrt(3)arctan((t+1)/sqrt(3))+C=1/sqrt(3) arctan((tg x/2 + 1)/sqrt(3))+C\
  integral (d x)/(2 sin^2 x + 3 cos^2 x)=integral (1/(cos^2 x) d x)/(2 tg^2 x + 3)=|t=tg x, d t = 1/(cos^2 x) d x|=1/2integral (d t)/(t^2 +3/2)=\
  =1/2 dot 1/sqrt(3/2)arctan(t/sqrt(3/2))+C=1/sqrt(6)arctan((sqrt(2) tg x)/sqrt(3))+C\
$
]
#pagebreak()

#problem(name: 18.7)[
$
  I_n=integral (d x)/(sin^n x)=integral 1/(sin^(n - 2) x) dot 1/(sin^2 x)d x=|u=1/(sin^(n - 2) x), d v =1/(sin^2 x)d x|=(1/(sin^(n - 2) x)(-ctg x))-\
  -integral (-ctg x)(-(n-2)cos x)/(sin^(n-1)x) d x=-(ctg x)/(sin^(n-2)x)-(n-2)integral (cos^2 x)/(sin^n x)=\
  = -(ctg x)/(sin^(n-2)x)-(n-2)integral (1-sin^2 x)/(sin^n x)=-(ctg x)/(sin^(n-2)x)-(n-2)(integral (1)/(sin^n x) d x-integral 1/(sin^(n - 2) x) d x)=\
  -(ctg x)/(sin^(n-2)x)-(n-2)(I_n - I_(n - 2))=> I_n=1/(n - 1)(-(ctg x)/(sin^(n - 2)x)+(n-2)I_(n-2))
$
]

