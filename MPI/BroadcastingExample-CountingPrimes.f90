program BrodcastingExample3
    implicit none
    include 'mpif.h'
    integer :: ierrno, rank ,np
    integer :: i,N,noprime,totalnoprime,stride,end
    
    call MPI_INIT(ierrno)
    call MPI_Comm_Size(MPI_COMM_WORLD, np , ierrno)
    call MPI_Comm_Rank(MPI_COMM_WORLD,rank,ierrno)
     totalnoprime = 0
    N = 100
    stride = N/np 
    i = rank*stride + 2
    end = i + stride -1

    if(rank == np-1) THEN
    end = N
    END IF 
    call CountPrime(i,end,noprime)

    call MPI_Reduce(noprime,totalnoprime,1,MPI_INTEGER,MPI_SUM,0,MPI_COMM_WORLD,ierrno)

    if (rank==0) then
    write(*,*) totalnoprime 
    end if 

    call MPI_Finalize(ierrno)
end program BrodcastingExample3


subroutine CountPrime(start,end,noprime)
    implicit none
    integer :: start,end,noprime,isprime,i
    noprime = 0
    do i = start,end
        call CheckPrime(i,isprime)
        if (isprime == 1) then
            write(*,*) i, "is prime" 
            noprime = noprime + 1
        end if 
    end do 
end subroutine CountPrime 

subroutine CheckPrime(num,isprime)
    implicit none
    integer :: num,isprime,i
    isprime =1
    do i = 2,num-1
        if (mod(num,i) == 0) then
            isprime = 0
        end if 
    end do
end subroutine CheckPrime


