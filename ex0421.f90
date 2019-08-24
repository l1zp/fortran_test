program ex0421
      integer :: a
      real :: b
      complex :: c
      logical :: d
      character(len=20) :: e
      a=10
      b=12.34
      c=(1,2)
      d=.true.
      e="Fortran"
      write(*,"(1X,I5)") a
      write(*,"(1X,F5.2)") b
      write(*,"(1x,f4.1,f4.1)") c
      write(*,"(1x,l3)") d
      write(*,"(1x,a10)") e
      end
