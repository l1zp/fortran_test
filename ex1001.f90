program ex1001
      implicit none
      integer, target :: a=1
      integer, pointer :: p
      p=>a
      write(*,*)p
      a=2
      write(*,*)p
      p=3
      write(*,*)a
      stop
      end
