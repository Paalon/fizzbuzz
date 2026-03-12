(import
  (scheme base))

(define (word n)
  (let
    (
      (fizz? (zero? (modulo n 3)))
      (buzz? (zero? (modulo n 5))))
    (cond
      ((and fizz? buzz?) "fizz buzz")
      (fizz? "fizz")
      (buzz? "buzz")
      (else (number->string n)))))

(define (say n)
  (begin
    (write-string (word n))
    (newline)))

(define (play n)
  (let loop
    ((i 1))
    (if (<= i n)
      (begin
        (say i)
        (loop (+ i 1))))))

(define (read-string-all n)
  (let loop
    ((result ""))
    (let
      ((buffer (read-string n)))
      (if
        (eof-object? buffer)
        result
        (loop (string-append result buffer))))))

(play (string->number (read-string-all 1024)))
