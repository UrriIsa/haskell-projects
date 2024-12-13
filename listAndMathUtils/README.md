# ListAndMathUtils

`ListAndMathUtils` is a Haskell module that provides basic utilities for list manipulation and mathematical computations. The module includes functions for reversing lists, inserting numbers into sorted lists, sorting using Bubble Sort, computing Fibonacci numbers, and calculating factorials.

## Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Functions](#functions)
- [Contributing](#contributing)
- [License](#license)

## Features

- Reverse a list recursively.
- Insert a number into a sorted list while maintaining order.
- Sort a list using the Bubble Sort algorithm.
- Compute Fibonacci numbers recursively.
- Calculate factorials of integers recursively.

## Requirements

- [GHC (Glasgow Haskell Compiler)](https://www.haskell.org/ghc/) version 8.0 or higher.

## Installation

1. Clone this repository or download the `ListAndMathUtils.hs` file.
2. Make sure GHC and GHCi are installed on your system.
3. Save the file in your project directory.

## Usage

1. Open GHCi (Haskell interpreter) from your terminal:
   ```bash
   ghci
   ```
2. Load the module:
   ```haskell
   :load ListAndMathUtils.hs
   ```
3. Use the functions provided by the module. For example:
   ```haskell
   revertirLista [1, 2, 3]      -- Output: [3, 2, 1]
   insertaNum 3 [1, 2, 4, 5]   -- Output: [1, 2, 3, 4, 5]
   bubbleSort [4, 2, 5, 1, 3]  -- Output: [1, 2, 3, 4, 5]
   fib 5                       -- Output: 5
   factorial 5                 -- Output: 120
   ```

## Functions

### 1. `revertirLista`
Reverses a list recursively.

### 2. `insertaNum`
Inserts a number into a sorted list while maintaining the order.

### 3. `bubbleSort`
Sorts a list using the Bubble Sort algorithm.

### 4. `fib`
Computes the nth number in the Fibonacci sequence.

### 5. `factorial`
Calculates the factorial of an integer.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m "Add feature-name"
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
