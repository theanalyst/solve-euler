module Euler.P3 where
import Prelude.Unicode
import Euler.Utils (primeFactors)

number = 600851475143

solution = last $ primeFactors number
