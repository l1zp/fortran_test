program ex0434
      implicit none
      type :: person
          character(len=30) :: name
          integer :: age
          integer :: height
          integer :: weight
          character(len=80) :: address
      end type person

      type(person) :: a
      write(*,*) "NAME:"
      read(*,*) a%name
      write(*,*) "AGE:"
      read(*,*) a%age
      write(*,*) "HEIGHT:"
      read(*,*) a%height
      write(*,*) "WEIGHT:"
      read(*,*) a%weight
      write(*,*) "ADDRESS:"
      read(*,"(A80)") a%address

      write(*,100) a%name, a%age, a%height, a%weight, a%address
      100 format(/,"Name:",A10/,"Age:",I3/,"Height:",I3/,"Weight:",I3/,&
          &"Address:",A50)
      end
