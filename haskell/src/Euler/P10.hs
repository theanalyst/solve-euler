module Euler.P10 where
import Euler.Utils (primes)

solution = sum $ takeWhile (< 2000000) primes
