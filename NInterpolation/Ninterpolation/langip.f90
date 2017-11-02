program lang_ip
implicit none


real(8),allocatable  :: x(:), y(:),xi(:),xj(:) !array of coeff of x(order1 ) and y (order n)
real (8),allocatable :: z(:)
integer:: i
integer:: N
N = 4 ! 0rder of polymial

 print*,"langrangian interpolation of f(n) is "


z = (x-x(i))/(x(i)-x(j))

allocate (x(N+1),y(N+1))

          x = 1
	do i = 0,N
	x = x a(i)
	end do

            x = 0
	do i = 0,N
	x = x + a(i)
	end do 

!for an example
x(i) =   -1.0
x(j) =   1.0

	do i =1, N+1
	if (i=j) cycle
	else
print*," value of x(i) is "

	x(i) = x(i-1)+z
	end if
	print*, x(i)
	end do

   y = (1/(1+25*(x**2)))
print*,y

	do i =1, N
! z = (xi-xj)/(xi-xj)
z = (x-xi)/(xi-xj)

print*,"z"


end program
