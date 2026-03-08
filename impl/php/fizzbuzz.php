<?php
declare(strict_types=1);

function word(int $n) {
    $is_fizz = $n % 3 == 0;
    $is_buzz = $n % 5 == 0;
    if ($is_fizz && $is_buzz) {
        return 'fizz buzz';
    } elseif ($is_fizz) {
        return 'fizz';
    } elseif ($is_buzz) {
        return 'buzz';
    } else {
        return (string)$n;
    }
}

function play(int $n) {
    for ($i = 1; $i <= $n; $i++) {
        echo word($i), "\n";
    }
}

play(intval(stream_get_contents(STDIN)));
