program ex0916
      implicit none
      integer i
      integer, external :: Getinteger
      i = getinteger()
      write(*,*)i
      stop
      end program

      integer function Getinteger()
          implicit none
          character(len=80)::string
          logical :: invalid
          integer :: i,code

          invalid = .true.
          do while(invalid)
          write(*,*)"please input inter"
          read(*,"(A90)")string
          invalid = .false.
          do i=1,len_trim(string)
          code = ichar(string(i:i))
              if(code<ichar('0').or.code>ichar('9'))then
                  invalid=.true.
                  exit
              end if
          end do
          end do
          read(string,*)Getinteger
          return
          end function
