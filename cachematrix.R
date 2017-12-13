
#Sunan Fatima 
#R Programming 
#Assignment 2 week 3 

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##PART 1 : create a matrix that can cache its inverse, you can't divide by a matrix 
#but you can multiply by its inverse to acheive the same thing (remember solving for 
#solving systems and engineering design in 3D)
#to get an inverse the rows=column in the matric square or else maybe no inverse 


makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
                                #create a empty inv object 
        set <- function(y) {
                                #set matrix
                x <<- y
                                #<<- can assign a y value to the x object 
                inv <<- NULL
                                #empty out the inv object 
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
                                #in the assignment prompt it used mean here 
                                #use inverse function, otherwise same set up
        getinverse <- function() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

##PART 2 : for the purpose of the assignment this assumes the matrix can be 
#inverted meaning its a square matrix. 

cacheSolve <- function(x, ...) {
        inv <- x$getinverse() 
                                #loads the inverse from previous function into inv 
        if(!is.null(inv)) {
                message("getting cached data.")
                return(inv)
                                #is.null this checks an expression for NULL
        }
        data <- x$get() 
                                #store the get into data object 
        inv <- solve(data)
                                # solve () , solves the equation (using matrices)
        x$setinverse(inv)
        inv
                                # set the inverse value (inv)
}


