## Put comments here that give an overall description of what your
## functions do

## comment describing function 'makeCacheMatrix'
## First the function creates an object 'InversedMatrix', which is of the same number of columns and rows 
## as the matrix. It is stored in the main environment
## Then it prints information that it created 'InversedMatrix'

makeCacheMatrix <- function(x = matrix()) {
  InversedMatrix <<- matrix(data = NA, nrow = nrow(x) , ncol = ncol(x), byrow = FALSE, dimnames = NULL)
  return(message("Created object 'InversedMatrix', which is visible outside"))
}


## comment describing function 'cacheSolve'
## 1) Function checks if there is an object 'InversedMatrix', and if it exists it checks wheter in the first place 
## of this matrix is NA or not. 
## If the 'InversedMatrix' is present and its element [1,1] is not an NA, then the function returnes cached data
## Otherwise the function calculates inverse of the matrix (by means of function 'solve') and returns it.

cacheSolve <- function(x, ...) {
  if (is.matrix(InversedMatrix)&(!is.na(InversedMatrix[1,1]))){
    message("getting cached data")
    #tu powinna być instrukcja, która zapisuje odwróconą matrycę z cache'u
    y <- InversedMatrix 
    return(y)
  }
  else { y<-solve(a=x)
         InversedMatrix <<- y
         return(y)}
}
