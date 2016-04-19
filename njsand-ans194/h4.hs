-- Week 4 solutions

import Data.List

-- ex 1
-- This calculates the sum of all even numbers in a list after subtracting
-- 2 from each.
fun1 :: [Integer] -> Integer
fun1 [] = 1
fun1 (x:xs)
  | even x = (x - 2) * fun1 xs
  | otherwise = fun1 xs

-- Does the same as above, but with much more fibre.
fun1' :: [Integer] -> Integer
fun1' = product . map (subtract 2) . filter even

-- hailstone sequence
fun2 :: Integer -> Integer
fun2 1 = 0
fun2 n | even n = n + fun2 (n `div` 2)
       | otherwise = fun2 (3 * n + 1)

-- Return next step in the hailstone sequence.
step :: Integer -> Integer
step n | even n = n `div` 2
       | otherwise = 3 * n + 1

-- Sum the even numbers in the hailstone sequence starting at the given number.
fun2' :: Integer -> Integer
fun2' = sum . filter even . takeWhile (/= 1) . iterate step

-- ex 2
-- |Binary tree
data Tree a = Leaf
            | Node Integer (Tree a) a (Tree a)
              deriving (Show, Eq)

-- |Create a balanced tree from a list of items.
foldTree :: [a] -> Tree a
foldTree = foldr (flip bInsert) Leaf

bInsert :: Tree a -> a -> Tree a
bInsert tree = fst . bInsert2 tree

bInsert2 :: Tree a -> a -> (Tree a, Integer)
bInsert2 Leaf x = (Node 0 Leaf x Leaf, 0)
bInsert2 (Node _ l e r) x
  | treeDepth l > treeDepth r = let (newTree, d) = bInsert2 r x in
                                                   (Node (d + 1) l e newTree, d + 1)
  | otherwise = let (newTree, d) = bInsert2 l x in
                                   (Node (d + 1) newTree e r, d + 1)

treeDepth :: Tree a -> Integer
treeDepth Leaf = -1             -- A sentinel value
treeDepth (Node d _ _ _) = d


-- ex 3
-- |Returns True if and only if there are an odd number of True values contained
-- in the input list.  (Required to use a fold here.)
xor :: [Bool] -> Bool
xor = foldl rec False where
  rec True False = True
  rec False True = True
  rec _ _ = False

-- |Implement map as a fold.
map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x acc -> f x:acc) []

-- |Implement foldl using foldr.
-- Serious headspins here.
myFoldl :: (a -> b -> a) -> a -> [b] -> a
myFoldl f base xs = foldr (\x g -> (\a -> g (f a x))) id  xs $ base

-- ex 4
-- Sieve of Sundaram
-- https://en.wikipedia.org/wiki/Sieve_of_Sundaram
sieve :: Integer -> [Integer]
sieve n = map (+1) . map (*2) . filter (\x -> not $ elem x gen) $ [1..n]
  where gen = sieveList n

-- |Produces numbers of the form "i + j + 2ij = x" where 1 <= i <= j and x <= N
sieveList n = [i + j + 2 * i * j | j <- [1..maxj n], i <- [1..maxi n j]]

maxj :: Integer -> Integer
maxj n = (n - 1) `div` 3

maxi :: Integer -> Integer -> Integer
maxi n j = min j $ (n - j) `div` (2 * j + 1)
