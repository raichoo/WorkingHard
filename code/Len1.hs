module Main where

len :: [a] -> Int
len = go 0
  where
    go acc []     = acc
    go acc (_:xs) = go (acc + 1) xs

main :: IO ()
main =  do
  let xs = [1..10000000]

  print (len xs)
