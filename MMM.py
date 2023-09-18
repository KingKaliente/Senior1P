import random

i = 0
c = 0
p = 0
#values to track^^


ComCh = ["rock", "paper", "scissors", "lizard", "spock"]
##computers choices^^

#place holdervv
comp = ""
playerC= ""


##shuffle/computer's turnvv
def compturn():
    random.shuffle(ComCh)
    print(ComCh)
    comp = ComCh[0]
    return comp


##gamevv
def playgame(num):
    global i
    global p
    global c
    global comp
    global playerC
   
    while num > i:
        playerC = input("what do you choose? rock, paper, scissors, lizard, or spock (no caps and typing a random word or it has a cap it will be a lizard)")
        random.shuffle(ComCh)
        print(ComCh)
        comp = ComCh[0]
       
        if playerC == "paper":
            if comp == "rock" or comp == "spock":
                print("You win")
                i += 1
                p += 1
            elif comp == "scissors" or comp == "lizard":
                print("Computer win")
                i += 1
                c += 1
            else:
                print ("Draw")
                i+= 1
               
        elif playerC == "scissors":
            if comp == "rock" or comp == "spock":
                print("Computer win")
                i += 1
                c += 1
            elif comp == "paper" or comp == "lizard":
                print ("you win")
                i += 1
                p += 1
            else:
                print("Draw")
                i += 1
           
        elif playerC == "rock":
            if comp == "scissors" or comp == "lizard":
                print("You wins")
                i += 1
                p += 1
            elif comp == "paper" or comp == "spock":
                print ("Computer wins")
                i += 1
                c += 1
            else:
                print("Draw")
                i += 1
               
        elif playerC == "spock":
            if comp == "rock" or comp == "scissors":
                print("You win")
                i += 1
                p += 1
            elif comp == "paper" or comp == "lizard":
                print("Computer wins")
                i += 1
                c += 1
            else:
                print ("Draw")
                i += 1
               
        else:
            if comp == "rock" or comp == "scissors":
                print("Computer win")
                i += 1
                c += 1
            elif comp == "paper" or comp == "spock":
                print("You wins")
                i += 1
                p += 1
            else:
                print ("Draw")
                i += 1
               
        print("Player's wins",p , "computer's wins", c, "games left", num -i)
    if c > p:
        print("computer was better")
    elif p > c:
        print("You are bette than computer")
    else:
        print("What are that chances? Draw")
               

#calling the gamevv
playgame(int(input("enter the number of rounds you would like to play")))
