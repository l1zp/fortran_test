program ex0719
      implicit none
      integer,parameter :: l=3,m=4,n=2
      real :: A(l,m)
      real :: B(m,n)
      real :: C(l,n)
      integer :: i,j,k

      data((A(i,j),i=1,l),j=1,m)/1,2,3,4,5,6,7,8,9,10,11,12/
      data((B(i,j),i=1,m),j=1,n)/1,2,3,4,5,6,7,8/

      do i=1,l
      do j=1,n
      C(i,j)=0.0
      do k=1,m
      C(i,j)=C(i,j)+A(i,k)*b(k,j)
      end do
      end do
      end do

      do i=1,l
      write(*,*) C(i,:)
      end do
      end

