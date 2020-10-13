program main
    implicit none
    include 'mpif.h' ! Includes MPI 
    integer :: ierr , id,np 
    
    call MPI_INIT (ierr)
    call MPI_Comm_Size(MPI_Comm_World ,np, ierr)
    call MPI_Comm_rank(MPI_Comm_World,id,ierr)

    write(*,*) "Hello World"
    
    call MPI_FINALIZE(ierr)  ! Release Memory on Hold
end program main