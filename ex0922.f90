program ex0922
      use typedef
      implicit none
      integer, parameter :: recl_unit=1
      integer, parameter :: buffer_size = 256*256
      character :: cbuffer(buffer_size)
      integer :: ibuffer(buffer_size)
      integer :: error, i, code

      open(10,file="lena.raw",form="unformatted",access="direct",&
          recl=256*256/recl_unit, status="old",iostat=error)
      if(error/=0)then
          write(*,*)"open lena.raw fail."
          stop
      end if

      read(10,rec=1)cbuffer
      close(10)

      do i=1,buffer_size
      code = ichar(cbuffer(i))
      if (code>=0)then
          ibuffer(i)=code
      else
          ibuffer(i)=256+code
      end if
      end do

      do i=1,buffer_size
      cbuffer(i)=char(255-ibuffer(i))
      end do

      open(10,file="newlena.raw",form="unformatted",access="direct",&
          recl=256*256/recl_unit,status="replace")
      write(10,rec=1)cbuffer
      close(10)
      stop
      end
