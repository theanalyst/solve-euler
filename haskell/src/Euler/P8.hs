{-# LANGUAGE UnicodeSyntax #-}
module Euler.P8 where
import Data.Char
import Prelude.Unicode
import Control.Applicative

partitionIndex :: [Integer] → Int → Int → [[Integer]]
partitionIndex [] n off = []
partitionIndex xs n off = ys ++ partitionIndex xs' n off
  where
    ys = (take n xs) : []
    xs' = drop off xs

strTointList :: [Char] -> [Integer]
strTointList s = map (fromIntegral ∘ digitToInt) ∘ concat ∘ lines $ s 

fileToStr ∷ [Char] → IO [Char]
fileToStr file = do
  str ← readFile file
  return str

-- There should probably be a better way of doing this
-- Need to understand monads better
solution = maximum  <$> map (foldl (*) 1) <$> (\x -> (partitionIndex x 13 1)) <$> strTointList <$> fileToStr "/tmp/etc/p8.txt"

