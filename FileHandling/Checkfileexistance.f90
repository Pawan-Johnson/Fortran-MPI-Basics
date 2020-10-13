program CheckFileExistance
    implicit none
    integer :: i  
    open(unit = 7,file ='output.txt',action='read',iostat=i,status='old')
    if (i/=0) then
        write(*,*) "File Not in Existance" 
    else
        write(*,*) "File Exists" 
    endif


end program CheckFileExistance