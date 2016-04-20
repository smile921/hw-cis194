{-# OPTIONS_GHC -Wall #-}
module DemoTry01 where

-- Exercise 1 -----------------------------------------

-- Converts positive Integers to a list of their digits.
-- toDigits 1234 == [1,2,3,4]
-- toDigits 0 == []
-- toDigits (-17) == []
toDigits :: Integer -> [Integer]
toDigits x
    | x == 0 = [ ]
    | x > 0 = toDigits (x `div` 10 ) ++ [x `mod` 10]
    | otherwise = [ ]


-- Get the last digit from a number
lastDigit :: Integer -> Integer
lastDigit x = last (toDigits x)

lastDigit1 :: Integer -> Integer
lastDigit1 x =  x `mod` 10

lastDigit2 :: Integer -> Integer
lastDigit2 x = mod x 10

lastDigit3 :: Integer -> Integer
lastDigit3  = flip mod 10 

--lastDigit4 :: Integer -> Integer
--lastDigit4 = flip . mod $ 10 


-- Drop the last digit from a number
dropLastDigit :: Integer -> Integer
dropLastDigit x = x `div` 10

dropLastDigit1 :: Integer -> Integer
dropLastDigit1 x = div x 10


dropLastDigit2 :: Integer -> Integer
dropLastDigit2 = flip div 10 

--dropLastDigit3 :: Integer -> Integer
--dropLastDigit3  = flip ( div 10 )


-- Exercise 2 -----------------------------------------

toRevDigits :: Integer -> [Integer]
toRevDigits x = reverse (toDigits x)


 
-- Exercise 3 -----------------------------------------

-- Double every second number in a list starting on the left.
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther  [] = []
doubleEveryOther  [x] = [x]
doubleEveryOther  (x:y:zs) = [x,2*y] ++ doubleEveryOther zs 

-- Exercise 4 -----------------------------------------

-- Calculate the sum of all the digits in every Integer.
sumDigits :: [Integer] -> Integer
sumDigits []  = 0
sumDigits (x:xs) = x + sumDigits xs

sumSpecDigits :: [Integer] -> Integer
sumSpecDigits [] = 0
sumSpecDigits (x:xs) =( x `div` 10) + (x `mod` 10) + sumSpecDigits xs


-- Exercise 5 -----------------------------------------

-- Validate a credit card number using the above functions.
luhn :: Integer -> Bool
luhn x = (sumSpecDigits( doubleEveryOther ( toRevDigits x )) `mod` 10 ) == 0

-- Exercise 6 -----------------------------------------
-- [("a","b")] ie. move the top disc from a to b
-- [("a","c")] ie. move the top disc from a to c
-- [("b","c")] ie. move the top disc from b to c
-- Towers of Hanoi for three pegs
type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi x a b c   
    | x==0 = []
    | x==1 = [(a,c)]
    | otherwise = hanoi (x-1) a c b  ++ [(a,c)] ++ hanoi (x-1) b a c 
 
-- Exercise 7 -----------------------------------------
-- [("a","b")] ie. move the top disc from a to b
-- [("a","c")] ie. move the top disc from a to c
-- [("b","c")] ie. move the top disc from b to c
-- Towers of Hanoi for four pegs
hanoi4 :: Integer -> Peg -> Peg -> Peg ->Peg -> [Move]
hanoi4 x a b c d 
    | x==0 = []
    | x==1 = [(a,d)]
    | x==2 = [(a,b),(a,d),(b,d)]
    | x==3 = [(a,b),(a,c),(a,d),(c,d),(b,d)]
    | x==4 = [(a,b),(a,c),(a,d),(b,d),(c,d),(a,d),(a,c),(a,d),(b,d),(c,d)]
    | otherwise = hanoi4 (x-2) a c d b ++ [(a,c),(a,d),(c,d)] ++ hanoi4 (x-2) b a c d

-- sorry this is not the fewest method !!!
-- maybe later do this again