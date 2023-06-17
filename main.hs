{-
Main game file with main function and should handle most IO stuff
Create separate files for game/calculation functions, randomness functions, type declarations(?), tests
-}
import CompareFuncs (calcHits, calcBlows)
import AnswerGen (numberOfPieces, genRandomPieces)
import IOfuncs (interpretInput)
import Data.Maybe
import System.Random

import GameTypes

pieceGen = mkStdGen 0
-- answer = genRandomPieces pieceGen
answer = [Red, Green, Blue, Yellow]

gameStartup :: IO ()
gameStartup = do
    putStrLn "Welcome to Haskermind!"
 

main = do 
    -- putStrLn "Welcome to Haskermind!"
    gameStartup

    guessInp <- getLine
    let guessMaybes = interpretInput guessInp
    if Nothing `elem` guessMaybes
        then do 
            putStrLn "\n\
            \Error interpreting input! \n\
            \remember to only enter guesses using letters and spaces \n"
            main
        else do
            let guess = catMaybes guessMaybes
            if guess == answer
            then do
                putStrLn "You win!"
            else do 
                putStrLn "Try again"
                main

    

