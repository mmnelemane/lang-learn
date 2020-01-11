-- file: ex_1_2.hs - Hoogle
-- Functions found from https://www.haskell.org/hoogle
-- Enter the function type in the Search window to find relevant functions
-- Two examples are here.
import Data.List
import Data.Char

changecase :: Char -> Char
changecase c = toUpper c

isSubstring :: String -> String -> Bool
isSubstring sString iString = isInfixOf sString iString
