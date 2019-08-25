program ex0435
      implicit none
      integer,parameter :: long_int = selected_int_kind(9)
      integer,parameter :: short_int = selected_int_kind(3)
      integer,parameter :: long_real = selected_real_kind(10,50)
      integer,parameter :: short_real = selected_real_kind(3,3)

      integer(kind=long_int) :: a = 12345678
      integer(kind=short_int) :: b = 12
      real(kind=long_real) :: c=1.23456789D45
      real(kind=short_real) :: d = 1230

      write(*,"(I3,1X,I10)") long_int,  a
      write(*,"(I3,1x,i10)") short_int , b
      write(*,"(i3,1x,e10.5)") long_real, c
      write(*,"(i3,1x,e10.5)") short_real, d
      end
