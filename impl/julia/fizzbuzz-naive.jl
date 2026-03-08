function word(n::Integer)
    isfizz = iszero(n % 3)
    isbuzz = iszero(n % 5)
    if isfizz && isbuzz
        "fizz buzz"
    elseif isfizz
        "fizz"
    elseif isbuzz
        "buzz"
    else
        string(n)
    end
end

play(n::Integer) = foreach(println∘word, 1:n)

function @main(args::Vector{String})
    s = read(stdin, String)
    n = parse(Int64, s)
    play(n)
end
