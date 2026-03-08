def word(n)
  isfizz = (n % 3).zero?
  isbuzz = (n % 5).zero?
  if isfizz && isbuzz then
    'fizz buzz'
  elsif isfizz then
    'fizz'
  elsif isbuzz then
    'buzz'
  else
    n.to_s
  end
end

def play(n)
  1.upto(n).each { |i| puts word(i) }
end

n = STDIN.read.to_i
play(n)
