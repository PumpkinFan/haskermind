module GameFuncs where

calcHits :: String -> String -> Int
calcHits answer guess = length $ filter id (zipWith (==) answer guess)
