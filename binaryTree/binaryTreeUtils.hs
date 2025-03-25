-- MIT License
-- Copyright (c) 2024 Urrutia Alfaro Isaac Arturo

{-|
Module      : BinaryTreeUtils
Description : This module contains utilities for working with binary trees, 
              including operations like height, size, and element search.
-}
module BinaryTreeUtils (
    height, size, member, hojas, sumTree
) where

import Data.List

type A = Int
-- | Represents a binary tree.
-- This type has two constructors:
-- * 'Void' - Represents an empty tree.
-- * 'Node' - Represents a tree node that contains a value and two subtrees.
data BinaryTree = Void                      -- ^ Represents an empty tree
                | Node BinaryTree A BinaryTree  -- ^ Represents a tree node with value 'A' and two subtrees
    deriving (Show, Eq)


-- | Computes the height of a binary tree.
-- The height of a tree is the length of the longest path from the root to a leaf.
-- If the tree is empty, the height is 0.
-- === Example
-- >>> height (Node (Node Void 1 Void) 2 (Node Void 3 Void))
-- 2
--
height :: BinaryTree -> Int
height Void = 0  -- An empty tree has height 0.
height (Node izq _ der) = 1 + grande (height izq) (height der)  -- The height of a node is 1 plus the maximum height of its subtrees.


-- | Computes the larger of two integers.
-- This function is used to determine the greater height between two subtrees.
--
grande :: Int -> Int -> Int
grande n m 
    | n > m = n  -- If 'n' is greater than 'm', return 'n'.
    | otherwise = m  -- Otherwise, return 'm'.


-- | Computes the size of a binary tree, which is the number of nodes.
-- The size of a tree is the total number of nodes, including the root and all descendants.
-- If the tree is empty, the size is 0.
-- === Example
-- >>> size (Node (Node Void 1 Void) 2 (Node Void 3 Void))
-- 3
--
size :: BinaryTree -> Int
size Void = 0  -- An empty tree has size 0.
size (Node izq _ der) = 1 + size izq + size der  -- The size of a tree is 1 (the current node) plus the size of its subtrees.


-- | Checks if a value exists in the binary tree.
-- This function recursively searches the tree for the given value.
-- It returns 'True' if the value is found, and 'False' otherwise.
-- === Example
-- >>> member 3 (Node (Node Void 1 Void) 2 (Node Void 3 Void))
-- True
--
member :: A -> BinaryTree -> Bool
member n Void = False  -- If the tree is empty, the value is not found.
member n (Node izq x der) 
    | n == x = True  -- If the current node's value is equal to the searched value, return 'True'.
    | otherwise = member n der || member n izq  -- Otherwise, recursively search the left and right subtrees.


-- | Retrieves all the leaves of a binary tree.
-- A leaf is a node that does not have any children. This function returns
-- a list of all leaves in the tree.
-- === Example
-- >>> hojas (Node (Node Void 1 Void) 2 (Node Void 3 Void))
-- [1, 3]
--
hojas :: BinaryTree -> [A]
hojas Void = []  -- An empty tree has no leaves.
hojas (Node Void x Void) = [x]  -- A node with no children is a leaf.
hojas (Node izq x der) = hojas izq ++ hojas der  -- Concatenate the leaves from the left and right subtrees.

-- | Computes the sum of all the nodes in the tree.
-- This function recursively sums the values of all nodes in the tree.
-- === Example
-- >>> sumTree (Node (Node Void 1 Void) 2 (Node Void 3 Void))
-- 6
--
sumTree :: BinaryTree -> Int
sumTree Void = 0  -- An empty tree has a sum of 0.
sumTree (Node izq x der) = x + sumTree izq + sumTree der  -- The sum of a tree is the value of the current node plus the sum of its subtrees.

