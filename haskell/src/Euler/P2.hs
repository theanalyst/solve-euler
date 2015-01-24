module Euler.P2 where

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
solution = sum $ filter even (takeWhile (< 4000000) fibs)
