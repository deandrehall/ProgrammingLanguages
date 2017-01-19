defmodule FactorialTest do
    use ExUnit.Case

    test "CanaryTest" do
    	assert 1 == 1
    end

    test "Factorial of 0 is 1" do
	    assert Factorial.recursion(0) == 1
    end

    test "Factorial of 1 is 1" do
    	assert Factorial.recursion(1) == 1
    end

    test "Factorial of 3 is 6" do
    	assert Factorial.recursion(3) == 6
    end

    test "Factorial of 5 is 120" do
    	assert Factorial.recursion(5) == 120
    end

    test "Factorial of 10 is 3628800" do
        assert Factorial.recursion(10) == 3628800
    end

    test "Factorial of 50 is a large number" do
         assert Factorial.recursion(50) ==
         30414093201713378043612608166064768844377641568960512000000000000
    end

    test "Factorial of -1 is an illegal operation" do
	    try do
		    raise Factorial.recursion(-1)
	    catch 
	        "IllegalArgument" -> "Input is an illegal negative value"
	    end
    end

    test "Factorial of 100000 should not throw an error" do
        try do
           raise Factorial.recursion(100000)
        rescue
            _ -> "Expected no to catch no exception, but got one"
        end 
    end

    test "tailFactorial of 0 is 1" do
        assert Factorial.tailRecursion(0) == 1
    end

    test "tailFactorial of 1 is 1" do
        assert Factorial.tailRecursion(1) == 1
    end

    test "tailFactorial of 3 is 6" do
        assert Factorial.tailRecursion(3) == 6
    end

    test "tailFactorial of 5 is 120" do
        assert Factorial.tailRecursion(5) == 120
    end

    test "tailFactorial of 10 is 3628800" do
        assert Factorial.tailRecursion(10) == 3628800
    end
    
    test "tailFactorial of 50 is a large number" do
        assert Factorial.tailRecursion(50) == 
        30414093201713378043612608166064768844377641568960512000000000000
    end

    test "tailFactorial of -1 is an illegal operation" do
        try do
            raise Factorial.tailRecursion(-1)
        catch
            "IllegalArgument" -> "Input is an illegal negative value"
        end
    end

    test "tailFactorial of 100000 should not throw an error" do
        try do
           raise Factorial.tailRecursion(100000)
        rescue
            _ -> "Expected no to catch no exception, but got one"
        end
    end

end
