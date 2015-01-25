module Euler.P6 where

solution = (foldl (+) 0 [1..100])**2 - sum [x*x | x <- [1..100]]
