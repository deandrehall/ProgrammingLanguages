defmodule Fibonacci do

    def fib(num) do
        fib(num, 1, 0)
    end

    def fib(0, _, result) do
        result
    end

    def fib(num, nextNum, result) do
        fib(num - 1, nextNum + result, nextNum)
    end

end

IO.puts Fibonacci.fib(3)
