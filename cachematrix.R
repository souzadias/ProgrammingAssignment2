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
## makeVector()

## Modified function according to exercise
makeCacheMatrix <- function (x = matrix()) {
    m <- null
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

## Modified function according to exercise
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
