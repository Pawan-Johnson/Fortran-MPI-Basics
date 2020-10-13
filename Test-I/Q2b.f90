program Q2b
    implicit none
    integer :: i,N,neven=0,nodd=0
    read(unit = *,fmt = *) N

    do i = 2,N
        if ( mod(i,2) == 0 ) then
            neven = neven + 1
        else 
            nodd = nodd + 1
        end if  
    end do

    write(*,*) "Number of Even = ",neven
    write(*,*) "Number of Odd = ",nodd 
end program Q2b