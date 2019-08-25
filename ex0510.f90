program ex0510
      implicit none
      real :: a
      real :: b = 4.0
      real, parameter :: e=0.0001
      a=sqrt(b)**2-b
      if (abs(a-0.0)<=e) then
          write(*,*) "a equal to 0.0"
      else
          write(*,*) "a not equal to 0.0"
      end if
      end
