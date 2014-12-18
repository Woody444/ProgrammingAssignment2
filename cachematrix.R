
# makeCacheMatrix is a function that takes an input matrix and creates a list of a 
# function to 1. Set the value of the matrix. 2. Get the value of the vector
# 3.Set the value of the inverse of the matrix. 4.Get the value of the inverese

# This funtion stores and input matrix and 3 functions to retrieve the matrix and 
# store the inverse of the matrix for faster retrieval than calculating the inverse.


makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv<<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

This function will first access makeCachematrix for a stored value of the inverse 
of the input matrix.  If not found it will calculate the inverse and store the
value in makeCacheMatrix

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
