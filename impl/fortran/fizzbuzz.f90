program fizzbuzz
  implicit none
  integer :: n
  read(*, *) n
  call play(n)
end program fizzbuzz

subroutine play(n)
  implicit none
  integer, intent(in) :: n
  integer :: i
  logical :: is_fizz, is_buzz
  do i = 1, n
    is_fizz = mod(i, 3) == 0
    is_buzz = mod(i, 5) == 0
    if (is_fizz .and. is_buzz) then
      print '(A)', 'fizz buzz'
    else if (is_fizz) then
      print '(A)', 'fizz'
    else if (is_buzz) then
      print '(A)', 'buzz'
    else
      print '(I0)', i
    end if
  end do
end subroutine play
