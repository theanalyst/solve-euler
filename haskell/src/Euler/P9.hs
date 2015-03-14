{-# LANGUAGE UnicodeSyntax #-}
module Euler.P9 where
import Prelude.Unicode

product_triples (x, y) = (x*x - y*y)*2*x*y*(x*x + y*y)

solution = product_triples ∘ head $ [(x, y) | x ← [10..25], y ← [1..x], 2*x*(x+y) == 1000]
