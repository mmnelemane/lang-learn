-- file: localnpolymorph
-- To demonstrate local definitions and polymorphic functions

ourfun :: Float -> Float -> Float
ourfun x y = (local + 1) * (local + 2)
              where local = (x + y)/2


-- polymorphic ourmin definition
ourMin :: Ord a => a -> a -> a
ourMin x y |x < y = x
           |otherwise = y

