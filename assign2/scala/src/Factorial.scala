import scala.annotation.tailrec

object Factorial {
  def factorial( n:Int ) : BigInt = {
    if(n < 0 ) 
      throw new IllegalArgumentException
      
    if(n == 0)
      1 
    else 
      n * factorial(n - 1) 
  }
  
 @tailrec def tailFactorial(n:Int, result:BigInt = 1) : BigInt = {
    if(n < 0) 
      throw new IllegalArgumentException 
  
    if(n == 0) 
      result 
    else 
      tailFactorial(n - 1, n * result)
  }
}