
program module_example     
use constants      
implicit none     

   real :: x, ePowerx, area, radius 
   x = 2.0
   radius = 7.0
   ePowerx = e ** x
   area = pi * radius**2     
   
   call show_consts() 
   
   print*, "e raised to the power of 2.0 = ", ePowerx
   print*, "Area of a circle with radius 7.0 = ", area  
   
end program module_example
