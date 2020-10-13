! !
! MPI_Send(data,
!         count,
!         MPI_datatype,
!         destination_process_id,
!*NEW ARG* tag, Integer number to distinguish between messages.
!         MPI_Comm,
!         error)


! MPI_Recv(data,
!         count,
!         MPI_datatype,
!         source_process_id,
!         tag,
!         MPI_Comm,
!         mpi_status, 
!         error)

! MPI_Any_Tag -> In case you don't want to assign a tag
! 