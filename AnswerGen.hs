module AnswerGen where

import GameTypes
import System.Random

numberOfPieces :: Int
numberOfPieces = 4

genRandomCode :: StdGen -> [Piece]
genRandomCode gen = take numberOfPieces (randoms gen :: [Piece])
