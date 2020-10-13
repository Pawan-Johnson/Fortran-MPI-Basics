program Subroutines
    implicit none
    call hello 
    call World

    contains
        subroutine hello
            implicit none
            write(*,*) "Hello" 
    end subroutine hello

end program Subroutines

subroutine World
    implicit none
    write(*,*) "World" 
end subroutine World