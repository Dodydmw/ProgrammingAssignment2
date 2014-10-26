

makeCacheMatrix <- function(x = matrix()) {
  n<-NULL
  set<-function(y){
  x<<-y
  n<<-NULL
}
get<-function() x
setmatrix<-function(solve) n<<- solve
getmatrix<-function() n
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

cacheSolve <- function(x=matrix(), ...) {
    n<-x$getmatrix()
    if(!is.null(n)){
      message("getting cached data")
      return(n)
    }
    matrix<-x$get()
    n<-solve(matrix, ...)
    x$setmatrix(n)
    n
}
 