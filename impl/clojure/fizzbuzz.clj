(defn word [n]
	(let
		[
			fizz? (zero? (mod n 3))
			buzz? (zero? (mod n 5))
		]
		(if fizz? (if buzz? "fizz buzz" "fizz") (if buzz? "buzz" (str n)))
	)
)

(defn say [n] (println (word n)))

(defn play [n]
	(loop [i 1]
		(if (<= i n)
			(do (say i) (recur (inc i)))
		)
	)
)

(play (Integer/parseInt (read-line)))
