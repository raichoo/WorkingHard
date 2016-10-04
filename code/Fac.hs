module Fac where

fac :: Int -> Int
fac = go 1
  where
    go acc 1 = acc
    go acc n = go (acc * n) (n - 1)

