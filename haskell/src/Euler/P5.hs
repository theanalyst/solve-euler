module Euler.P5 where

solution = foldl (\ x y -> lcm x y) 1 [1..20]
