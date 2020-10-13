program Calculate
    implicit none
    real :: stddev,mean,sum 
    integer :: i 

    stddev = 0
    sum = 0

    do i=1,100
        sum = sum + i 
    enddo

    mean = sum/100

    do i=1,100
        stddev = (mean - i)**2 + stddev
    enddo

    stddev = stddev/100

    stddev = sqrt(stddev)

    write(*,*) mean,stddev


    
end program Calculate