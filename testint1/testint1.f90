program testint1
implicit none
integer (kind=2) :: shortval
integer (kind=4) :: longval
integer (kind=8) :: verylongval
integer (kind=16):: veryverylongval

integer :: defval
print*, huge (shortval)
print*, huge (longval)
print*, huge (verylongval)
print*, huge (veryverylongval)
print*, huge (defval)
end program testint1
