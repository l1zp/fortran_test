program test
      implicit none
      real :: a(2,2)=reshape((/ 1,2,3,4 /),(/2,2/))
      integer :: i
      do i=1,2
      write(*,*) a(i,:)
      enddo
      end
