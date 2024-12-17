
# NatAndExpressionUtils

`NatAndExpressionUtils` es un módulo en Haskell que proporciona operaciones sobre números naturales, listas personalizadas y expresiones algebraicas. Incluye funciones para realizar sumas, productos, cálculos factoriales, así como el análisis de expresiones.

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

- Operaciones básicas con números naturales (suma, producto, factorial, potencia).
- Manipulación de listas personalizadas (longitud, concatenación y reversión).
- Análisis de expresiones algebraicas (conteo de constantes, variables y operadores).

---

## Requirements

- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/) versión 8.0 o superior.

---

## Installation

1. Clona este repositorio o descarga el archivo `NatAndExpressionUtils.hs`.
2. Asegúrate de tener GHC y GHCi instalados en tu sistema.
3. Guarda el archivo en el directorio de tu proyecto.

---

## Usage

1. Abre GHCi (el intérprete de Haskell) desde tu terminal:
   ```bash
   ghci
   ```

2. Carga el módulo:
   ```haskell
   :load NatAndExpressionUtils.hs
   ```

3. Utiliza las funciones definidas en el módulo. Ejemplos:

   ```haskell
   -- Operaciones con números naturales
   let n1 = Suc (Suc Cero)  -- Representa 2
   let n2 = Suc (Suc (Suc Cero))  -- Representa 3

   suma n1 n2
   -- Output: Suc (Suc (Suc (Suc (Suc Cero))))  -- 5

   prod n1 n2
   -- Output: Suc (Suc (Suc (Suc (Suc (Suc Cero)))))  -- 6

   fac n2
   -- Output: Suc (Suc (Suc (Suc (Suc (Suc Cero)))))  -- 6 (factorial de 3)

   -- Manipulación de listas personalizadas
   let lista1 = Cons 1 (Cons 2 Vacia)  -- [1, 2]
   let lista2 = Cons 3 (Cons 4 Vacia)  -- [3, 4]

   concate lista1 lista2
   -- Output: Cons 1 (Cons 2 (Cons 3 (Cons 4 Vacia)))  -- [1, 2, 3, 4]

   rev lista1
   -- Output: Cons 2 (Cons 1 Vacia)  -- [2, 1]

   -- Análisis de expresiones
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

### 1. **Operaciones sobre números naturales**
- `suma`  
  Suma dos números naturales.

- `prod`  
  Multiplica dos números naturales.

- `fac`  
  Calcula el factorial de un número natural.

- `pot`  
  Eleva un número natural a la potencia de otro.

- `ant`  
  Devuelve el antecesor de un número natural.

---

### 2. **Manipulación de listas personalizadas**
- `longitud`  
  Devuelve la longitud de una lista.

- `concate`  
  Concatena dos listas.

- `rev`  
  Invierte una lista.

---

### 3. **Análisis de expresiones algebraicas**
- `contarConstantes`  
  Cuenta el número de constantes en una expresión.

- `contarVariables`  
  Cuenta el número de variables en una expresión.

- `contarOperadores`  
  Cuenta el número de operadores en una expresión.

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

---

## License

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para más detalles.
