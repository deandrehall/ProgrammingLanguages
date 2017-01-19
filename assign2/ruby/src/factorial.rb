     def recursion(num)
        raise illegalVaribale if num < 0
                
        if num <= 1
            1
        else
            num * recursion(num - 1)
        end
        
    end
    
    def tailRecursion(num, accumulator = 1)
        raise illegalVaribale if num < 0

        if num <= 1
            accumulator
        else
            tailRecursion(num - 1, num * accumulator)
        end
    end

