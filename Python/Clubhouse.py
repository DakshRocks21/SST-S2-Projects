
entering = str(input("Are you a Member ?:  "))

entering  = entering.lower()


if entering == "yes" or entering == "y" :
         print("Welcome to SSTea Party!")
else:
        ask_age = int(input("Whats your Age: "))
        if ask_age > 16:
                print("This clubhouse is for members only. Please head to front counter to sign up for membership.")
        else:
                print("Sorry, you are underage to enter this clubhouse.")


