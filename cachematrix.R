## Put comments here that give an overall description of what your
## functions do

## create a "class" that can cache the value of the inverse of a matrix
## such that it can be re-used as it is an expensive operation

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(the_inv) inv <<- the_inv
  getinv <- function() inv
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}



## calculate inverse of matrix. check first if a cached value exists.
## if not, calculated it and also put it into the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(is.null(inv)) {
    message("getting cached matrix inverse")
    return(inv)
  }
  data <- x$get
  inv <- solve(x, ...)
  x$setinv(inv)
  inv
}