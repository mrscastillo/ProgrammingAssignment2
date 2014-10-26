## This Function calculates the inverse of a matrix


## This function receive a matrix and save it 

makeCacheMatrix <- function(x = matrix()) {
     
          matriz <<- x

}


## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x ) {

     y <- data.matrix(x)
     if (y == matriz) {
               inversa
     } else {          
          makeCacheMatrix(y)
          inversa <<- solve(matriz)    
     }    
}