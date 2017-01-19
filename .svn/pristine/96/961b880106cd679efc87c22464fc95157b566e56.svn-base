RubyVM::InstructionSequence.compile_option = {
      tailcall_optimization: true,
      trace_instruction: false
    }

require 'test/unit'
require './src/factorial'

class UnitTests < Test::Unit::TestCase
    def test_CanaryTest
        assert(true)
    end
        
    def test_recursion_0
        assert(recursion(0) == 1)
    end
        
    def test_recursion_1
        assert(recursion(1) == 1)
    end
          
    def test_recursion_3
        assert(recursion(3) == 6)
    end
          
    def test_recursion_5
        assert(recursion(5) == 120)
    end
          
    def test_recursion_10
        assert(recursion(10) == 3628800)
    end
          
    def test_recursion_50
        assert(recursion(50) ==
        30414093201713378043612608166064768844377641568960512000000000000)
    end

    def test_recursion_neg1
        begin
            recursion(-1)
        rescue => illegalVariable
        end
    end

    def test_recursion_bigVal
        begin
            recursion(100000)
        rescue SystemStackError => e
        end
    end

    def test_tailRecursion_0
        assert(tailRecursion(0) == 1)
    end
                           
    def test_tailRecursion_1
        assert(tailRecursion(1) == 1)
    end
          
    def test_tailRecursion_3
        assert(tailRecursion(3) == 6)
    end
          
    def test_tailRecursion_5
        assert(tailRecursion(5) == 120)
    end
          
    def test_tailRecursion_10
        assert(tailRecursion(10) == 3628800)
    end
          
    def test_tailRecursion_50
        assert(tailRecursion(50) ==
        30414093201713378043612608166064768844377641568960512000000000000)
    end

    def test_tailRecursion_neg1 
        begin
            tailRecursion(-1) 
        rescue => illegalVariable
        end
    end
                               

    def test_tailRecursion_bigVal
       assert_nothing_raised do
            tailRecursion(100000)
        end
    end
    
end
