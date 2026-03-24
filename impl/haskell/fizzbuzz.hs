word n =
  case map (mod n) [3,5] of
    [0,0] -> "fizz buzz"
    [0,_] -> "fizz"
    [_,0] -> "buzz"
    _ -> show n
say = putStrLn . word
play = mapM_ say . enumFromTo 1
main = readLn >>= play
