library(tidyverse)
library(readxl)
library(docstring)
library(scales)
options(scipen=999)
options(digits=2)

#24-03-20
# This problem was asked by Google

# Given the root to a binary tree, implement serialize(root), which serializes the tree into a string, and deserialize(s), which deserializes the string back into the tree.
# 
# For example, given the following Node class
# 
# class Node:
# 	def __init__(self, val, left=None, right=None):
# 	self.val = val
# self.left = left
# self.right = right
# The following test should pass:
# 	
# 	node = Node('root', Node('left', Node('left.left')), Node('right'))
# assert deserialize(serialize(node)).left.left.val == 'left.left'

#----------------------------------------------------------------------------------------------------------------

#23-03-20
# This problem was asked by Uber.
# 
# Given an array of integers, return a new array such that each element at index i of the new array is the product of all the numbers in the original array except the one at i.
# 
# For example, if our input was [1, 2, 3, 4, 5], the expected output would be [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would be [2, 3, 6].
# 
# Follow-up: what if you can't use division? !!! Not sure why this is relevant?

# test <- c(3,2,1)
# test2 <- c(1,2,3,4,5)
# f <- function(input){
# 	size <- length(input)
# 	result <- numeric(size)
# 	for(i in seq(1,size)){
# 		temp <- input[-i]
# 		result[i] <- prod(temp)
# 	}
# 	result
# }
# 
# f(test)

# ----------------------------------------------------------------------------------------------------------------

#22-03-20
# This problem was recently asked by Google.
# 
# Given a list of numbers and a number k, return whether any two numbers from the list add up to k.
# 
# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
# 
# Bonus: Can you do this in one pass?

# f <-function(list, number){
# 	sums <- combn(list, 2, sum)
# 	if(number %in% sums){
# 		return(TRUE)
# 	} else {
# 		return(FALSE)
# 	}
# }
# 
# test <- c(1,2,3,4)
# f(test, 8)


