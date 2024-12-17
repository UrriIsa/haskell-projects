
# NatAndExpressionUtils

`NatAndExpressionUtils` is a Haskell module that provides operations on natural numbers, custom lists, and algebraic expressions. It includes functions for performing addition, multiplication, factorial calculations, and analyzing expressions.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Data Types](#data-types)
- [Functions](#functions)
   - [Operations on Natural Numbers](#operations-on-natural-numbers)
   - [Operations on Custom Lists](#operations-on-custom-lists)
   - [Expression Analysis](#expression-analysis)
- [License](#license)

---

## Features

- Basic operations with natural numbers (sum, product, factorial, power).
- Manipulation of custom lists (length, concatenation, and reversal).
- Analysis of algebraic expressions (counting constants, variables, and operators).

---

## Requirements

- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/) version 8.0 or higher.

---

## Installation

1. Clone this repository or download the `natAndExpressionUtils.hs` file.
2. Make sure you have GHC and GHCi installed on your system.
3. Save the file in your project directory.

---

## Usage

1. Open GHCi (the Haskell interpreter) from your terminal:
   ```bash
   ghci
   ```

2. Load the module:
   ```haskell
   :load natAndExpressionUtils.hs
   ```

3. Use the functions defined in the module. Examples:

   ```haskell
   suma (Suc (Suc Cero)) (Suc Cero) -- Output:Suc (Suc (Suc Cero))
   longitud (Cons 1 (Cons 2 Vacia)) -- Output: Suc (Suc Cero)
   contarConstantes (Suma (Num Pos Cero) (Var "x")) -- Output: 1 
   ```

---

## Data Types

### `Nat`  
A custom data type for natural numbers, starting from zero and defined recursively.
```haskell
data Nat = Cero | Suc Nat
```

### `Expresion`  
An algebraic expression consisting of constants, variables, and basic arithmetic operations.
```haskell
data Expresion = Num Signo Nat  
               | Var String
               | Suma Expresion Expresion
               | Resta Expresion Expresion
               | Multiplicacion Expresion Expresion
               | Division Expresion Expresion
```

### `Lista a`  
A custom list data type with two constructors: empty list and a list with elements.
```haskell
data Lista a = Vacia | Cons a (Lista a)
```

---

## Functions

### 1. Operations on Natural Numbers

- **`suma`** 
  Adds two natural numbers.
  ```haskell
  suma :: Nat -> Nat -> Nat
  ```

- **`prod`**  
  Multiplies two natural numbers.
  ```haskell
  prod :: Nat -> Nat -> Nat
  ```

- **`fac`**  
  Calculates the factorial of a natural number.
  ```haskell
  fac :: Nat -> Nat
  ```

- **`pot`**  
  Computes the power of a natural number raised to another.
  ```haskell
  pot :: Nat -> Nat -> Nat
  ```

- **`ant`**  
  Computes the predecessor of a natural number.
  ```haskell
  ant :: Nat -> Nat
  ```

---

### 2. Operations on Custom Lists

- **`longitud`**  
  Returns the length of a custom list.
  ```haskell
  longitud :: Lista a -> Nat
  ```

- **`concate`**  
  Concatenates two custom lists.
  ```haskell
  concate :: Lista a -> Lista a -> Lista a
  ```

- **`rev`**  
  Reverses a custom list.
  ```haskell
  rev :: Lista a -> Lista a
  ```

---

### 3. Expression Analysis

- **`contarConstantes`**  
  Counts the number of constants in an expression.
  ```haskell
  contarConstantes :: Expresion -> Int
  ```

- **`contarVariables`**  
  Counts the number of variables in an expression.
  ```haskell
  contarVariables :: Expresion -> Int
  ```

- **`contarOperadores`**  
  Counts the number of operators in an expression.
  ```haskell
  contarOperadores :: Expresion -> Int
  ```

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

