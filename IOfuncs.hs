module IOfuncs where

import qualified Data.Map as Map
import Data.Maybe (fromMaybe)
import Data.Char (toLower)
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
    ("white", White)
    ]


interpretInput :: String -> [Maybe Piece]
interpretInput inpStr = 
    let lookupPiece inp = Map.lookup inp pieceMap
        toLowerStr :: String -> String
        toLowerStr = map toLower
    in map lookupPiece $ map toLowerStr $ words inpStr
