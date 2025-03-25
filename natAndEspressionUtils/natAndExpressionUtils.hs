-- MIT License
-- Copyright (c) 2024 Urrutia Alfaro Isaac Arturo

{-|
Module      : NatAndExpressionUtils
Description : This module contains utilities for working with natural numbers, custom lists,
              and mathematical expressions.
-}
module NatAndExpressionUtils (
    suma, prod, fac, pot, ant,
    longitud, concate, rev,
    contarConstantes, contarVariables, contarOperadores
) where

-- | Represents natural numbers.
-- 
-- This type has two constructors:
-- 
-- * 'Cero' - Represents zero.
-- * 'Suc' - Represents the successor of a natural number.
data Nat = Cero          -- ^ Represents zero
         | Suc Nat       -- ^ Represents the successor of a number
    deriving (Show, Eq)

-- | Represents the sign of a number, either positive or negative.
data Signo = Pos          -- ^ Positive sign
           | Neg          -- ^ Negative sign
    deriving (Show, Eq)

-- | Represents mathematical expressions, including variables, constants, 
-- sums, differences, products, and divisions.
data Expresion 
    = Num Signo Nat                -- ^ A numeric expression with a sign and value
    | Var String                   -- ^ A variable represented as a string
    | Suma Expresion Expresion     -- ^ Sum of two expressions
    | Resta Expresion Expresion    -- ^ Difference of two expressions
    | Multiplicacion Expresion Expresion -- ^ Product of two expressions
    | Division Expresion Expresion -- ^ Division of two expressions
    deriving (Show, Eq)

-- | Adds two natural numbers recursively.
-- === Example
-- >>> suma (Suc (Suc Cero)) (Suc Cero)
-- Suc (Suc (Suc Cero))
--
suma :: Nat -> Nat -> Nat
suma Cero n = n
suma (Suc m) n = Suc (suma m n)


-- | Multiplies two natural numbers recursively.
-- === Example
-- >>> prod (Suc (Suc Cero)) (Suc (Suc Cero))
-- Suc (Suc (Suc (Suc Cero)))
--
prod :: Nat -> Nat -> Nat
prod Cero _ = Cero
prod (Suc m) n = suma n (prod m n)


-- | Calculates the factorial of a natural number.
-- === Example
-- >>> fac (Suc (Suc (Suc Cero)))
-- Suc (Suc (Suc (Suc (Suc (Suc Cero)))))
--
fac :: Nat -> Nat
fac Cero = Suc Cero
fac (Suc n) = prod (Suc n) (fac n)


-- | Raises a natural number to the power of another natural number.
-- === Example
-- >>> pot (Suc (Suc Cero)) (Suc (Suc Cero))
-- Suc (Suc (Suc (Suc Cero)))
--
pot :: Nat -> Nat -> Nat
pot _ Cero = Suc Cero
pot n (Suc m) = prod n (pot n m)


-- | Returns the predecessor of a natural number.
-- === Example
-- >>> ant (Suc (Suc Cero))
-- Suc Cero
--
ant :: Nat -> Nat
ant Cero = Cero
ant (Suc n) = (n)


-- | Custom list type with two constructors: 'Vacia' for an empty list, 
-- and 'Cons' for a non-empty list.
data Lista a = Vacia          -- ^ Represents an empty list
             | Cons a (Lista a) -- ^ Represents a list with a head and tail
    deriving (Show, Eq)

-- | Calculates the length of a custom list.
-- === Example
-- >>> longitud (Cons 1 (Cons 2 Vacia))
-- Suc (Suc Cero)
--
longitud :: Lista a -> Nat
longitud Vacia = Cero
longitud (Cons _ xs) = Suc (longitud xs)


-- | Concatenates two custom lists.
-- === Example
-- >>> concate (Cons 1 (Cons 2 Vacia)) (Cons 3 Vacia)
-- Cons 1 (Cons 2 (Cons 3 Vacia))
--
concate :: Lista a -> Lista a -> Lista a
concate Vacia ys = ys
concate (Cons x xs) ys = Cons x (concate xs ys)

-- | Reverses a custom list.
-- === Example
-- >>> rev (Cons 1 (Cons 2 (Cons 3 Vacia)))
-- Cons 3 (Cons 2 (Cons 1 Vacia))
--
rev :: Lista a -> Lista a
rev Vacia = Vacia
rev (Cons x xs) = concate (rev xs) (Cons x Vacia)


-- | Counts the number of constant numeric expressions in an expression tree.
-- === Example
-- >>> contarConstantes (Suma (Num Pos Cero) (Var "x"))
-- 1
--
contarConstantes :: Expresion -> Int
contarConstantes (Num _ _) = 1
contarConstantes (Var _) = 0
contarConstantes (Suma e1 e2) = contarConstantes e1 + contarConstantes e2
contarConstantes (Resta e1 e2) = contarConstantes e1 + contarConstantes e2
contarConstantes (Multiplicacion e1 e2) = contarConstantes e1 + contarConstantes e2
contarConstantes (Division e1 e2) = contarConstantes e1 + contarConstantes e2


-- | Counts the number of variables in an expression tree.
-- === Example
-- >>> contarVariables (Suma (Num Pos Cero) (Var "x"))
-- 1
--
contarVariables :: Expresion -> Int
contarVariables (Num _ _) = 0
contarVariables (Var _) = 1
contarVariables (Suma e1 e2) = contarVariables e1 + contarVariables e2
contarVariables (Resta e1 e2) = contarVariables e1 + contarVariables e2
contarVariables (Multiplicacion e1 e2) = contarVariables e1 + contarVariables e2
contarVariables (Division e1 e2) = contarVariables e1 + contarVariables e2


-- | Counts the number of operators in an expression tree.
-- === Example
-- >>> contarOperadores (Suma (Num Pos Cero) (Var "x"))
-- 1
--
contarOperadores :: Expresion -> Int
contarOperadores (Num _ _) = 0
contarOperadores (Var _) = 0
contarOperadores (Suma e1 e2) = 1 + contarOperadores e1 + contarOperadores e2
contarOperadores (Resta e1 e2) = 1 + contarOperadores e1 + contarOperadores e2
contarOperadores (Multiplicacion e1 e2) = 1 + contarOperadores e1 + contarOperadores e2
contarOperadores (Division e1 e2) = 1 + contarOperadores e1 + contarOperadores e2

