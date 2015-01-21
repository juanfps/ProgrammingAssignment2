## Put comments here that give an overall description of what your
## functions do
## Write a short comment describing this function
## This function creates a special R object that Initializes a variable 'm', set and get
## the function to obtain a inverse matrix
makeCacheMatrix <- function(x=matrix()) {
  m <- NULL
  set<- function(y){
    x<<-y
    m<<- NULL
  }
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
    # return a list of functions as an R object
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}
## Write a short comment describing this function
##This function computes the inverse of the special "matrix" 
##returned by makeCacheMatrix
##If the inverse has already been calculated (and the matrix
##has not changed), then the cachesolve should retrieve the inverse from the cache.
cachesolve <- function(x, ...) { 
  m<- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    ## Return a matrix that is the inverse of 'x'
    return(m)
  }
  data <- x$get()
  m<- solve(data, ...)
  x$setinv(m)
  m
 }
