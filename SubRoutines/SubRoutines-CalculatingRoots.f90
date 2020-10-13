program Prog2
    implicit none
    real :: a,b,c,root1,root2
    write(*,*) "Enter a,b,c"
    read(unit = *,fmt = *) a,b,c
    
    call desc(a,b,c,root1,root2)
    write(*,*) "Real roots are " ,root1,root2 
    
end program Prog2

subroutine desc(a,b,c,root1,root2)
    implicit none
    real :: a,b,c,des,root1,root2
    des = b*b - 4*a*c

    if (des < 0 ) then 
        write(*,*) "ROOTS ARE NOT REAL"
        CALL EXIT
    end if

    des = sqrt(des)
    root1 = -1*b + des 
    root1 = root1/(2*a)
    root2 = -1*b - des 
    root2 = root2/(2*a)



end subroutine desc
