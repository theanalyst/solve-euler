module Euler.P6 where

solution = let square x = x*x in
            square (sum [1..100]) - sum [square x | x <- [1..100]]
