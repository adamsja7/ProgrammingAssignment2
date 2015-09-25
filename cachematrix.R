## The code will return a list with functions to 
##      --set a matrix
##      --get the matrix
##      --set the inverse of the matrix
##      --get the inverse of the matrix


## This will create a function called makeCacheMatrix()

makeCacheMatrix <- function(f = matrix()) {
##      --f is created as a square matrix that can be invertable

        inv = NULL
        
        set = finction(u) {
        
                f <<- u
                inv <<- NULL
##      --'<<-' is used to assign the values of these objects which are not in the current working environment
}

        get = function() f
        setinv = function(inverse) inv <<- inverse
        getinv = function() inv
        list(set=set, get=get, setinv=setinv, getinv=getinv)
##      -- will return a list whichi will 
##      --set a matrix
##      --get the matrix
##      --set the inverse of the matrix
##      --get the inverse of the matrix


##      --f will be the output of the makeCacheMatrix() function


cacheSolve <- function(f, ...) {
        ## Return a matrix that is the inverse of 'f'
        inv =  f$getinv()
  
  
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  ##  if the inverse has already been calculated it will return a message
  ##  stating it is getting the inverse from the cache
  ##  it will skip the computation
    
  }
  
  mat.data = f$get()
  inv = solve(mat.data, ...)
  ##  If the inverse has not been calculated, it will calculate the inverse
  
  f$setinv(inv)
  ##  sets the value of the inverese in teh cache from the setinv function
  
  return(inv)
  
  ## returns the inverse of the original matrix input to the makeCacheMatrix function
  

}
