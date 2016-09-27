## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##  makeCachematrix function takes input a matrix and will cache matrix and its inverse in list which will be returned.
##  Their are Four functions in makeCacheMatrix setmatrix(),getmatrix(),setinVerse() and getinverse().
##  setmatrix() & setinverse() are used to set values of matrix and its inverse respectively.
##  getmatrix() & getinverse() are used to get values of matrix and its inverse respectively.

makeCacheMatrix<-function(x=matrix()){
  
  inverse<-NULL
  
  setmatrix<-function(n){
    x <<- n
    inverse <<- NULL
  }
  
  getmatrix<-function()x
  
  setinverse<-function(inv)inverse<<-inv
  
  getinverse<-function()inverse
  
  list(setmatrix=setmatrix,getmatrix=getmatrix,setinverse=setinverse,getinverse=getinverse)
}




## Write a short comment describing this function
## cacheSolve() try to get inverse using getinverse() and assign the value to inv variable
## If inv variable is not null than a message will be printed and inv will be returned
## If inv is null than using getmatrix() matrix is obtained and using solve() function inverse is calculated.
## Inverse calculated is returned and is set in the cache using setinverse() function          
          
cacheSolve<-function(x,...){
  inv<-x$getinverse()
  if(!is.null(inv)){
    message("Getting Inverse from cached data")
    return(inv)
  }
  matrix<-x$getmatrix()
  inv<-solve(matrix,...)
  x$setinverse(inv)
  inv
}
