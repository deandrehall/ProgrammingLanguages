import org.scalatest.FunSuite
import org.scalatest.Matchers._
import scala.annotation.tailrec
class FactorialTest extends FunSuite{
	
	test("Canary test"){
		assert(true)
	}
 
	test("Factorial of 0 is 1")
	{
	  assert(Factorial.factorial(0) == 1)
	}
	
	test("Factorial of 1 is 1")
	{
	  assert(Factorial.factorial(1) == 1)
	}
	
	test("Factorial of 3 is 6")
	{
	  assert(Factorial.factorial(3) == 6)
	}
	
	test("Factorial of 5 is 120")
	{
	  assert(Factorial.factorial(5) == 120)
	}
	
	test("Factorial of 10 is 3628800")
	{
	  assert(Factorial.factorial(10) == 3628800)
	}

	test("Factorial of 50 is 30414093201713378043612608166064768844377641568960512000000000000")
	{
	  assert(Factorial.factorial(50) == BigInt("30414093201713378043612608166064768844377641568960512000000000000"))
  }
	
	test("Factorial of large number is a stack overflow")
	{
    try {
      Factorial.factorial(100000)
      fail("expected exception for stack overflow.")
    }
    catch {
     case _: StackOverflowError => 
    }
	}
	
	test("Factorial of -1 is invalid number")
	{
    try {
      Factorial.factorial(-1)
      fail("Invalid Number")
    }
    catch {
     case _: IllegalArgumentException => 
    }
	}
	
		test("tailFactorial of 0 is 1")
	{
	  assert(Factorial.tailFactorial(0) == 1)
	}
	
	test("tailFactorial of 1 is 1")
	{
	  assert(Factorial.tailFactorial(1) == 1)
	}
	
	test("tailFactorial of 3 is 6")
	{
	  assert(Factorial.tailFactorial(3) == 6)
	}
	
	test("tailFactorial of 5 is 120")
	{
	  assert(Factorial.tailFactorial(5) == 120)
	}
	
	test("tailFactorial of 10 is 3628800")
	{
	  assert(Factorial.tailFactorial(10) == 3628800)
	}
	
	test("tailFactorial of 50 is 30414093201713378043612608166064768844377641568960512000000000000")
	{
	  assert(Factorial.tailFactorial(50) == BigInt("30414093201713378043612608166064768844377641568960512000000000000"))
	}
	
	test("tailFactorial of -1 is invalid number")
	{
     try {
      Factorial.tailFactorial(-1)
      fail("Invalid Number")
     }
     catch {
      case _: IllegalArgumentException => 
     }
  }
	                         
	test("tailFactorial of 100000 should have no exception")
	{
	  noException should be thrownBy
	  {
	    Factorial.tailFactorial(100000)
	  }
  }
}