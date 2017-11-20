program thomas_algo
implicit none
                                                !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                                                !ad     : ABOVE DIAGONAL             !
                                                !d      : DIAGONAL                   !
                                                !bd     : BELOW DIAGONAL             !
                                                !y      : ASSUMED FUNCTION           !
                                                !z      : RHS VALUE OF MATRIX        !
                                                !a      : ABOVE DIAGONAL VALUES      !
                                                !b      : DIAGONAL VALUES            !
                                                !c      : BELOW DIAGONAL VALUES      !
                                                !j      : FILLING ABOVE DIAGONAL     !
                                                !k      : FILLING BELOW DIAGONAL     !
                                                !l      : FILLING MAIN DIAGONAL      !
                                                !e      : BACKWARD SUBSTITTION       !
                                                !q      : NO. OF DISCRITISING POINTS !
                                                !N      :DIMENSION OF MATRIX & DISCRITISATION POINT !
                                                !A,bBig    :FILLING OF ARRAY,UPPER &LOWER LIMIT OF F^N !
                                                !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
real,allocatable :: ad(:),d(:),bd(:)
real,allocatable :: x(:),y(:),Z(:)
real,allocatable  :: points(:)
integer:: i,j,k,l,o,p,r,t,q,v,m(1000)
real :: aBig,bBig,delx,error
integer:: a,b,c
integer:: e,N
!filling the array
!print*,"tell me the dimension of tridioagonal matrix and also no.of discritisation points"
!read*,N
!print*,"tell me the upper and lowerlimit of function please"
!read*,aBig,bBig
delx=(bBig-aBig)/(N)
do i=1,size(m)
  m(i)=10*i
end do
!PRINT*,m
do p=1,size(m)
N=m(p)  !number of values to interpolate after creating the polynomial
!N=4
bBig =1
aBig =0
!FOR ALL VALUES OF n POINTS

       

allocate (points(1:N))

allocate (y(1:N))
allocate (ad(1:N-1))
allocate (d(1:N))
allocate (bd(2:N))
allocate (x(1:N))
allocate (Z(1:N))





                do q = 1,N
points(q) = (aBig+(bBig-aBig)/N)*q
!print*,'THE PPOINTS ARE?:',points(q)
        end do
!the exact value of function
                do r = 1,N
y(r) = 1/(1+25* points(r)**2)
!print*, 'exact =', y(r)
!y(r) = x**2
        end do
                        
                        
!print*,"tell me the values of above diagonal please"
!read*,a
a = -1
!print*,"tell me the values of main diagonal please"
!read*,b
b =4
!print*,"tell me the values of below diagonal please"
!read*,c
c = -1
                do j = 1, N-1
ad(j) =a 
        end do
!print*,"above diagonal elements =", ad
                do k= 2,N
bd(k) =c
        end do
!print*,"below diagonal elements =", bd
                do l = 1,N
d(l) =b
        end do
!print*,"main diagonal elements =", d
                do o = 1,N
!Z(o) = -50 *points(o)*abs(bBig-aBig)/((N-1)*(25*points(o)**2 +1)**2)
Z(o) = 50*((75*points(o)**2 -1))  / (25*(points(o)**2 +1)**3)
!print*,'f',  'x:',z(o)
!Z(o) = 2*points(o)**2
!z(o) = 2 * x
        end do
!FOR FORWARD ELLIMINATION
!print*,'first z',z(1)
                do i =2,N
Z(i) = Z(i) - bd(i)/d(i-1) * Z(i-1)
!print*,' rhs new =',z(i)
end do
do v= 2,N
d(v) =d(v) - bd(v)/d(v-1) * ad(v-1)
!print*,'d ' ,d(v)
        end do
!print*,size(x)
!INITIALISING CERTAIN VALUES!
x(N) =Z(N)/d(N)
!FOR BACKWARD SUBSTITUTION!
            !    do e = N,2,-1

!x(e) = (x(e) - x(e+1)*ad(e))/d(e)
!print*,'the value of all x =' ,x(k)
!end do

do e = N,2,-1
x(e-1) =(Z(e-1) - x(e)*ad(e-1))/d(e-1)  
        end do
!print*,"unknown values for the given function is =",x
!print*,
!ANALYSING ERROR!
!do t = 1,N
!error(t) = y(t) - x(t)
!end do
error =abs((sum(y)-sum(x))/size(x))
print*,N,error

deallocate (points,ad,d,bd,Z,x,y)

end do !p loop

end program thomas_algo


