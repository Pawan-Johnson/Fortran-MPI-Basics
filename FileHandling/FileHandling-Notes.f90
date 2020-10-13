program readinginput
    implicit none

    ! Reading from User
    integer:: s1,s2,s3,total
    write(*,*) 'Enter S1,S2,S2 values'
    read(*,*) s1,s2,s3
    write(*,*) total 
     
end program readinginput

! File assosciated with a number that we use to acces the file contents.
! 5 is reserved for std input.
! 6 is reserved for std output
! Thus,
! read(*,*) is equivalent to read(5,*)
! write(*,*) is equivalent to write(6,*)
! 
! Writing to a file
! write(26,*) total
! The above will make a file with name fort26 and write to it.


! read(unit,fmt,ERR,iostat,end)
! unit - integer of file name
! fmt - to specify the type of input (integer, real...) it will take use * when you want to take any input
! ERR ?
! iostat takes the value
! end - specifies the end of of the file

! read(*,*)
! read(1,*)
! read(1000,*)
! read(10+i,*)
! read(1,*,err=100) when error is encountered control goes to the label 100
! read(1,*,end=100) 
! read(1,*,iostat = value) value will be 0 if there is no error

! write(unit,fmt,ERR,iostat)
! write(*,*)
! write(1,*)
! write(1000,*)
! write(10+i,*)
! write(1,*,err=100) when error is encountered control goes to the label 100
! write(1,*,end=100) 
! write(1,*,iostat = value) value will be 0 if there is no error

! open(unit,file,action,status,iostat)
! unit is the number assosiated with the file
! file must be given a string with the filename
! action can take only 3 strings read,write,readwrite
! status takes in string values old/new/scratch 
    ! old => new data is appended to end to file
    ! new => new data is written to start of file
    ! scratch => after reading file is deleted
! iostat = value value returns the error that was caused while opening the file


! open(unit=1,file='coord.xyz',action='read')
! open(unit=1,file='coord.xyz',action='readwrite')