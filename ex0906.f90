module typedef
      type student
          integer :: Chinese,english,math
      end type
      end module

program ex0906
      use typedef
      implicit none
      integer :: students
      type(student),allocatable :: s(:)
      character(len=80) :: filename="data.txt"
      integer,parameter :: fileid=10
      integer :: i

      write(*,*)"how much students in your class?"
      read(*,*)students
      allocate(s(students),stat=i)
      if(i/=0)then
          write(*,*)"Allocate buffer fail"
      end if
      open(fileid,file=filename)
      do i=1,students
      write(*,"('please input 'i2' classmates chainese english and mathresult')")i
      read(*,*)s(i)%chinese ,s(i)%english, s(i)%math
      write(fileid,"(4i3)")i,s(i)
      end do
      close(fileid)
      end
