program test
    integer, parameter :: natoms=13
    
    integer :: i, j, num_atom, frame_idx
    integer :: atm_coor(natoms,3)
    character(len=10) :: atm_name(natoms)

    open(unit=1, file='data.xyz',action='read')
    open(unit=2, file='output.xyz',action='write')
    
    do i=1, 878
        do j=1, natoms
            read(1, *) num_atom
            read(1, *) frame_idx
            read(1, *) atm_name(i)
            read(1, *) atm_coor(i,:)
        enddo

        do j=1, frame_idx
            write(2, *) num_atom
            write(2, *) frame_idx
            write(2, *) atm_name(i)
            write(2, *) atm_coor(i)
        enddo
    enddo

    close(1)
    
    write(*,*) atm_coor

end program test
