score = int(input("Enter your scores: "))
total = int(input("Total : "))

mark = (score / total) * 100
print ("Test Score = ", str(mark) + "%")
    
if score >= 70:
    print("Distinction")
elif score >=60:
    print("Credit")
elif score >=50:
    print("Passed")
else:
    print("Failed")
