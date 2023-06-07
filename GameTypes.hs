module GameTypes where

import System.Random

data Piece = Red | Green | Blue | Yellow | White deriving (Eq, Show, Ord, Enum, Bounded)
-- type Code = [Piece]

instance Random Piece where
    randomR (a, b) g =
        case randomR (fromEnum a, fromEnum b) g of
            (x, g') -> (toEnum x, g')
    random g = randomR (minBound, maxBound) g