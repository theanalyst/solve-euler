(defn fibs []
  "Generate a fibonacci stream"
  (defn fib-gen [a b]
    (while true
      (yield a)
      (setv (, a b) (, b (+ a b)))))
  (fibs 0 1))
