program Q4b
    implicit none
    integer,parameter :: N = 10
    integer :: i
    real :: a(N),average = 0

    do i = 1,N
        a(i) = rand()
        average = average + a(i)
    end do
    average = average/N

    write(*,*) a 
    write(*,*) average 
end program Q4b