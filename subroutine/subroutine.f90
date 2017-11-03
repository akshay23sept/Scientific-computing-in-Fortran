program subroutine
implicit none
type books
character( len =50) :: title
character( len =50) :: author 
end type books
type(books),dimension(2) :: list
type (books) :: Book1
type (books) :: Book2
list(1)%title =" incompressible flow "
list(1)%author =" Ronald P panton "

list(2)%title =" fluid dynamics "

list(2)%author =" Frank M White "
print*,"book1%title"


end program subroutine
