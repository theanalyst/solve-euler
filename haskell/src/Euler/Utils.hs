{-# LANGUAGE UnicodeSyntax #-}
module Euler.Utils where
import Prelude.Unicode

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

sieve ∷ [Int] → [Int]
sieve (p:xs) = p : sieve [x | x ← xs, x `mod` p ≢ 0]

primes ∷ [Int]
primes = sieve [2..]

primeFactors ∷ Int → [Int]
primeFactors n = factors n primes
  where
    factors n (p : ps)
      | p*p > n        = [n]
      | n `mod` p ≡ 0  = p : factors (n `div` p) (p:ps)
      | otherwise      = factors n ps
