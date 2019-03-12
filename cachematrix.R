## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
  #use function set to set the matrix to m
  #use function get to return the matrix
  #use function setinv to set the inverse matrix to inverse_matrix
  #use function getinv to return the inverse matrix
  #return a list of functions


makeCacheMatrix <- function(x = matrix()) {
 
        
        inverse_matrix<-null
        
        #use function set to set the matrix to m
        
        set<-function( matrix){
                m<<-matrix
                inverse_matrix<<-null
        
        }
        
        #use function get to return the matrix
        
        get<-function() {
                m
                }
        
        #use function setinv to set the inverse matrix to i
        
        setinv<-function(inverse){
                inverse_matrix<<-inverse
        }
        
        #use function getinv to return the inverse matrix
        
         getinv<-function(){
                inverse_matrix
        }
        
        #returning a list of functions
        list(set = set, get = get , setinv = setinv , getinv = getinv)
        
}


## Write a short comment describing this function
        #set the inverse to m_inv 
        #return inverse if set otherwise compute it
        #if m_inv is null then calculate the inverse of the matrix
        #set the inverse
        #return the inverse


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        #set the inverse to m_inv 
        m_inv <-x$getinv()
        
        
        #return inverse if set otherwise compute it
        if(!null(m_inv)){
                message("getting cached data")
                return(m_inv)
                }
        #if m_inv is null then calculate the inverse of the matrix
        matrix<-x$get()
        #calculatng its inverse
        m_inv<-solve(matrix)
        #set the inverse
        x$setinv(m_inv)
        #return the inverse
        m_inv
       
        
    }
