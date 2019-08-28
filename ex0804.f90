program ex0804
      implicit none
      integer :: a = 1
      integer :: b = 2
      call add(a,b)
      end
      subroutine add(first,second)
          implicit none
          integer :: first,second
          write(*,*) first+second
          return
          end subroutine add
