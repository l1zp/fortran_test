program ex0820
      implicit none
      call sub()
      call sub()
      call sub()

      end

      subroutine sub()
          implicit none
          integer,save :: counti=1
          write(*,*) counti
          counti = counti+1
          return 
          end
