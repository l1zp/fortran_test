program ex0812
      implicit none
      integer :: a,b
      common a,b
      integer :: c,d
      common /group1/ c,d
      integer :: e,f
      common /group2/ e,f

      write(*,"(6i4)") a,b,c,d,e,f
      end

      block data
          implicit none
          integer :: a,b
          common a,b
          data a,b /1,2/
          integer :: c,d
          common /group1/ c,d
          data c,d/3,4/
          integer e,f
          common /group2/ e,f
          data e,f/5,6/
      end block data

