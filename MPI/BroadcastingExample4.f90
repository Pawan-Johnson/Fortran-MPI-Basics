program BroadcastingExample4
    implicit none
    

    include 'mpif.h'
    integer :: ierrno, rank ,np
    integer :: i,k
    type Molecule
        character(len=1) :: atom(3)
        real :: positions(3,3)
    end type

    type(Molecule) co2(1000*10)


    
    call MPI_INIT(ierrno)
    call MPI_Comm_Size(MPI_COMM_WORLD, np , ierrno)
    call MPI_Comm_Rank(MPI_COMM_WORLD,rank,ierrno)
    open(unit = 101 , file='co2.xyz',action='readwrite')

    do i=1,1000*10
        read(unit = 101,fmt = *) 
        read(unit = 101,fmt = *) 
        do k=1,3
            read(unit = 101,fmt = *) co2(i)%atom(k),co2(i)%positions(:,k) 
        end do
    end do

    do i=1,1000*10
        do k=1,3
            write(unit = *,fmt = *) co2(i)%atom(k),co2(i)%positions(:,k) 
        end do
    end do

    MPI_FINALIZE(ierrno)
end program BroadcastingExample4