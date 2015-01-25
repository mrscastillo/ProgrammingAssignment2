
## This function receive a matrix and save it 

makeCacheMatrix <- function(x = matrix()) {
     
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL	
	}

	get <- function () x

	setinverse <- function(solve) m<<- solve
	getinverse <- function() m
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)

}


## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {

     m <- x$getinverse()
     if (!is.null(m)) {
		return(m)
               
     } else {   
          	m <- solve(x$get(), ...)
		x$setinverse(m)
		m
     }    
}