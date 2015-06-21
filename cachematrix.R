## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function that receives a matrix and stores it into cache; it also has two functions to store and retrieve the matrix.
makeCacheMatrix <- function(x = matrix()) {
  ## Store inverse
  i <- NULL
  
  ## Removes old matrix and sets new one.
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  get <- function() x

  getInverse <- function() i
    
  setInverse <- function(y) {
    i <<-y
  }
  
  list(set = set, get = get, getInverse = getInverse, setInverse = setInverse)
}


## Write a short comment describing this function
## Function that gets a Matrix and returns the inverse; it also checks if the result had already been calculated
cacheSolve <- function(x) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$get()
  
  if(!is.null(x$getInverse())) {
      message("getting cached data")
      return(m)
  }
    else{
      s = solve(m)
      x$setInverse(s)
      return(s)
    }
  }