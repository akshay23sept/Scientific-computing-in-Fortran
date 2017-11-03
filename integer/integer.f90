program calc_integer
  implicit none   !forces the programmer to declare all variables
  integer :: w,l
  integer :: prmtr, area, diag1, diag2 

  w = 3                    !Define a
  l = 4                    !Define b
  prmtr = 2*(w + l)        !Calculate the perimeter of rectangle
  area  = w*l              !Calculate the area of rectangle

  !> Should give error on compilation
  diag1 = sqrt(w**2+l**2) !Calculate diagonal
  diag2 =(w**2+l**2)**0.5  !Calculate diagonal

  print*, 'Perimeter = ',prmtr
  print*, 'Area = ' ,area
  print*, 'diag1 = ',diag1
  print*, 'diag2 = ',diag2

end program calc_integer
