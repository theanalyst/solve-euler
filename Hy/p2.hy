(import [utils [fibs]])

(defn solution []
  (sum (filter even? (take-while (lambda [x] (< x 4000000)) (fibs)))))
