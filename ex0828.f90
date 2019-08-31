program ex0828
      implicit none
      integer :: n
      integer,external :: fact
      write(*,*) 'N='
      read(*,*)n
      write(*,"(i2,'! = ',i8)")n,fact(n)
      end
      recursive integer function fact(n)result(ans)
          implicit none
          integer :: n
          if (n<0)then
              ans=-1
              return
          else if(n<=1)then
              ans=1
              return
          end if

          ans = n*fact(n-1)
          return
          end
