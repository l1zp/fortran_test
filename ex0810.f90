program ex0810
      implicit none
      integer :: a,b
      common a,b
      a=1
      b=2
      call showcommon()
      end

      subroutine showcommon()
          implicit none
          integer :: num1, num2
          common num1,num2
          write(*,*) num1,num2
          return 
          end
