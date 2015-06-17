## Create a special "matrix" wich is a list containing function to
## set and get the value of the matrix and set and get the inverse of the matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

   inverseOfX <- NULL

   set <- function( y ) {
       x <<- y
       inverseOfX <<- NULL
   }

   get <- function() x

   setInverse <- function( y ) {
      inverseOfX <<- y
   }

   getInverse <- function()  inverseOfX

   list( set = set, get = get, setInverse = setInverse, getInverse = getInverse )

}


## if the inverse has already been calculated then cacheSolve return the inverse from the cache 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'   
   inversa <- x$getInverse()
   if( !is.null( inversa ) {
      message("getting cached data" )
      return ( inversa )
   }
   
   x$setInverse( solve( x$get() ) )

}
