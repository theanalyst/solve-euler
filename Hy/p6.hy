(defn solution []
  (- (** (sum (range 101)) 2)
     (sum (map (fn [x] (* x x)) (range 101)))))
