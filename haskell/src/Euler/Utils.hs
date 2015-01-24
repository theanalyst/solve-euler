module Euler.Utils where

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
