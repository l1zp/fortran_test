program ex0806
      implicit none
      integer,parameter :: players = 5
      real :: angle(players) = (/30.0,45.0,35.0,50.0,40.0/)
      real :: speed(players) = (/25.0,20.0,21.0,27.0,22.0/)
      real :: distance(players)
      integer :: I

      do i=1,players
      call get_distance(angle(i),speed(i),distance(i))
      write(*,"('Player ',I1,' = ',F8.2)") i,distance(i)
      end do
      end

      subroutine angle_to_rad(angle,rad)
          implicit none
          real :: angle,rad
          real,parameter :: pi=3.1415926

          rad = angle*pi/180.0
          return
          end

      subroutine get_distance(angle,speed,distance)
          implicit none
          real :: angle,speed
          real :: distance
          real :: rad,vx,time
          real,parameter :: G=9.81

          call angle_to_rad(angle,rad)
          vx = speed*cos(rad)
          time = 2.0*speed*sin(rad)/G
          distance = vx*time
          return
          end
