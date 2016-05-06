## As learnt from the example give, the first function creates a list containing functions to set and get the values of the matrix and the inverse
## The second function calculates and sets the inverse of the matrix. If the inverse is already present, then the one in cache is assigned

## first function to set, get the matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y = matrix()) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(Inverse) inv <<- invVal
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## this function first checks whether there is an inverse already present, otherwise, a new inverse is computed 

cacheSolve <- function(x=makeCacheMAtrix(1:4, nrow=2,ncol=2), ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        Matrix1 <- x$get()
        inv <- solve(Matrix1)
        x$setinv(inv)
        inv
}
