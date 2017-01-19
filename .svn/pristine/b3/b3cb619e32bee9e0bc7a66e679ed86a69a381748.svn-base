import random

def makeGuess(randNum, numGuesses):
    choice = input("guess a number: ")

    if (choice == randNum):
        print("Correct! it took you %s tries!") % str(numGuesses+1)
    elif (choice < randNum):
        print("guess higher")
        makeGuess(randNum, numGuesses + 1)
    elif (choice > randNum):
        print("guess lower")
        makeGuess(randNum, numGuesses + 1)

play = (lambda _ : makeGuess( random.randint(1,100), 0 ) )

play(1)
