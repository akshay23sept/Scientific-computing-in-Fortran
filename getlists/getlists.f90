program get_lists
    character(len=100) :: fileBase,fileExt,fCount,fileName
    integer :: i
    real(8) :: rN

    fileBase="newfile_"
    fileExt=".dat"

    do i=1, 20 
        if (i < 9) then !change this as required valid for numbers below 99!
            fCount = "(A8,I1)"
!since there are 8 characters in name of my file base so I used A8
        else
            fCount = "(A8,I2)"
        endif
	write (fileBase,fCount) fileBase,i
        fileName=trim(fileBase) // fileExt  
        print *, " ", fileName   !if required
	open(1, file=fileName)
	CALL RANDOM_NUMBER(rN)
!if you want to see the value of random number
print*,rN


	write(1,*) rN
	close(1)
    enddo

end program get_lists


! compile using gfortran getlists.f90 -o getlists.exe
! run using ./getlists.exe


