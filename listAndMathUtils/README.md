# ListAndMathUtils

`ListAndMathUtils` is a Haskell module that provides basic utilities for list manipulation and mathematical computations. The module includes functions for reversing lists, inserting numbers into sorted lists, sorting using Bubble Sort, computing Fibonacci numbers, and calculating factorials. It was done in my first semester.

---

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Functions](#functions)
- [License](#license)

---

## Features

- Reverse a list recursively.
- Insert a number into a sorted list while maintaining order.
- Sort a list using the Bubble Sort algorithm.
- Compute Fibonacci numbers recursively.
- Calculate factorials of integers recursively.

---

## Requirements

- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/) version 8.0 or higher.

---

## Installation

1. Clone this repository or download the `listAndMathUtils.hs` file.
2. Make sure GHC and GHCi are installed on your system.
3. Save the file in your project directory.

---

## Usage

1. Open GHCi (Haskell interpreter) from your terminal:
   ```bash
   ghci
   ```
2. Load the module:
   ```haskell
   :load listAndMathUtils.hs
   ```
3. Use the functions provided by the module. For example:
   ```haskell
   revertirLista [1, 2, 3]      -- Output: [3, 2, 1]
   insertaNum 3 [1, 2, 4, 5]   -- Output: [1, 2, 3, 4, 5]
   bubbleSort [4, 2, 5, 1, 3]  -- Output: [1, 2, 3, 4, 5]
   fib 5                       -- Output: 5
   factorial 5                 -- Output: 120
   ```
---

## Functions

### 1. `fib`
   Computes the nth number in the Fibonacci sequence.
   ```haskell
      fib :: Integer -> Integer
   ```

### 2. `factorial`
   Calculates the factorial of an integer.
   ```haskell
      factorial :: Integer -> Integer
   ```

### 3. `revertirLista`
   Reverses a list recursively.
   ```haskell
      revertirLista :: [a] -> [a]
   ```

### 4. `insertaNum`
   Inserts a number into a sorted list while maintaining the order.
   ```haskell
      insertaNum :: Integer -> [Integer] -> [Integer]
   ```

### 5. `bubbleSort`
   Sorts a list using the Bubble Sort algorithm.
   ```haskell
      bubbleSort :: Ord a => [a] -> [a]
   ```

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
