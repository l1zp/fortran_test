program ex0717
      implicit none
      integer :: size,error=0
      integer,parameter :: one_mb=1024*1024
      character,allocatable :: a(:)

      do while(.true.)
      size=size+one_mb
      allocate(a(size),stat=error)
      if(error/=0) exit
      write(*,"('Allocate ',i10,' bytes.')") size
      write(*,"(f10.2,' MB used.')") real(size)/real(one_mb)
      deallocate(a)
      end do
      end
