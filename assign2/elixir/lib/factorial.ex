defmodule Factorial do
    
	 def recursion(num) do
		cond do
            num < 0 ->
                 throw("IllegalArgument") 
	        num == 0 ->
                 1
            true ->
                 num * recursion(num - 1)    
			end
	 end


     def tailRecursion(num) do
        cond do
            num < 0 ->
                 throw("IllegalArgument")
            true ->
                 tailRecursion(num, 1)
        end
     end

     def tailRecursion(0, accumulator) do
        accumulator
     end

     def tailRecursion(num, accumulator) do
        tailRecursion(num - 1, accumulator * num)
     end
    
end

