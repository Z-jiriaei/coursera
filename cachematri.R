## we write code to caching the inverse of a matrix.

## as you know This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x<<-y
    inv<<- NULL
  }
  get <- function() {X}
  setInverse<- function(inverse) {inv <<- inverse}
  getInverse <- fuction() {inv}
  list(set=set , get=get , setInverse=setinverse , getInverse=getInverse)
}


## as you know This function computes the inverse of the special "matrix" returned by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
          message("getting data")
          return(inv)
        }
        mat<-x$get()
        inv<-solve(mat,...)
        x$setInverse(inv)
        inv
}
