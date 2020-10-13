program ReadingandWriting
    implicit none
    integer,parameter :: nl = 12290, nr =13
    integer :: c2 , c5 ,i,j
    character(len=1) :: c3,c4,c11 
    character(len=10) :: c1 
    real :: c(5),a(6)

    character(len=10) name 
    open(unit = 4 , file='input4.pdb',action='readwrite')
    open(unit = 9 , file='output.txt',action='readwrite')

    read(unit = 4,fmt = *) name,a,c1,c2,c5
    write(*,*)  name,a,c1,c2,c5
    do i = 1,nl
        do j = 1,nr
            read(unit = 4,fmt = *) c1,c2,c3,c4,c5,c,c11
            write(unit = *,fmt = *) c1,c2,c3,c4,c5,c,c11
        enddo
        read(unit = 4,fmt = *) name
        write(*,*)  name
    enddo

    



    read(unit = 4,fmt = *)  name
    read(unit = 4,fmt = *)  c1,c2,c3,c4,c5,c,c11
    write(*,*) c1,c2,c3,c4,c5,c,c11 
    
    
    
end program ReadingandWriting
