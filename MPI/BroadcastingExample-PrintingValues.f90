program BroadcastingExample2
    implicit none
    include 'mpif.h'
    integer :: ierrno, rank ,np
    integer :: a(5)
    
    call MPI_INIT(ierrno)
    call MPI_Comm_Size(MPI_COMM_WORLD, np , ierrno)
    call MPI_Comm_Rank(MPI_COMM_WORLD,rank ,ierrno)

    if(rank == 0) then
    read(unit = *,fmt = *) a 
    end if 

    call MPI_Bcast(a,5,MPI_INTEGER,0,MPI_COMM_WORLD,ierrno)

    write(*,*) a  

    call mpi_finalize(ierrno)
end program BroadcastingExample2