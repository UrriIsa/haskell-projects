# BinaryTreeUtils

`BinaryTreeUtils` es un módulo de Haskell que proporciona utilidades básicas para la manipulación de listas y cálculos matemáticos. El módulo incluye funciones para invertir listas, insertar números en listas ordenadas, ordenar usando Bubble Sort, calcular números de Fibonacci y calcular factoriales. Fue realizado en mi primer semestre. La traducciones al inglés están inmediatamente después de lo escrito en español-

`BinaryTreeUtils` is a Haskell module that provides basic utilities for list manipulation and mathematical computations. The module includes functions for reversing lists, inserting numbers into sorted lists, sorting using Bubble Sort, computing Fibonacci numbers, and calculating factorials. It was done in my first semester. The English translations follow immediately after the Spanish text.

---

## Table of Contents

- [Características / Features](#caracteristicas--features)
- [Requisitos / Requirements](#requisitos--requirements)
- [Instalación / Installation](#instalación--installation)
- [Uso / Usage](#uso--usage)
- - [Tipos de Datos / Data Types](#tipos-de-datos--data-types)
- [Funciones / Functions](#funciones--functions)
- [Licencia / License](#licencia--license)

---

## Caracteristicas / Features

Este módulo contiene utilidades para trabajar con árboles binarios en Haskell, incluyendo las siguientes operaciones:
- Cálculo de altura
- Cálculo de tamaño
- Búsqueda de elementos
- Recuperación de hojas
- Suma de los valores de los nodos

This module contains utilities for working with binary trees in Haskell, including the following operations:
- Height calculation
- Size calculation
- Element search
- Retrieving leaves
- Summing the values of nodes

---

## Requisitos / Requirements

- [GHC (Compilador Glasgow Haskell)](https://www.haskell.org/ghc/) versión 8.0 o superior.
- Biblioteca Data.List` (incluida en la biblioteca base)

Traduction ;
- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/) version 8.0 or higher.
-  Data.List` library (included in the base library)

---

## Instalación / Installation
1. Clona este repositorio o descarga el archivo `binaryTreeUtils.hs`.
2. Asegúrate de tener GHC y GHCi instalados en tu sistema.
3. Guarda el archivo en el directorio de tu proyecto.

Traduction : 
1. Clone this repository or download the `binaryTreeUtils.hs` file.
2. Make sure you have GHC and GHCi installed on your system.
3. Save the file in your project directory.


---

## Uso / Usage
1. Abra GHCi (intérprete de Haskell) desde su terminal:
    ```bash
    ghci
    ```
2. Cargue el módulo:
    ```haskell
    :load binaryTreeUtils.hs
    ```
3. Utilice las funciones proporcionadas por el módulo. Por ejemplo:
    ```haskell
   height (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Salida: 2
   size (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Salida: 3
   member 3 (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Salida: True
   hojas (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Salida: [1, 3]
   sumTree (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Salida: 6
    ```

Traduction :
1. Open GHCi (Haskell interpreter) from your terminal:
   ```bash
   ghci
   ```
2. Load the module:
   ```haskell
   :load binaryTreeUtils.hs
   ```
3. Use the functions provided by the module. For example:
   ```haskell
   height (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Output: 2
   size (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Output: 3
   member 3 (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Output: True
   hojas (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Output: [1, 3]
   sumTree (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Output: 6
   ```


---

## Tipos de Datos / Data Types

### BinaryTree
Un tipo de dato personalizado para árboles binarios. Se crea recursivamente; su nodo puede estar vacío o tener otro del mismo tipo.
```haskell
data BinaryTree = Void | Node BinaryTree A BinaryTree
```

- `Void`: Representa un árbol vacío.
- `Nodo`: Representa un nodo de árbol con un valor de tipo `A` y dos subárboles.

### A
`A` es un alias de `Int` y representa el tipo de valores almacenados en el árbol.
```haskell
type A = Int
```

Traduction :
### BinaryTree
A custom data type for binary trees. It is created recursively, its node can be empty or have another of the same type.
```haskell
data BinaryTree = Void | Node BinaryTree A BinaryTree
```

- `Void`: Represents an empty tree.
- `Node`: Represents a tree node with a value of type `A` and two subtrees.

### A
`A` is an alias for `Int` and represents the type of values stored in the tree.  
```haskell
type A = Int
```

## Funciones / Functions

### Operaciones con árboles binarios

- **`height`**
    Calcula la altura de un árbol binario.
    ```haskell
    height :: BinaryTree -> Int
    ```
- **`size`**
    Calcula el tamaño (número de nodos) de un árbol binario.
    ```haskell
    size :: BinaryTree -> Int
    ```
- **`member`**
    Comprueba si existe un valor en el árbol binario.
    ```haskell
    member :: A -> BinaryTree -> Bool
    ```
- **`hojas`**
    Obtiene las hojas de un árbol binario.
    ```haskell
    hojas :: BinaryTree -> [A]
    ```
- **`sumTree`**
    Calcula la suma de todos los nodos del árbol.
    ```haskell
    sumTree :: BinaryTree -> Int
    ```
    
Taduction : 
### Operations on Binary Trees

- **`height`**
   Calculates the height of a binary tree.
   ```haskell
      height :: BinaryTree -> Int
   ```
- **`size`**
   Calculates the size (number of nodes) of a binary tree.
   ```haskell
      size :: BinaryTree -> Int
   ```
- **`member`**
   Checks if a value exists in the binary tree.
   ```haskell
      member :: A -> BinaryTree -> Bool
   ```
- **`hojas`**
   Retrieves the leaves of a binary tree.
   ```haskell
      hojas :: BinaryTree -> [A]
   ```
- **`sumTree`**
   Computes the sum of all the nodes in the tree.
   ```haskell
      sumTree :: BinaryTree -> Int
   ```

---

## Licencia / License
Este proyecto está licenciado bajo la Licencia MIT. Consulte el archivo [LICENCIA](LICENCIA) para obtener más información.
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
