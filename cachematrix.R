## Put comments here that give an overall description of what your
## functions do

## object that returns a list containing functions to set and get a matrix, 
## get and set inverse of a matrix 

makeCacheMatrix <- function(x = matrix()) {
	    ## global variable to store inversed matrix
	    i <- NULL
	    ## set the 
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)


}


## object that stores a matrix and and caches the inverse of the matrix
cacheSolve <- function(x, ...) {
        ## get the global variable that is used to store a cahce of the matrix inverse
         i <- x$getinverse()
        ## check if the global vairable has a value, if yes then return the variable
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        ## if the global vairbale is empty, then get the matrix
        data <- x$get()
        ## inverses the matrix and store it in a variable
        i <- solve(data, ...)

        x$setinverse(i)
        ## Return a matrix that is the inverse of 'x'
        i

}
