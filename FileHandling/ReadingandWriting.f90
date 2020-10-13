program ReadandWrite
    implicit none
    integer, parameter :: natoms = 878
    integer :: atom,index(natoms),total(natoms),i
    real :: cords(natoms,3)
    character :: elt(13)   

    open(unit = 100 , file='input3.xyz',action='read',status ='old')

    do atom = 1,natoms
        read(100,*) total(atom)
        read(100,*) index(atom)   
        do i=1,13
            read(100,*) elt(i),cords(atom,1),cords(atom,2),cords(atom,3)
            ! write(*,*) atom 
            ! write(*,*) elt(i),cords(atom,1),cords(atom,2),cords(atom,3)
        end do
    enddo  
    close(100)

    open(unit = 101,file='output.txt',action = 'write',status='new')
    do atom =1,natoms
        write(101,*) total(atom)
        write(101,*) index(atom)
        do i=1,13
            write(101,*) elt(i), cords(atom,1),cords(atom,2),cords(atom,3)
        end do
    end do    
end program ReadandWrite    