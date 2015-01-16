(import [math [sqrt]]
	[functools [partial]])

(defn fibs []
  "Generate a fibonacci stream"
  (defn fib-gen [a b]
    (while true
      (yield a)
      (setv (, a b) (, b (+ a b)))))
  (fib-gen 0 1))

(defn sieve []
  "sieve of erasthothanes infinitely"
  (let [[table {}]
	[iter 2]]
    (while True
      (progn (if (not (in iter table))
	       (progn (assoc table (* iter iter) [iter])
		(yield iter))
	 (progn (foreach [factor (get table iter)]
		  (-> (.setdefault table (+ iter factor) []) (.append factor)))
		(.pop table iter)))
	     (setv iter (inc iter))))))

(defn factor? [num factor]
  (= 0 (% num factor)))

(defn factors [num]
  "Lists all the factors including 1 and number"
  (+ (list (filter (partial factor? num) (range 1 (int (inc (/ num 2)))))) [num]))
