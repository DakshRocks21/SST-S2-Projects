from random import randint

t = ["Rock", "Paper", "Scissors"]
total = input("How many times: ")
try:
    total = int(total)
except:
    print("Please enter a number")
    break
times = 0

computer = t[randint(0,2)]
total_points = 0


while times < total:
    player = input("Rock, Paper, Scissors? : ")
    if player == computer:
        print("Tie!")
        times = times + 1
    elif player == "Rock":
        if computer == "Paper":
            print("You lose!", computer, "covers", player)
            times = times + 1
        else:
            print("You win!", player, "smashes", computer)
            times = times + 1
    elif player == "Paper":
        if computer == "Scissors":
            print("You lose!", computer, "cut", player)
            times = times + 1
        else:
            print("You win!", player, "covers", computer)
            times = times + 1
    elif player == "Scissors":
        if computer == "Rock":
            print("You lose...", computer, "smashes", player)
            times = times + 1
        else:
            print("You win!", player, "cut", computer)
            times = times + 1
    else:
        print("That's not a valid play. Check your spelling!")

    computer = t[randint(0,2)]


print("game over")
