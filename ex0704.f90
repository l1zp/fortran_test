program ex0704
      implicit none
      integer,parameter :: row=2
      integer,parameter :: col=2
      integer :: matrixA(row,col)
      integer :: matrixB(row,col)
      integer :: matrixC(row,col)
      integer :: r
      integer :: c

      write(*,*) "matrixA:"
      do r=1,row
      do c=1,col
      write(*,"('A(',i1,',',i1,')=')") r,c
      read(*,*) matrixA(r,c)
      end do
      end do

      write(*,*) "matrixB:"
      do r=1,row
      do c=1,col
      write(*,"('B(',i1,',',i1,')=')") r,c
      read(*,*) matrixB(r,c)
      end do
      end do

      write(*,*) "Matrix A+B="
      do r=1,row
      do c=1,col
      matrixC(r,c)=matrixB(r,c)+matrixA(r,c)
      write(*,"('(',i1,',',i1,')=',i3)") r,c,matrixC(r,c)
      end do
      end do
      end
