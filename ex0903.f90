program ex0903
      implicit none
      character(len=20) :: filename="ex0903.f90"
      logical alive

      inquire(file=filename, exist=alive)
      if (alive)then
          write(*,*)filename," exist"
      else
          write(*,*)filename," dosen't exist."
      end if
      end
