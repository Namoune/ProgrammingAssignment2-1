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
