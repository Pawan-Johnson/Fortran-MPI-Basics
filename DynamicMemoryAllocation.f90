program Allocation
    implicit none
    real,allocatable :: coor(:,:)
    integer :: m,n 
    read(unit = *,fmt = *) m,n 

    allocate(coor(m,n))

    deallocate(coor)

    
end program Allocation