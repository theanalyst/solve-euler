{-# LANGUAGE UnicodeSyntax #-}
module Euler.Utils where
import Prelude.Unicode

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

sieve ∷ [Integer] → [Integer]
sieve (p:xs) = p : sieve [x | x ← xs, x `mod` p ≢ 0]

primes ∷ [Integer]
primes = 2 : filter (null ∘ tail ∘ primeFactors) [3,5..]

primeFactors ∷ Integer → [Integer]
primeFactors n = factors n primes
  where
    factors n (p : ps)
      | p*p > n        = [n]
      | n `mod` p ≡ 0  = p : factors (n `div` p) (p:ps)
      | otherwise      = factors n ps

is_square ∷ Int → Bool
is_square n = n ≡ s ⋅ s
  where s = floor ∘ sqrt $ (fromIntegral n ∷ Double)

