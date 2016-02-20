## Put comments here that give an overall description of what your
## functions do 
## 1st function creates a list of four named fucntions to store the inverse of a matrix (well actually it will store anything )
## the second utilises the first to either compute the inverse and return it , or if it has already been computed, return it from the cache 
## Write a short comment describing this function


## makeCacheMatrix takes a matrix and establishes 4 functions to be used to get, set, set the inverse and 
## get the inverse of the matrix. The inverse will be stored in the object by cacheSolve 
makeCacheMatrix <- function (x = matrix()) {
  matinv <- NULL
  
  set <- function(y) {
    mat <<- y
    matinv <<- NULL
  }
  get <- function() x
  
  setinv <- function(inv) matinv <<- inv
  getinv <- function() matinv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}

## Write a short comment describing this function
## Takes an object created by makeCacheMatrix and retrieves 
## the inverse if already stored in the object or, if not,  computes it, stores it and then returns it 

  cacheSolve <- function(x, ...) {
    minv <- x$getinv()
    if(!is.null(minv)) {
      message("getting cached data")
      return(minv)
    }
    mtarget <- x$get()
    minv <- solve(mtarget)
    x$setinv(minv)
    minv
  }        ## Return a matrix that is the inverse of 'x'
}
