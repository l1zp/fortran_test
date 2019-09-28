module func
      type person
          character(len=10) :: name
          real :: height,weight
      end type

      type pperson
          type(person),pointer :: p
      end type

      contains
          subroutine sort(p)
              implicit none
              type(pperson) :: p(:)
              type(pperson) :: temp
              integer i,j,s

              s=size(p,1)
              do i=1,s-1
              do j=i+1,s
              if(p(j)%p%height<p(i)%p%height)then
                  temp=p(i)
                  p(i)=p(j)
                  p(j)=temp
              end if
              end do
              end do
              return
              end subroutine
              end module
program ex1008
              use func
              implicit none
              type(person),target :: p(5)=(/ person("chen",180.0,75.0),&
                  person("huang",170.0,65.0),person("liu",175.0,80.0),&
                  person("cai",182.0,78.0), person("xu",178.0,70.0) /)
              type(pperson) :: pt(5)
              integer i
              forall(i=1:5)
                  pt(i)%p=>p(i)
              end forall
              call sort(pt)
              write(*,"(5(A8,F6.1,F5.1/))")(pt(i)%p,i=1,5)
              stop
              end
              

