(import [itertools [product]])

(defn solution []
  (max (genexpr (* x y)
                [(, x y) (product (range 101 999) (range 101 999))]
                (= (str (* x y)) (slice (str (* x y)) nil nil -1)))))
