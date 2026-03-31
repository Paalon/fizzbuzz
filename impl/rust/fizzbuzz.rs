use std::{error, io};

fn word(n: i64) -> String {
    match (n % 3, n % 5) {
        (0, 0) => String::from("fizz buzz"),
        (0, _) => String::from("fizz"),
        (_, 0) => String::from("buzz"),
        _ => n.to_string(),
    }
}

fn say(n: i64) {
    println!("{}", word(n))
}

fn play(n: i64) {
    (1..=n).for_each(say)
}

fn read() -> Result<i64, Box<dyn error::Error>> {
    Ok(io::read_to_string(io::stdin())?.parse::<i64>()?)
}

fn main() -> Result<(), Box<dyn error::Error>> {
    Ok(play(read()?))
}
