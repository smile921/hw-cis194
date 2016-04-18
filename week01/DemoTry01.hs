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
    | x > 0 = toDigits (x `div` 10 ) ++ [(x `mod` 10)]
    | otherwise = [ ]

-- Get the last digit from a number
lastDigit :: Integer -> Integer
lastDigit x = last (toDigits x)

-- Drop the last digit from a number
dropLastDigit :: Integer -> Integer
dropLastDigit x = x `div` 10

-- Exercise 2 -----------------------------------------

toRevDigits :: Integer -> [Integer]
toRevDigits x = reverse (toDigits x)

-- Exercise 3 -----------------------------------------

-- Double every second number in a list starting on the left.
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther  [] = []
doubleEveryOther  [x] = [x]
doubleEveryOther  (x:y:zs) = [x,2*y] ++ ( doubleEveryOther zs )

-- Exercise 4 -----------------------------------------

-- Calculate the sum of all the digits in every Integer.
sumDigits :: [Integer] -> Integer
sumDigits []  = 0
sumDigits (x:xs) = x + (sumDigits xs)

sumSpecDigits :: [Integer] -> Integer
sumSpecDigits [] = 0
sumSpecDigits (x:xs) =( x `div` 10) + (x `mod` 10) + (sumSpecDigits xs)


-- Exercise 5 -----------------------------------------

-- Validate a credit card number using the above functions.
luhn :: Integer -> Bool
luhn x = (sumSpecDigits( doubleEveryOther ( toRevDigits x )) `mod` 10 ) == 0

 
