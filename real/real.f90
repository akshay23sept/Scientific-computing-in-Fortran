program calc_real
  implicit none   !forces the programmer to declare all variables
  real(8) :: w,l 
  real(8) :: prmtr, area, diag1, diag2

  w = 3.0                    !Define a
  l = 4.0                    !Define b
  prmtr = 2.0*(w + l)        !Calculate the perimeter of rectangle
  area  = w*l              !Calculate the area of rectangle
  diag1  = sqrt(w**2.0+l**2.0) !Calculate diagonal
  diag2 =(w**2.0+l**2.0)**0.5  !Calculate diagonal

  print*, 'Perimeter = ',prmtr
  print*, 'Area = ' ,area
  print*, 'diag1 = ',diag1
  print*, 'diag2 = ',diag2

end program calc_real
