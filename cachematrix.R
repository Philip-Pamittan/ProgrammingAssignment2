## Creating a "matrix" labeled as 'john'
## This function creates a special "matrix" that can cache its inverse.

makeCacheMatrix <- function(john = matrix()){
  phila <- NULL 
  set <- function(y){
    john <<- y
    phila <<- NULL
  }
  get <- function()  {phila}
  setInverse <- function(solveMatrix) {phila <<- solveMatrix}
  getInverse <- function() {phila}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## This function enables the inverse of the special "matrix" to be computed.

cachesolve <- function(x, ...){
  ## Return a matrix that is the inverse of 'john'
  phila <- x$getInverse()
  if(!is.null(phila)){
    message("getting cached data")
    return(phila)
  }
  data <- x$get()
  phila <- solve(mat, ...)
  x$setInverse(phila)
  phila
}
