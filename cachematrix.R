## The code shown here is used for finding inverse of a matrix. 
## The initial portion allows users to input the values of the
## required matrix. The latter half checks if the calculation 
## for given matrix has been done earlier, to save time. If 
## not, it performs calculation and stores result in a variable
## for future reference. 

## This section of the code can obtain the value of a matrix,
## as well as display it. 

makeCacheMatrix <- function(x = matrix()) {
    m<-NULL
    set<-function(y){
      x<<-y
      m<<-NULL
    }
    get<-function() x
    setmatrix<-function(solve) m<<- solve
    getmatrix<-function() m
    list(set=set, get=get,
         setmatrix=setmatrix,
         getmatrix=getmatrix)
}

## This section of code checks if there is a stored value for
## inverse of given matrix. If not, it will perform the 
## calculation and cache the value in variable 'm'. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
    
}
