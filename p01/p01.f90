program rect_method
implicit none

integer :: i,N

real(8),allocatable :: x(:),y(:),a(:)
 real (8):: h,ul,ll,E

N =10

ul =1.0
ll =0.0
h = (ul-ll)/N

print*, h,ul,ll,N

allocate(x(N+1),y(N+1))

	do i =1, N+1
	if(i==1) then
	x(i) = ll
	else
	x(i) =x(i-1)+h
	end if
	print*, x(i)
	end do



y =1/x
y = exp(-x**2)
y = (2+ sin(2*x**2))
y = exp(10-x)
print*,x
print*,y
print*,x,y
   do i=1,N 
!a(i) = h*(y(i+1)-y(i))
a(i)= h*y(i+1)
print*, a(i)
end do


print*,"the calculated value for the integration is",sum(a)
print*,"the value of error is ",E

deallocate (x,y,a)
end program rect_method




