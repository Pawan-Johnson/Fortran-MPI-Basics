program main
    implicit none
    include 'mpif.h'
    integer :: ierrno, id ,np
    integer :: N = 3000,i
    real :: average = 0

    call MPI_INIT(ierrno)
    call MPI_Comm_Size(MPI_COMM_WORLD, np , ierrno)
    call MPI_Comm_Rank(MPI_COMM_WORLD,id,ierrno)


    do i=1,N 
        average = average + rand()
    end do
    average = average/N
    
    write(*,*) average 
    
    call MPI_FINALIZE(ierrno)

end program main