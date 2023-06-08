module IOfuncs where

import qualified Data.Map as Map
import GameTypes

pieceMap :: Map.Map String Piece
pieceMap = Map.fromList [
    ("r", Red),
    ("red", Red),
    
    ("g", Green),
    ("green", Green),
    
    ("b", Blue),
    ("blue", Blue),
    
    ("y", Yellow),
    ("yellow", Yellow),
    
    ("w", White),
    ("white", White),
    ]

interpretInput :: String -> [Piece]