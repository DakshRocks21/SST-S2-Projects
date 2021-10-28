scoreList = []
total = 0 
maxLengthList = int(input("Whats number"))
while len(scoreList) < maxLengthList:
    item = int(input("Add Score: "))
    scoreList.append(item)
    total = total + item
print ("Thats the scores")
print (scoreList)
print("--------Results---------")
print ("Average = " + str(total /maxLengthList ))
print ("Max = " + str(max(scoreList)))
print ("Min = " + str(min(scoreList)))

