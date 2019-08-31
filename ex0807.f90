program ex0807
      implicit none
      real :: a=1
      real :: b = 2
      real,external :: add

      write(*,*) add(a,b)
      end

      real function add(a,b)
          implicit none
          real :: a,b
          add = a+b
          return
          end
