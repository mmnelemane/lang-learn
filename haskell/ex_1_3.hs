-- file: ex_1_3.hs
-- Functions using Recursion

-- Some examples from slides:

pp :: Int -> Int -> Int
-- precondition n >= 0
x `pp` n | n == 0 = 1
         | n > 0 = x * (x `pp` (n-1))
         -- x `pp` n returns the nth power of x


natural :: Int -> Int
-- precondition n >= 1

natural n | n <= 1 = 0
          | n > 1 = natural (n - 1) + 1 

odds :: Int -> Int
odds n | n < 1 = -1
       | n == 1 = 1
       | n > 1 = odds (n - 1) + 2


sumRec :: Int -> Int
sumRec n | n == 0 = 0
         | n > 0 = n + sumRec(n-1)

fact :: Int -> Int
fact n | n == 0 = 1
       | n >= 1 = n * fact(n-1)


sumFact :: Int -> Int
sumFact n | n < 0 = -1
          | n >= 0 = fact(n) + sumFact(n-1)


arithmeticSeries :: Int -> Int -> Int -> Int
arithmeticSeries a n d | n <= 1 = a
                       | n > 1 = (arithmeticSeries a (n - 1) d) + d

arithmeticSumRec :: Int -> Int -> Int -> Int
arithmeticSumRec a n d | n <= 1 = a
                       | n > 1 = (arithmeticSeries a n d) + (arithmeticSumRec a (n-1) d)

multRec :: Int -> Int -> Int
multRec m n | n == 0 = 0
            | n > 0 = m * (multRec 1 (n-1)) + m
            | n < 0 = m * (multRec 1 ((n)+1)) - m


rangeProduct :: Int -> Int -> Int
rangeProduct m n | n < m = 1
                 | n == m = m
                 | n > m = multRec n (rangeProduct m (n-1))

intSqrt :: Int -> Int
intSqrt n | n <= 0 = 0
          | n > 0 =  intSqrtAux n (n `div` 2)
                       where 
                         intSqrtAux n i 
                           | i*i > n  = intSqrtAux n (i-1)
                           | otherwise = i

