(import [utils [lcm]])

(defn solution []
  (int (reduce lcm (range 1 20))))
