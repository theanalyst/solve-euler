{-# LANGUAGE UnicodeSyntax #-}
module Euler.P1 where

import Prelude.Unicode

solution = sum $ [x | x ← [1..999], (x `mod` 3 ≡ 0) ∨ (x `mod` 5 ≡ 0)]
