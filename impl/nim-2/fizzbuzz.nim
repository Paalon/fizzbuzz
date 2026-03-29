import std/strutils

proc word(n: int): string =
  let
    isfizz = n mod 3 == 0
    isbuzz = n mod 5 == 0
  if isfizz and isbuzz:
    "fizz buzz"
  elif isfizz:
    "fizz"
  elif isbuzz:
    "buzz"
  else:
    $n

proc say(n: int) =
  echo word n

proc play(n: int) =
  for i in 1..n:
    say i

proc main() =
  play parseInt readAll stdin

main()
