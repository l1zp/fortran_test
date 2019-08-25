program ex0710
      implicit none
      integer :: i
      integer :: a(5)=(/(i,i=1,5)/)
      integer :: b(5)=0

      where(a<3)
          b=a
      end where
      write(*,"(5(i3,1x))") b
      end
