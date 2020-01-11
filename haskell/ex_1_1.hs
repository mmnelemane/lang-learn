-- file: ex_1_1.hs

myDrop n xs = if n <= 0 || null xs
              then xs
              else myDrop (n-1) (tail xs)

double :: Float -> Float
double a = a + a

hypotenuse :: Float -> Float -> Float
hypotenuse x y = sqrt((x*x)+(y*y))

ratio :: Float -> Float -> Float
ratio x y = if x /= y
            then ((x+y)/(x-y))
            else 0.0

threeDiff :: Integer -> Integer -> Integer -> Bool
threeDiff m n p = if m /= n &&
                  n /= p &&
                  p /= m
                  then True
                  else False

xIntercept :: Float -> Float -> Float
xIntercept m c = if m /= 0
                 then (-c)/m
                 else 0


averageThree :: Integer -> Integer -> Integer -> Float
averageThree a b c = (fromInteger (a + b + c)/3.0)

arithmeticSum :: Integer -> Integer -> Integer -> Integer
arithmeticSum a n d = div (n * ((2*a) + ((n - 1)*d))) 2

inrange1 :: Integer -> Integer -> Integer -> Bool
inrange1 x a b = if (a - x)*(b - x) < 0
                 then True
                 else False

orExclusive :: Bool -> Bool -> Bool
orExclusive x y = if x /= y
                  then True
                  else False

-- provide the digit on the 100th place
hundreds :: Integer -> Integer
hundreds x | x < 100 = 0
           | x >= 100 = ((x `quot` 100) `rem` 10)

and1 :: Bool -> Bool -> Bool
and1 True True = True
and1 x y = False

-- Using guards
ourMin :: Int -> Int -> Int
ourMin x y | x < y = x
           | otherwise = y

middle :: String -> Char
middle x = (x !! ((length x) `div` 2))
