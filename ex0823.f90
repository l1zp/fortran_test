program ex0823
      implicit none
      integer:: a=4
      integer b
      call div(a,b)
      write(*,*) a,b
      end

      subroutine div(a,b)
          implicit none
          integer,intent(in) :: a
          integer,intent(out) :: b
          b = a/2
          end
