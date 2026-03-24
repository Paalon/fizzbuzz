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
  do i = 1, n
    call say(i)
  end do
end subroutine play

subroutine say(n)
  implicit none
  integer, intent(in) :: n
  logical :: is_fizz, is_buzz
  is_fizz = mod(n, 3) == 0
  is_buzz = mod(n, 5) == 0
  if (is_fizz .and. is_buzz) then
    print '(A)', 'fizz buzz'
  else if (is_fizz) then
    print '(A)', 'fizz'
  else if (is_buzz) then
    print '(A)', 'buzz'
  else
    print '(I0)', n
  end if
end subroutine say
