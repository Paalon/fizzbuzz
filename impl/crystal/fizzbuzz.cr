def word(n)
  is_fizz = n % 3 == 0
  is_buzz = n % 5 == 0
  if is_fizz && is_buzz
    "fizz buzz"
  elsif is_fizz
    "fizz"
  elsif is_buzz
    "buzz"
  else
    n.to_s
  end
end

def play(n)
  1.upto(n) do |i|
    puts word(i)
  end  
end

n = STDIN.gets_to_end.to_i
play n
