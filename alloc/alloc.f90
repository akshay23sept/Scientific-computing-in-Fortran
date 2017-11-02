program alloc
implicit none
integer,allocatable,dimension(:) :: vector
integer :: element,i
print*, "enter the number of element in the vector"
read*,element
allocate (vector(element))
print*, "your vector is of size ",'element'
	do i =1,element
		read*, vector(i)
	end do
	do i =1,element
		print*, vector(i)
	end do
deallocate (vector)

end program alloc
