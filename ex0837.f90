module constant
      implicit none
      real,parameter :: pi=3.1415926
      real,parameter :: G=9.81
      end module

module typedef
      implicit none
      type player
          real :: angle
          real :: speed
          real :: distance
      end type
      end module

module shoot
      use constant
      use typedef
      implicit none
      contains
          real function angle_to_rad(angle)
              implicit none
              real :: angle
              angle_to_rad = angle*pi/180.0
              return
              end

          subroutine get_distance(person)
              implicit none
              type(player) :: person
              real :: rad,vx,time

              rad = angle_to_rad(person%angle)
              vx = person%speed*cos(rad)
              time = 2.0*person%speed*sin(rad)/G
              person%distance = vx*time
              return
              end subroutine

              end module

program ex0837
              use shoot
              implicit none
              integer,parameter :: players = 5
              type(player) :: people(players)=(/ player(30.0,25.0,0.0),&
                  player(45.0,20.0,0.0),player(35.0,21.0,0.0),&
                  player(50.0,27.0,0.0),player(40.0,22.0,0.0) /)
              integer :: i

              do i=1,players
              call get_distance(people(i))
              write(*,"('Player ',i1,' =',f8.2)")i,people(i)%distance
              end do
              end
