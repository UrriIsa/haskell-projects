
# NatAndExpressionUtils

`NatAndExpressionUtils` es un módulo Haskell que proporciona operaciones sobre números naturales, listas personalizadas y expresiones algebraicas. Incluye funciones para realizar sumas, multiplicaciones, cálculos factoriales y analizar expresiones. Lo hice en mi primer semestre.

***Traduction :***

`NatAndExpressionUtils` is a Haskell module that provides operations on natural numbers, custom lists, and algebraic expressions. It includes functions for performing addition, multiplication, factorial calculations, and analyzing expressions. It was done in my first semester.

## Table of Contents

- [Características / Features](#caracteristicas--features)
- [Requisitos / Requirements](#requisitos--requirements)
- [Instalación / Installation](#instalación--installation)
- [Uso / Usage](#uso--usage)
- [Tipos de Dato / Data Types](#tipos-de-dato--data-types)
- [Funciones / Functions](#funciones--functions)
- [Licencia / License](#licencia--license)


---

## Caracteristicas / Features

- Operaciones básicas con números naturales (suma, producto, factorial, potencia).
- Manipulación de listas personalizadas (longitud, concatenación e inversión).
- Análisis de expresiones algebraicas (conteo de constantes, variables y operadores).
  
***Traduction :***  

- Basic operations with natural numbers (sum, product, factorial, power).
- Manipulation of custom lists (length, concatenation, and reversal).
- Analysis of algebraic expressions (counting constants, variables, and operators).

---

## Requisitos / Requirements

- [GHC (Compilador Glasgow Haskell)](https://www.haskell.org/ghc/) versión 8.0 o superior.

***Traduction :***  

- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/) version 8.0 or higher.

---

## Instalación / Installation

1. Clona este repositorio o descarga el archivo `natAndExpressionUtils.hs`.
2. Asegúrate de que tienes GHC y GHCi instalados en tu sistema.
3. Guarda el archivo en el directorio de su proyecto.

***Traduction :***  

1. Clone this repository or download the `natAndExpressionUtils.hs` file.
2. Make sure you have GHC and GHCi installed on your system.
3. Save the file in your project directory.

---

## Uso / Usage

1. Abre GHCi (el intérprete de Haskell) desde tu terminal:
   ```bash
    ghci
    ```

2. Carga el módulo:
   ```haskell
   :load natAndExpressionUtils.hs
    ```

3. Utiliza las funciones definidas en el módulo. Utiliza las funciones definidas en el módulo. Ejemplos:

   ```haskell
    suma (Suc (Suc Cero)) (Suc Cero) -- Salida:Suc (Suc (Suc Cero))
    longitud (Cons 1 (Cons 2 Vacia)) -- Salida: Suc (Suc Cero)
    contarConstantes (Suma (Num Pos Cero) (Var "x")) -- Salida: 1 
    ```

***Traduction :***  


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

## Tipos de Datos /Data Types

### `Nat`  
Un tipo de datos personalizado para números naturales, empezando por cero y definido recursivamente. ***Traduction :*** A custom data type for natural numbers, starting from zero and defined recursively.
```haskell
data Nat = Cero | Suc Nat
```

### `Expresion`  
Expresión algebraica formada por constantes, variables y operaciones aritméticas básicas. ***Traduction :*** An algebraic expression consisting of constants, variables, and basic arithmetic operations.
```haskell
data Expresion = Num Signo Nat  
               | Var String
               | Suma Expresion Expresion
               | Resta Expresion Expresion
               | Multiplicacion Expresion Expresion
               | Division Expresion Expresion
```

### `Lista a`  
Un tipo de datos de lista personalizado con dos constructores: lista vacía y lista con elementos. ***Traduction :*** A custom list data type with two constructors: empty list and a list with elements.
```haskell
data Lista a = Vacia | Cons a (Lista a)
```

---

## Funciones / Functions

### 1. Operaciones con números naturales / Operations on Natural Numbers

- **`suma`** 
  Suma dos números naturales. ***Traduction :*** Adds two natural numbers.
  ```haskell
  suma :: Nat -> Nat -> Nat
  ```

- **`prod`**  
  Multiplica dos números naturales. ***Traduction :*** Multiplies two natural numbers.
  ```haskell
  prod :: Nat -> Nat -> Nat
  ```

- **`fac`**  
  Calcula el factorial de un número natural. ***Traduction :*** Calculates the factorial of a natural number.
  ```haskell
  fac :: Nat -> Nat
  ```

- **`pot`**  
  Calcula la potencia de un número natural elevado a otro. ***Traduction :*** Computes the power of a natural number raised to another.
  ```haskell
  pot :: Nat -> Nat -> Nat
  ```

- **`ant`**  
  Calcula el predecesor de un número natural. ***Traduction :*** Computes the predecessor of a natural number.
  ```haskell
  ant :: Nat -> Nat
  ```

---

### 2. Operaciones con listas personalizadas / Operations on Custom Lists

- **`longitud`**  
  Devuelve la longitud de una lista personalizada. ***Traduction :*** Returns the length of a custom list.
  ```haskell
  longitud :: Lista a -> Nat
  ```

- **`concate`**  
  Concatena dos listas personalizadas. ***Traduction :*** Concatenates two custom lists.
  ```haskell
  concate :: Lista a -> Lista a -> Lista a
  ```

- **`rev`**  
  Invierte una lista personalizada. ***Traduction :*** Reverses a custom list.
  ```haskell
  rev :: Lista a -> Lista a
  ```

---

### 3. Análisis de expresión / Expression Analysis

- **`contarConstantes`**  
  Cuenta el número de constantes de una expresión. ***Traduction :*** Counts the number of constants in an expression.
  ```haskell
  contarConstantes :: Expresion -> Int
  ```

- **`contarVariables`**  
  Cuenta el número de variables de una expresión. ***Traduction :*** Counts the number of variables in an expression.
  ```haskell
  contarVariables :: Expresion -> Int
  ```

- **`contarOperadores`**  
  Cuenta el número de operadores de una expresión. ***Traduction :*** Counts the number of operators in an expression.
  ```haskell
  contarOperadores :: Expresion -> Int
  ```

---

## Licencia / License
Este proyecto está licenciado bajo la Licencia MIT. Consulte el archivo [LICENCIA](LICENCIA) para obtener más información.

***Traduction :***
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


