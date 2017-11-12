program arrayProg
implicit none
 real :: number(5) !ine dimensiomnal array
integer :: matrix(3,3),i, j !two dimensional array
!assigning values to the array
do i = 1,5
   number(i) = i * 2
end do
 do i =1,5
print*, number(i)
end do  
do i = 1,3
do j = 1,3
matrix(i,j) = i+j
   end do
end do
do i =1,3
do j = 1,3
print*, matrix(i,j)
end do
end do
number =(/1.5,3.2,5.6,7.1,4.6/)
do i =1,5
print*, number(i)
end do
end program arrayProg
