module linklist
      implicit none
      type :: datalink
          integer :: i
          type(datalink), pointer :: prev
          type(datalink), pointer :: next
      end type datalink

      contains

          subroutine outputlist(list)
              implicit none
              type(datalink), pointer :: list,p
              p=>list
              do while(associated(p))
              write(*,*)p%i
              p=>p%next
              end do
              return
              end subroutine

          subroutine delitem(item)
              implicit none
              type(datalink), pointer :: item
              type(datalink), pointer :: prev,next

              prev=>item%prev
              next=>item%next
              deallocate(item)
              if(associated(prev))prev%next=>next
              if(associated(next))next%prev=>prev
              item=>next
              return
              end subroutine

          subroutine insitem(pos,item,after)
              implicit none
              type(datalink), pointer :: pos,item
              logical :: after
              if(after)then
                  item%next=>pos%next
                  item%prev=>pos
                  if(associated(pos%next))then
                      pos%next%prev=>item
                  end if
                  pos%next=>item
              else
                  item%next=>pos
                  item%prev=>pos%prev
                  if(associated(pos%prev))then
                      pos%prev%next=>item
                  end if
                  pos%prev=>item
              end if
              return
              end subroutine
              end module
program ex1015
              use linklist
              implicit none
              type(datalink),pointer :: head
              type(datalink),pointer :: item,p
              integer,parameter :: s=5
              integer :: i,n,error

              allocate(head)
              head = datalink(1,null(),null())
              p=>head
              do i=2,s
              allocate(p%next,stat=error)
              if(error/=0)then
                  write(*,*)"out of memory"
                  stop
              end if
              p%next=datalink(i,p,null())
              p=>p%next
              end do

              write(*,*)"delete third data"
              call delitem(head%next%next)
              call outputlist(head)

              write(*,*)"insert third data"
              allocate(item)
              item%i = 30
              call insitem(head%next,item,.true.)
              call outputlist(head)

              stop
              end program
