-- file: ex_2_1.hs
-- Exercises on Lists

import Data.List

lastTwo :: [a] -> [a]
lastTwo xs | length xs >= 2 =  [last (init xs), last xs]
           | otherwise = xs

lastTwo1 :: [a] -> [a]
lastTwo1 xs | length xs >= 2 = drop (length xs - 2) xs
            | otherwise = xs
