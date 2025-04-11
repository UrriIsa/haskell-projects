# ListAndMathUtils

ListAndMathUtils` es un módulo Haskell que proporciona utilidades básicas para la manipulación de listas y cálculos matemáticos. El módulo incluye funciones para invertir listas, insertar números en listas ordenadas, ordenar usando Bubble Sort, calcular números de Fibonacci y calcular factoriales. Lo hice en mi primer semestre.

***Traduction :***

`ListAndMathUtils` is a Haskell module that provides basic utilities for list manipulation and mathematical computations. The module includes functions for reversing lists, inserting numbers into sorted lists, sorting using Bubble Sort, computing Fibonacci numbers, and calculating factorials. It was done in my first semester.

---

## Table of Contents

- [Características / Features](#caracteristicas--features)
- [Requisitos / Requirements](#requisitos--requirements)
- [Instalación / Installation](#instalación--installation)
- [Uso / Usage](#uso--usage)
- [Funciones / Functions](#funciones--functions)
- [Licencia / License](#licencia--license)

---

## Caracteristicas / Features

- Invertir una lista recursivamente.
- Insertar un número en una lista ordenada manteniendo el orden.
- Ordenar una lista utilizando el algoritmo Bubble Sort.
- Calcular recursivamente números de Fibonacci.
- Calcular recursivamente factoriales de números enteros.

***Traduction :***  

- Reverse a list recursively.
- Insert a number into a sorted list while maintaining order.
- Sort a list using the Bubble Sort algorithm.
- Compute Fibonacci numbers recursively.
- Calculate factorials of integers recursively.

---

## Requisitos / Requirements

- [GHC (Compilador Glasgow Haskell)](https://www.haskell.org/ghc/) versión 8.0 o superior.

***Traduction :***  

- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/) version 8.0 or higher.

---

## Instalación / Installation

1. Clona este repositorio o descarga el archivo `binaryTreeUtils.hs`.
2. Asegúrate de tener GHC y GHCi instalados en tu sistema.
3. Guarda el archivo en el directorio de tu proyecto.

***Traduction :***

1. Clone this repository or download the `listAndMathUtils.hs` file.
2. Make sure GHC and GHCi are installed on your system.
3. Save the file in your project directory.

---


## Uso / Usage

1. Abre GHCi (intérprete de Haskell) desde tu terminal:
   ```bash
    ghci
    ```
2. Carga el módulo:
   ```haskell
   :load listAndMathUtils.hs
    ```
3. Utiliza las funciones proporcionadas por el módulo. Por ejemplo:
    ```haskell
    revertirLista [1, 2, 3]      -- Salida: [3, 2, 1]
    insertaNum 3 [1, 2, 4, 5]    -- Salida: [1, 2, 3, 4, 5]
    bubbleSort [4, 2, 5, 1, 3]   -- Salida: [1, 2, 3, 4, 5]
    fib 5                        -- Salida: 5
    factorial 5                  -- Salida: 120
    ```

***Traduction :***

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
   insertaNum 3 [1, 2, 4, 5]    -- Output: [1, 2, 3, 4, 5]
   bubbleSort [4, 2, 5, 1, 3]   -- Output: [1, 2, 3, 4, 5]
   fib 5                        -- Output: 5
   factorial 5                  -- Output: 120
   ```
---

## Funciones / Functions

### 1. `fib`
 Calcula el enésimo número de la sucesión de Fibonacci. ***Traduction :*** Computes the nth number in the Fibonacci sequence.
   ```haskell
 fib :: Integer -> Integer
 ```

### 2. `factorial` 
 Calcula el factorial de un entero. ***Traduction :*** Calculates the factorial of an integer.
   ```haskell
 factorial :: Integer -> Integer
 ```

### 3. `factorial` Calcula el factorial de un entero. `revertirLista`
 Invierte una lista recursivamente. ***Traduction :*** Reverses a list recursively.
   ```haskell
 revertirLista :: [a] -> [a]
 ```

### 4. `insertaNum` 
 Inserta un número en una lista ordenada manteniendo el orden. ***Traduction :*** Inserts a number into a sorted list while maintaining the order.
   ```haskell
 insertaNum :: Integer -> [Integer] -> [Integer]
 ```

### 5. `bubbleSort`
 Ordena una lista usando el algoritmo Bubble Sort. ***Traduction :*** Sorts a list using the Bubble Sort algorithm.
   ```haskell
 bubbleSort :: Ord a => [a] -> [a]
 ```

---

## Licencia / License
Este proyecto está licenciado bajo la Licencia MIT. Consulte el archivo [LICENCIA](LICENCIA) para obtener más información.

***Traduction :***
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
