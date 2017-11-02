program constantsex
implicit none 
real,parameter :: g = 9.81
real:: s ! displacement
real:: t ! time
real:: u ! initial speed

t = 2.0
u = 10.01

s = u*t -g*(t**2)/2
print*,"time =",t
print*, "displacement =",s
print*,"initial speed =",u
endprogram constantsex
