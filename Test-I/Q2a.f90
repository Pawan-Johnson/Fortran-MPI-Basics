program Q2a
    implicit none
    real :: a,b,c,des,root1,root2
    write(*,*) "Enter a,b,c"
    read(unit = *,fmt = *) a,b,c
    
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
    write(*,*) "Real roots are " ,root1,root2 

    
end program Q2a