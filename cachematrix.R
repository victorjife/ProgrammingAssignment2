## Put comments here that give an overall description of what your
## functions do

## The same than in a vector example, but for this case

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setmean <- function(solve) inverse <<- solve
        getmean <- function() inverse
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inverse <- x$getmean()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setmean(inverse)
        inverse
        ## Return a matrix that is the inverse of 'x'
}
