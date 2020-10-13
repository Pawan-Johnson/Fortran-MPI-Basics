program Prog1
    implicit none
    character(len=5) :: atom,end
    integer :: c2,c5,i,j
    integer,parameter :: Natoms = 13,Ncrystals = 878
    real :: c6_10(5)
    character :: c3,c4,c11

    open(unit = 101 , file='input4.pdb',action='readwrite')
    open(unit = 102 , file='output.txt',action='readwrite')

    read(unit = 101,fmt = *) 
    do i = 1,Ncrystals
        do j=1,Natoms
            read(unit = 101, fmt = *) atom,c2,c3,c4,c5,c6_10,c11
            write(unit = 102, fmt = "(a,2x,i2,2x,a,2x,a,2x,i1,5F8.3,2x,a)") atom,c2,c3,c4,c5,c6_10,c11
        end do
        read(unit = 101,fmt = *) end
        write(102,*) end   
    end do 


    
    
end program Prog1
