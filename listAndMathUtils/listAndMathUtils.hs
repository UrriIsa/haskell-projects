-- MIT License
-- Copyright (c) 2024 Urrutia Alfaro Isaac Arturo

{-|
Module      : ListAndMathUtils
Description : This module contains basic list manipulation and mathematical functions.
-}
module ListAndMathUtils (revertirLista, insertaNum, bubbleSort, fib, factorial) where

-- | Computes the nth number in the Fibonacci sequence.
-- === Example
-- >>> fib 5
-- 5
--
-- The Fibonacci sequence is defined as:
-- * fib(0) = 0
-- * fib(1) = 1
-- * fib(n) = fib(n-1) + fib(n-2) for n > 1
fib :: Integer -> Integer
fib 0 = 0                      -- Base case
fib 1 = 1                      -- Base case
fib n = fib (n-1) + fib (n-2)  -- Recursive case

-- | Computes the factorial of a number recursively.
-- === Example
-- >>> factorial 5
-- 120
--
-- This function takes an integer as input and returns its factorial. 
-- The factorial of a number \(n\) is defined as:
-- * factorial(0) = 1
-- * factorial(1) = 1
-- * factorial(n) = n * factorial(n-1) for n > 1
factorial :: Integer -> Integer
factorial 0 = 1
factorial 1 = 1
factorial n = n * factorial (n-1)

-- | Reverses a list recursively.
-- === Example
-- >>> revertirLista [1, 2, 3]
-- [3, 2, 1]
--
-- This function takes a list as input and returns a new list with the elements in reverse order.
revertirLista :: [a] -> [a]
revertirLista [] = []
revertirLista (x:xs) = revertirLista xs ++ [x]  

-- | Inserts a number into a sorted list while maintaining order.
-- === Example
-- >>> insertaNum 3 [1, 2, 4, 5]
-- [1, 2, 3, 4, 5]
--
-- The function takes a number and a sorted list, placing the number in the correct position.
insertaNum :: Integer -> [Integer] -> [Integer]
insertaNum n [] = [n]
insertaNum n (x:xs)
    | n <= x    = n : x : xs
    | otherwise = x : insertaNum n xs

-- | Sorts a list using the Bubble Sort algorithm.
-- === Example
-- >>> bubbleSort [4, 2, 5, 1, 3]
-- [1, 2, 3, 4, 5]
--
-- This algorithm repeatedly traverses the list, swapping adjacent elements
-- that are in the wrong order until the list is completely sorted.
bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []
bubbleSort xs = cuenta xs (length xs)

-- | Performs a complete Bubble Sort pass.
--
-- The function takes a list and an iteration counter,
-- repeatedly applying the sorting algorithm.
cuenta ::  Ord a => [a] -> Int -> [a]
cuenta lista 0 = lista
cuenta lista n = cuenta (acomoda lista) (n-1)

-- | Compares adjacent elements and swaps them if they are unordered.
-- === Example
-- >>> acomoda [4, 2, 5, 1, 3]
-- [2, 4, 1, 3, 5]
--
-- This function performs a single pass over the list, moving the largest element to the end.
acomoda :: Ord a => [a] -> [a]
acomoda [] = []
acomoda [x] = [x]
acomoda (x:y:xs) 
    | x <= y    = [x] ++ acomoda (y:xs)
    | otherwise = [y] ++ acomoda (x:xs)


