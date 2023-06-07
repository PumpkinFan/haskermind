module CompareFuncs where

import GameTypes
import Data.List (group, sort, intersect, nub)

calcHits :: [Piece] -> [Piece] -> Int
calcHits answer guess = length $ filter id (zipWith (==) answer guess)

countElem :: Eq a => a -> [a] -> Int
countElem x = length . filter (== x)

calcShared :: [Piece] -> [Piece] -> Int
calcShared answer guess = 
    let sharedPieces = nub $ intersect answer guess
        inGuess = map (flip countElem guess) sharedPieces
        inAnswer = map (flip countElem answer) sharedPieces
    in sum $ zipWith min inGuess inAnswer

calcBlows answer guess = (calcShared answer guess) - (calcHits answer guess)