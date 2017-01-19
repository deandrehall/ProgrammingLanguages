import random
target =  random.randint(1,100)
def makeGuess(numGuesses):
    choice = input("guess a number: ")

    if (int(choice) == target):
        print("Correct! it took you %s tries!" % str(numGuesses))
    elif (int(choice) < target):
        print("guess higher")
        makeGuess(numGuesses + 1)
    elif (int(choice) > target):
        print("guess lower")
        makeGuess(numGuesses + 1)

makeGuess(1)
