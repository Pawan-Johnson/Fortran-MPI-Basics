program MPIPROGRAMMING
    implicit none
    include 'mpif.h' ! Includes Communicatiors ...
    integer :: ierr,nproc,rank

    call mpi_init(ierr) ! Sets up the Environment
    call mpi_comm_size(MPI_COMM_WORLD,nproc,ierr) ! Allows to know the size of the communicator
    call mpi_comm_rank(MPI_COMM_WORLD,rank,ierr) ! Assigns a number to all the processes

    

    call mpi_finalize(ierr)

end program MPIPROGRAMMING

! Datatypes for MPI Processes are defined as MPI Constants in mpif.h
! Logical - MPI_LOGICAL
! Integer - MPI_INTEGER 
! Real - MPI_REAL
! Double - MPI_DOUBLE_PRECISION

! Similarly MPI OPERATIONS are defined in mpif
! Max - MPI_MAX
! Min - MPI_MIN
! Sum - MPI_SUM
! Prod - MPI_PROD 

! To Brodcast data from one process to multiple ones
! MPI_Bcast(
!     data, Variable whose data is to be sent
!     int count, Size of data( No of Elements )
!     MPI_Datatype datatype,  Type of data of data
!     int root, Process rank from which data is to be taken
!     MPI_Comm communicator,
!     ierr To check error
! )

! To collect data from multiple process into a single process
! MPI_Reduce(
!     send_data, Variable from which the data is recieved
!     recv_data, Variable which holds the results (after applying operations on imput data)
!     int count, Size of send_data  ( No of Elements )
!     MPI_Datatype datatype, Type of data of send data
!     MPI_Op op, Operation to be done on send_data the result will go to recv_data
!     int root, Process rank which will hold the result
!     MPI_Comm communicator, 
!     ierr To check error
! )