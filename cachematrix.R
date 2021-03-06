## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## set the value of the matrix
## get the value of the matrix
## set the value of inverse matrix
## get the value of inverse matrix

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y){
x<<-y
inv<- NULL
}
get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}
## Write a short comment describing this function
## This function first time will retutn inverse by setting it to x variable
## This show the example of scoping.
cacheSolve <- function(x, ...) {
    inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
