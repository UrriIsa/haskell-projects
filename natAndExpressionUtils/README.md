
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
- [Examples](#examples)
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

1. Clone this repository or download the `NatAndExpressionUtils.hs` file.
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
   :load NatAndExpressionUtils.hs
   ```

3. Use the functions defined in the module. Examples:

   ```haskell
   -- Operations on natural numbers
   let n1 = Suc (Suc Cero)  -- Represents 2
   let n2 = Suc (Suc (Suc Cero))  -- Represents 3

   suma n1 n2
   -- Output: Suc (Suc (Suc (Suc (Suc Cero))))  -- 5

   prod n1 n2
   -- Output: Suc (Suc (Suc (Suc (Suc (Suc Cero)))))  -- 6

   fac n2
   -- Output: Suc (Suc (Suc (Suc (Suc (Suc Cero)))))  -- 6 (factorial of 3)

   -- Manipulation of custom lists
   let lista1 = Cons 1 (Cons 2 Vacia)  -- [1, 2]
   let lista2 = Cons 3 (Cons 4 Vacia)  -- [3, 4]

   concate lista1 lista2
   -- Output: Cons 1 (Cons 2 (Cons 3 (Cons 4 Vacia)))  -- [1, 2, 3, 4]

   rev lista1
   -- Output: Cons 2 (Cons 1 Vacia)  -- [2, 1]

   -- Expression analysis
   let expr = Suma (Num Pos Cero) (Var "x")

   contarConstantes expr
   -- Output: 1

   contarVariables expr
   -- Output: 1

   contarOperadores expr
   -- Output: 1
   ```

---

## Functions

### 1. **Operations on Natural Numbers**
- `suma`  
  Adds two natural numbers.

- `prod`  
  Multiplies two natural numbers.

- `fac`  
  Calculates the factorial of a natural number.

- `pot`  
  Computes the power of a natural number raised to another.

- `ant`  
  Returns the predecessor of a natural number.

---

### 2. **Operations on Custom Lists**
- `longitud`  
  Returns the length of a custom list.

- `concate`  
  Concatenates two custom lists.

- `rev`  
  Reverses a custom list.

---

### 3. **Expression Analysis**
- `contarConstantes`  
  Counts the number of constants in an expression.

- `contarVariables`  
  Counts the number of variables in an expression.

- `contarOperadores`  
  Counts the number of operators in an expression.

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

### Operations on Natural Numbers

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

### Operations on Custom Lists

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

### Expression Analysis

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

## Examples

### Natural Numbers Example

```haskell
let n1 = Suc (Suc Cero)  -- 2
let n2 = Suc (Suc (Suc Cero))  -- 3

suma n1 n2
-- Result: Suc (Suc (Suc (Suc (Suc Cero))))  -- 5
```

### Custom List Example

```haskell
let lista1 = Cons 1 (Cons 2 Vacia)  -- [1, 2]
let lista2 = Cons 3 (Cons 4 Vacia)  -- [3, 4]

concate lista1 lista2
-- Result: Cons 1 (Cons 2 (Cons 3 (Cons 4 Vacia)))  -- [1, 2, 3, 4]
```

### Expression Example

```haskell
let expr = Suma (Num Pos Cero) (Var "x")

contarConstantes expr
-- Result: 1

contarVariables expr
-- Result: 1

contarOperadores expr
-- Result: 1
```

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

