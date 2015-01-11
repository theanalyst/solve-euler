(defn solution []
  (sum (filter (fn [x] (or (= (% x 3) 0) (= (% x 5) 0))) (range 1000))))
