program thomas_algo
implicit none

real(8):: ud(4),d(4),ld(4) ! diagonals of the original matrix
real(8):: x(4) ! the unknown 'x' matrix and the matrix with values
integer :: i,j,k,l,m,o,p,t

real(8) ::rhs(4)
real(8) :: a,b,c !the  of the upper, lower and diagonal elements
!real(8):: points(:),error(:)
!real(8) :: ul,ll,delx
ud = (/-1.0,-1.0,-1.0,-1.0/)
d = (/4.0,4.0,4.0,4.0/)
ld = (/-1.0,-1.0,-1.0,-1.0/)
rhs=(/2.0,4.0,6.0,13.0/)

do i=2,4
d(i) = d(i) - ld(i)/d(i-1) * ud(i-1)
print*,'dia = ',d(i)

end do
print*,' ALL DIAG ELE ' , d
do p=2,4
rhs(p) = rhs(p) - ld(p)/d(p-1) * rhs(p-1)
print*,'the new RHS =',rhs(p)
end do
print*,'the last RHS = ',rhs(4)



x(4) = rhs(4)/d(4)
print*,' the last x= ',x(4)

do k=4,1,-1

x(k-1) = (rhs(k-1) - x(k)*ud(k-1))/d(k-1)
print*,'the value of all x =' ,x(k)
end do



end program thomas_algo
