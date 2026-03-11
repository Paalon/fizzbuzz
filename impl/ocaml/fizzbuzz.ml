let word n =
  match (n mod 3, n mod 5) with
  | (0, 0) -> "fizz buzz"
  | (0, _) -> "fizz"
  | (_, 0) -> "buzz"
  | _ -> string_of_int n;;
let say = Fun.compose print_endline word;;
let play n = Seq.iter say @@ Seq.init n Int.succ;;
let () = Scanf.scanf "%d" play;;
