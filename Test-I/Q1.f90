program Q1
    implicit none
    integer :: Natoms = 1000,i,j,k
    character :: atom(3)
    real :: postions(3,3),averageDist = 0,CO1,CO2,minDist = 100000 
    open(unit = 101 , file='co2.xyz',action='readwrite')
    read(unit = 101,fmt = *) 
    read(unit = 101,fmt = *)
     
    

    do k = 1,10
        read(unit = 101,fmt = *)
        read(unit = 101,fmt = *) 
    do i = 1, Natoms
        do j = 1, 3
            read(unit = 101,fmt = *) atom(j),postions(1,j),postions(2,j),postions(3,j) 
            ! write(*,*) Natoms,postions(1,j),postions(2,j),postions(3,j) 
        end do
        CO1 = sqrt((postions(1,1) - postions(1,2))**2 + (postions(2,1) - postions(2,2))**2 + (postions(3,2) - postions(3,2))**2 )   
        CO2 = sqrt((postions(1,1) - postions(1,3))**2 + (postions(2,1) - postions(2,3))**2 + (postions(3,2) - postions(3,3))**2 )

        if (minDist > CO1) then
            minDist = CO1
        else if (minDist > CO2) then 
            minDist = CO2
        end if 
    
        averageDist = averageDist + (CO1 + CO2)/2
    end do
    averageDist = averageDist/Natoms
    write(*,*)  averageDist  , minDist   
    end do
    
end program Q1