## Caching the Inverse of a Matrix:
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.

## The first function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  mat<-NULL
  set<-function(y){
  x<<-y
  mat<<-NULL
}
get<-function() x
setmat<-function(solve) mat<<- solve
getmat<-function() mat
list(set=set, get=get,
   setmat=setmat,
   getmat=getmat)
}

## The second function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above.
cacheSolve <- function(x=matrix(), ...) {
    mat<-x$getmat()
    if(!is.null(mat)){
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    mat<-solve(data)
    x$setmat(mat)
    mat
}
