{-
Main game file with main function and should handle most IO stuff
Create separate files for game/calculation functions, randomness functions, type declarations(?), tests
-}
import CompareFuncs (calcHits, calcBlows)
import AnswerGen (numberOfPieces, genRandomPieces)
import System.Random

-- gameLoop = do
--     guessInp <- getLine
--     guess = 

pieceGen = mkStdGen
answer = genRandomPieces pieceGen

main = do 
    putStrLn "Welcome to Haskermind!"

    guess <- getLine
    if guess == answer
        then do
            putStrLn "You win!"
        else do 
            putStrLn "Try again"
            main

