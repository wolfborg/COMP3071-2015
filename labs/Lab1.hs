import Data.List

-- Find the last element in the list.
-- Fix the syntax error so that myLast [1 .. 6] returns 6
-- Note: I won't accept myLast = last
myLast :: [a] -> a
myLast = undefined

-- Return whether the list is a palindrome
-- Fix the error so that isPalindrome "tacocat" is true
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome = undefined

-- Hailstone sequence
-- http://en.wikipedia.org/wiki/Hailstone_sequence
-- Write a program that computes the hailstone sequence for a given number
-- For example, hailstone 5 -> [5 16 8 4 2 1]
hailstone :: Integer -> [Integer]
hailstone = undefined

-- Write a function to convert a number into a list of digits
-- For example, toDigits 30 -> [3, 0]
unpack :: Integer -> [Integer]
unpack = undefined

-- Write a function to convert a list of digits into a number
-- For example, fromDigits [3, 4, 5] -> 345
pack :: [Integer] -> Integer
pack = undefined

-- Kaprekar's routine: 
-- http://en.wikipedia.org/wiki/6174_%28number%29
-- 1. Arrange the digits in ascending order
-- 2. Arrange the digits in descending order
-- Subtract the smaller number from the larger number
-- For example, kaprekar 5432 -> 3087
-- you will need to import Data.List (just put import Data.List on top of the file) for sort and reverse
-- For example, sort [ 1, 2, 5, 4] -> [1, 2, 4, 5]
-- reverse [1, 3, 4] -> [4, 3, 1]
kaprekar :: Integer -> Integer
kaprekar = undefined

-- Kaprekar's list
-- Write a function that computes Kaprekar's routine for a number repeatedly until it reaches its fixed point
-- For example, kaprekarList 5432 -> [5432, 3087, 8352, 6174]
kaprekarList :: Integer -> [Integer]
kaprekarList = undefined

-- Spelling alphabet
-- Translate a string into a string spelled out using the NATO phonetic alphabet
-- http://en.wikipedia.org/wiki/NATO_phonetic_alphabet
-- For example, say "Fearing" -> "Foxtrot Echo Alpha Romeo India November Golf"
say :: String -> String
say = undefined
