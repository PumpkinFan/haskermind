{-
Main game file with main function and should handle most IO stuff
Create separate files for game/calculation functions, randomness functions, type declarations(?), tests
-}

calcHits :: String -> String -> Int
calcHits answer guess = length $ filter id (zipWith (==) answer guess)

answer = "YGBR"

main = do 
    guess <- getLine
    if guess == answer
        then do
            putStrLn "You win!"
        else do 
            putStrLn "Try again"
            main

