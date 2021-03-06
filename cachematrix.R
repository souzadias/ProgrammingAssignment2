## Function provided in exercise
##
##makeVector <- function(x = numeric()) {
##    m <- NULL
##    set <- function(y) {
##        x <<- y
##        m <<- NULL
##    }
##    get <- function() x
##    setmean <- function(mean) m <<- mean
##   getmean <- function() m
##    list(set = set, get = get,
##         setmean = setmean,
##         getmean = getmean)
##}
## 
##
## Modified function according to exercise
## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function (x = matrix()) {   
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set =set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
}


## Function provided in exercise
##
##cachemean <- function(x, ...) {
##    m <- x$getmean()
##    if(!is.null(m)) {
##        message("getting cached data")
##        return(m)
##    }
##    data <- x$get()
##    m <- mean(data, ...)
##    x$setmean(m)
##    m
##}
##
## Modified function according to exercise
## cacheSolve: This function computes the inverse of the special
## "matrix" returned by makeCacheMatrix above. If the inverse has
## already been calculated (and the matrix has not changed), then
## the cachesolve should retrieve the inverse from the cache.
##
cachesolve <- function(x, ...) {
    m <-  x$getsolve(
        if (!is.null(m)) {
            message ("getting cached data")
            return (m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        m    
}
