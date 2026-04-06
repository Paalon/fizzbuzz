word =: 3 : 0
a =. 0=3 5|y
if. *./a do.
  'fizz buzz'
elseif. 0{a do.
  'fizz'
elseif. 1{a do.
  'buzz'
else.
  ": y
end.
)

say =: echo@word
play =: say"0@>:@i.
read =: ".@(1!:1)@3:
main =: play@read

main 0
