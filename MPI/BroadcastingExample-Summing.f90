program BroadcastingExample1
    implicit none
    include 'mpif.h'
    integer :: ierrno, rank ,np
    integer :: i,N,partialsum,finalsum,stride,first,last 
    
    call MPI_INIT(ierrno)
    call MPI_Comm_Size(MPI_COMM_WORLD, np , ierrno)
    call MPI_Comm_Rank(MPI_COMM_WORLD,rank,ierrno)

    N = 100
    partialsum = 0
    finalsum = 0

    stride = N/np

    first = stride*rank + 1
    last = stride*(rank + 1)

    if (rank == np -1) then 
        last = N 
    end if

    write(*,*) 'process', rank ,'starts at:',first,'ends at:',last
    
    do i=first,last
        partialsum = partialsum + i
    end do


    write(*,*) "Sum is :",partialsum 

    call MPI_Reduce(partialsum,finalsum,1,MPI_INTEGER,MPI_SUM,0,MPI_COMM_WORLD,ierrno) 

    write(*,*) "Final Sum is :",finalsum
    call MPI_FINALIZE()
    
    
end program BroadcastingExample1