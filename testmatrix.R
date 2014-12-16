
source("cachematrix.R")
a <- matrix(1:4, nrow=2, ncol=2)
b = makeCacheMatrix(a)
print(cacheSolve(b)) # firs time round it will calculate it
print(cacheSolve(b)) # the other times should get from cache
print(cacheSolve(b)) # the other times should get from cache
print(cacheSolve(b)) # the other times should get from cache
