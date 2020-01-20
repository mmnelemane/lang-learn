-- fibo_ex1_4.hs
-- 1 1 2 3 5 8 13
fibo :: Int -> Int
fibo n | n == 0 = 1
       | n == 1 = 1
       | n >= 2 = fibo (n - 1) + fibo (n - 2)

step :: (Int, Int) -> (Int, Int)
step (x, y) = (y, x+y)

fiboTwo :: Int -> (Int, Int)
fiboTwo n | n == 0 = (0, 1)
          | n == 1 = (1, 1)
          | n >= 2 = step (fiboTwo(n-1)) 


sumTuple :: (Int, Int) -> Int
sumTuple (x, y) = x+y

fiboFast :: Int -> Int
fiboFast n | n == 0 = 1
           | n == 1 = 1
           | n >= 2 = sumTuple (fiboTwo (n-1))
