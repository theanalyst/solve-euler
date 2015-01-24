module Euler.P2 where
import Euler.Utils (fibs)

solution = sum $ filter even (takeWhile (< 4000000) fibs)
