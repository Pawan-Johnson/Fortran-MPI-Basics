program Q4a
    implicit none
    integer,parameter :: N = 10
    integer :: i,j
    real :: a(N),temp
    write(*,*) "Enter 10 Numbers "
    read(unit = *,fmt = *) a 
    
    ! write(*,*) a
    do i = 1, N 
        do j = i+1,N 
            if (a(i) < a(j) ) then
                temp = a(j)
                a(j) = a(i)
                a(i) = temp 
            end if 
        end do
    end do
    write(*,*) a 

end program Q4a