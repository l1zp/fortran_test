program ex0714
      implicit none
      integer :: i,j
      integer,parameter :: size=5
      integer :: a(size,size)

      forall(i=1:size,j=1:size,i>j) a(i,j)=1
          forall(i=1:size,j=1:size,i==j) a(i,j)=2
              forall(i=1:size,j=1:size,i<j) a(i,j)=3
      write(*,"(5(5i5,/))") a
      end
