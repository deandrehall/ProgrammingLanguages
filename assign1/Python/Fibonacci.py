import sys
from functools import reduce

def fibonacci_recursive(position):

    if position == 1:
        return [1]

    if position == 2:
        return [1, 1]
    else:
        series = fibonacci_recursive(position - 1)
        return series + [series[-1] + series[-2]]

def fibonacci_immutable(position):

    if position == 1:
        return [1]

    next_series = lambda series, _: series + [series[-1] + series[-2]]
    return reduce(next_series, range(position - 2), [1, 1])

def fibonacci_mutable(position):

    series = []

    if position >= 1:
        series.append(1)

    if position >= 2:
        series.append(1)

    for i in range(2, position):
        series.append(series[-1] + series[-2])
    return series

position = int(sys.argv[1])

print("Fibonacci sequence for position {} with the {} function.".format(position, "recursive"))
print(fibonacci_recursive(position))

print("Fibonacci sequence for position {} with the {} function.".format(position, "Immutable"))
print(fibonacci_immutable(position))

print("Fibonacci sequence for position {} with the {} function.".format(position, "Mutable"))
print(fibonacci_mutable(position))
