program Basics
    implicit none



    real, parameter :: PI = 3.1415
    ! Numbers with decimals (floats)
    ! You can assign a value or leave undefined
    real :: r_num1 = 0.0, r_num2 = 0.0
    ! Doubles are accurate to 15 decimals
    double precision :: dbl_num = 1.1111111111111111d+0
    ! Numbers without decimals (whole numbers)
    integer :: i_num1 = 0, i_num2 = 0
    ! Boolean type
    logical :: can_vote = .true.
    ! Single Character
    character :: i_char
    ! String of length 10
    character*20 :: name
    ! Another way to declare a string
    character (len = 10) :: month
    ! Complex TYPES
    complex :: com_num = (2.0, 4.0)
    
    ! Get largest value for data types
    print *, "Biggest Real ", huge(r_num1)
    print *, "Biggest Int ", huge(i_num1)

    ! Get smallest value for data types
    print *, "Smallest Real ", tiny(r_num1)

    ! Kind returns the number of bytes for each type
    print "(a4, i1)", "Int ", kind(i_num1)
    print "(a5, i1)", "Real ", kind(r_num1)
    print "(a7, i1)", "Double ", kind(dbl_num)
    print "(a8, i1)", "Logical ", kind(can_vote)
    
    
    !  ----- FORMATTED OUTPUT WITH PRINT -----
    ! character(len=5) :: i_char
    ! Integers are right justified by default
    print *, "A Number ", 10

    ! Integers are formatted like this RiW
    ! R : Number of times to use what follows per line
    ! W : Width to take up for each value
    print "(3i5)", 7, 6, 8
    print "(i5)", 7, 6, 8

    ! Floats are formatted like RfW.D
    ! R & W : Same as above
    ! D : Decimal places to show
    print "(2f8.5)", 3.1415, 1.234

    ! Characters & Strings are formatted RaW
    ! / Adds a newline
    print "(/, 2a8)", "Name", "Age"

    ! Exponential Notation ReW.D
    print "(e10.3)",123.456

    ! Use multiple types
    print "(a5,i2)", "I am ", 43

    ! Left justify Numbers
    ! Convert int 10 into a string
    write (i_char, "(i5)") 10

    ! Print formatted output left justified
end program Basics
