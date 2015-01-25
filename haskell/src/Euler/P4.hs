{-# LANGUAGE UnicodeSyntax #-}
module Euler.P4 where

import Prelude.Unicode

solution = maximum $ [x*y | x ← [101..999], y ← [101..999], show (x*y) ≡ reverse (show (x*y))]
