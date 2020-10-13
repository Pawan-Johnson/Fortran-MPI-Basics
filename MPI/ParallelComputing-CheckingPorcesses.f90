program main
    implicit none
    include 'mpif.h'
    integer :: ierrno, id ,np

    call MPI_INIT(ierrno)
    call MPI_Comm_Size(MPI_COMM_WORLD, np , ierrno)
    call MPI_Comm_Rank(MPI_COMM_WORLD,id,ierrno)

    if(mod(id,3)==0) then
        write(*,*) 'Sucessful'
    end if 
    
    call MPI_FINALIZE(ierrno)

end program main