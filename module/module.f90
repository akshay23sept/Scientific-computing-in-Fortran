module constants
implicit none
real, parameter :: pi = 3.1415926536
real, parameter :: e  = 2.716834

contains

	subroutine show_consts()
print*,"pi=pi",pi
print*,"e =e",  e
end subroutine show_consts



function ePower(x),result(ePx)
implicit none
real :: x
real ::ePx
ePx = e**x
end function ePower(x)

function areaCircle(r),result(a)
implicit none
real :: r
real :: a
a = pi*r**2
end function areaCircle(r)
end module constants
	 
program module_example
use constants
implicit none

call show_consts()
print*,"e raised to power 2.0 =", epowerx (2.0)
print*,"area of circle with radius 7.0 =", area(7.0)
end program module_example
