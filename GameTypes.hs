module GameTypes where

import System.Random

data Piece = Red | Green | Blue | Yellow | White deriving (Eq, Show, Enum, Bounded)

-- makes Piece an instance of Random so we can use random and randomR functions
-- stolen from school of haskell https://www.schoolofhaskell.com/
instance Random Piece where
    randomR (a, b) g =
        case randomR (fromEnum a, fromEnum b) g of
            (x, g') -> (toEnum x, g')
    random g = randomR (minBound, maxBound) g
