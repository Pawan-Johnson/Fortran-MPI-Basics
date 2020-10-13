program ReadingfromFile
    implicit none
    real :: array(27)
    integer :: i
    open(unit = 1 ,file='input1.xyz',action='read')
    read(1,*) array 
    do i=1,27
    write(*,*) array(i)
    enddo
    
end program ReadingfromFile