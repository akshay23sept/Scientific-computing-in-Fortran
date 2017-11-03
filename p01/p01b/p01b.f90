program trap_method
  implicit none

integer :: i, n,a,b
real :: sumation, mean, height, f(i), integral


 !  value of the integral using the trapezium rule 

 ! integral = (b - a)*((f(a) +f(b))/2 + sumation_1_n-1 )/n 
write (*,*) "type the limits a, b and the number of intervals"
     read *, a, b, n

    height = (b - a)/n
        mean = (f(a) + f(b))/2
sumation = 0

do i = 1, n-1  
    sumation = sumation + f(i)
end do


      integral = height*(mean + sumation) 
  write (*,*) "the value of the integral using the trapezoidal method is", integral

     end program 

function f(x)
  real :: f(x) 
  integer :: (x)

      f(x) = EXP(x)

end function

