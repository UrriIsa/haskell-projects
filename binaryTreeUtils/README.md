# BinaryTreeUtils

`BinaryTreeUtils` is a Haskell module that provides basic utilities for list manipulation and mathematical computations. The module includes functions for reversing lists, inserting numbers into sorted lists, sorting using Bubble Sort, computing Fibonacci numbers, and calculating factorials.

---

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- - [Data Types](#data-types)
- [Functions](#functions)
   - [Operations on Binary Trees](#operations-on-binary-trees)
- [License](#license)

---

## Features

This module contains utilities for working with binary trees in Haskell, including the following operations:
- Height calculation
- Size calculation
- Element search
- Retrieving leaves
- Summing the values of nodes

---

## Requirements

- Haskell compiler (GHC)
- `Data.List` library (included in the base library)

---

## Installation

1. Clone this repository or download the `NatAndExpressionUtils.hs` file.
2. Make sure you have GHC and GHCi installed on your system.
3. Save the file in your project directory.

---

## Usage

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
   height (Node (Node Void 1 Void) 2 (Node Void 3 Void) -- Output: 2
   size (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Output: 3
   member 3 (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Output: True
   hojas (Node (Node Void 1 Void) 2 (Node Void 3 Void) -- Output: [1, 3]
   sumTree (Node (Node Void 1 Void) 2 (Node Void 3 Void)) -- Output: 6
   ```


---

## Data Types

### BinaryTree

```haskell
data BinaryTree = Void | Node BinaryTree A BinaryTree
```

- `Void`: Represents an empty tree.
- `Node`: Represents a tree node with a value of type `A` and two subtrees.

### A

```haskell
type A = Int
```

`A` is an alias for `Int` and represents the type of values stored in the tree.

## Functions

### Operations on Binary Trees

- **height**: Calculates the height of a binary tree.
- **size**: Calculates the size (number of nodes) of a binary tree.
- **member**: Checks if a value exists in the binary tree.
- **hojas**: Retrieves the leaves of a binary tree.
- **sumTree**: Computes the sum of all the nodes in the tree.

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
