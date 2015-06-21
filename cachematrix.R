## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function that receives a matrix and stores it into cache; it also has two functions to store and retrieve the matrix.
makeCacheMatrix <- function(x = matrix()) {
  ## Removes old matrix and sets new one.
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  
  list(set = set, get = get)
}


## Write a short comment describing this function
## Function that gets a Matrix and returns the inverse; it also checks if the result had already been calculated
cacheSolve <- function(x) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$get()
  
  if(!is.null(m)) {
    if (identical(m,x))
    {
      message("getting cached data")
      return(m)
    }
    else{
      s = solve(m)
      x$set(s)
      return(s)
    }
  }
}
