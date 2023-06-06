module CompareFuncs where

calcHits :: String -> String -> Int
calcHits answer guess = length $ filter id (zipWith (==) answer guess)

calcShared :: String -> String -> Int
calcShared answer guess = length $ map (flip elem answer) guess 