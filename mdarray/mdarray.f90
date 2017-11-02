program mdarray
implicit none
integer,dimension (2,3) :: a
integer :: row, column,count
count =0
do row = 1,2
count =0
end do
do column = 1,3
count = count + 1
a (row,column) = count
end do
do row =1,2
do column =1,3
print *,a(row,column)
end do
end do
end program mdarray
