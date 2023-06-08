module AnswerGen where

import GameTypes
import System.Random

numberOfPieces :: Int
numberOfPieces = 4

genRandomPieces :: StdGen -> [Piece]
genRandomPieces gen = take numberOfPieces (randoms gen :: [Piece])
