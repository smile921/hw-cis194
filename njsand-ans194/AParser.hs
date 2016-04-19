-- Homework 10

module AParser where

import Data.Char
import Control.Applicative

newtype Parser a
 = Parser { runParser :: String -> Maybe (a, String) }

satisfy :: (Char -> Bool) -> Parser Char
satisfy p = Parser f
  where
    f [] = Nothing
    f (x:xs)
      | p x = Just (x, xs)
      | otherwise = Nothing

char :: Char -> Parser Char
char c = satisfy (== c)

posInt :: Parser Integer
posInt = Parser f
  where
    f xs
      | null ns = Nothing
      | otherwise = Just (read ns, rest)
      where (ns, rest) = span isDigit xs

first :: (a -> b) -> (a, c) -> (b, c)
first f (x, y) = (f x, y)

-- ex 1
instance Functor Parser where
  fmap f (Parser p) = Parser ((fmap (first f)) . p)

-- ex 2
instance Applicative Parser where
  pure a = Parser (\s -> Just (a,s))
  Parser p1 <*> Parser p2 = Parser f
    where
      f s = do
        (result, remainder) <- p1 s
        (result2, remainder2) <- p2 remainder
        return (result result2, remainder2)

-- ex 3
abParser :: Parser (Char, Char)
abParser = (,) <$> char 'a' <*> char 'b'

abParser_ :: Parser ()
abParser_ = (const ()) <$> abParser

intPair :: Parser [Integer]
intPair = (\x _ z -> [x, z]) <$> posInt <*> char ' ' <*> posInt

-- ex 4
instance Alternative Parser where
  empty = Parser (\s -> Nothing)
  (Parser x) <|> (Parser y) = Parser f where
    f s = do
      (v, r) <- (x s) <|> (y s)
      return (v, r)

-- ex 5
-- const 
intOrUppercase :: Parser ()
intOrUppercase = (const () <$> posInt) <|> (const () <$> (satisfy isUpper))
