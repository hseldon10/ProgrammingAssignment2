## This assignment was written by Guillermo Sánchez Estrada of Monterrey, Mexico, on February 21, 2015, for Coursera.

## There are two (2) functions in this file: makeCacheMatrix, which calculates and caches the inverse of a square matrix,
## and cacheSolve, which checks if makeCacheMatrix has cached the inverse of a square matrix, in which case it returns the cached value,
## or if the value has not been cached, it calculates the inverse of the matrix and returns it. 

## The function below, called makeCacheMatrix does the following:
## This function takes as input a variable "x", which is a matrix,
## and caches both the original matrix in the value "m" and its the result of solve(x) in the variable "in.m".
## This operation should return the inverse of matrix "x".
## In other words, the variable "m" should be a cached matrix that is the same as x, and
## the variable "in.m" should be a cached matrix containing the inverse of x.
## The assignment said that we should assume that the matrix supplied ("x") is always invertible,
## therefore, the makeCacheMatrix does not check if the value supplied is a matrix, or if it is invertible.
## The assumption is that x is always an invertible, square matrix and it doesn't check otherwise
## or does anything if this isn't the case.

makeCacheMatrix <- function(x = matrix()) {
	m <<- x
	in.m <<- solve(x)
}


## The function below, called cacheSolve does the following:
## 1. It takes as input a function supplied by the user (x), and the variables "m" and "in.m"
## 2. It checks if the variables "m" and "in.m" exist. If  both exist, the assumption is that these values were
##    cached in the environment. If they don't exist, the assumption is that these values were not cached.
## 3. If "m" and" in.m" exist, the function checks if "m" is equal to "x".
## 4. If "m" == "x" is true, a number of assumptions are made, which are:
##    a) That "m" and "x" invertible, square matrices, and that they are the same.
##    b) That "m" was cached by makeCacheMatrix, and therefore, that "in.m" was also cached by the same function, and is the inverse of "m".
##    c) That since "m" and "x" are the same, then "in.m" is bot the inverse of "m" and the inverse of "x".
##    These assumptions are not checked if they are true, and so, the function returns "in.m" and assumes it's the inverse of "x".
## 5. If "m" == "x" is false, then the function calculates and returns the inverse of "x" by using the solve function.
## 6. If either "m" or "in.m" do not exist, then the function assumes that makeCacheMatrix has not been called,
##    and thus calculates and returns the inverse of "x" by using the solve function.

cacheSolve <- function(x = matrix()) {
        if(exists('m') && exists('in.m')){
			if(identical(x,m) == TRUE){
				in.m
			} else {
				solve(x)
				}
		} else {
			solve(x)
			}
}
