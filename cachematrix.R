## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##Code for one function that caches and another that computes inverse of a matrix

## A function that creates a matrix and chache its inverse

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(x){
		mtrx <<- x;
		inverse <<- NULL
	}
get <- function() return(mtrx);
setinv <- function(inv) inverse <<- inv;
getinv <- function() return(inverse);
return(list(set = set, get=get, setinv = setinv, getinv = getinv))
}


## Write a short comment describing this function

## A function that computes inverse of the above matrix
## If inverse has already been calculated and chaced by "makeCacheMatrix",cacheSolve
## retrieves the cache inverse matrix instead of re computing it

cacheSolve <- function(x, ...) {
	inverse <- mtrx$getinv()
	if(!is.null(inverse)) {
		message("Getting chached data...")
		return(inverse)
	}
	data <- mtrx$get()
	inverse <- solve(data, ...)
	mtrx$setinv(inverse)
	return(inverse)
        ## Return a matrix that is the inverse of 'x'
}

