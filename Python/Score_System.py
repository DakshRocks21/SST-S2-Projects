import sys
students = {}

polling_active = int(input("Whats N?: "))
times = 1
while times <= polling_active:
    name = input("enter your name: ")
    score = int(input("enter your score: "))
    
    students[name] = score
    times = times + 1

print ("-------RESULT-------")
totalScore = 0
lowestScore = sys.maxsize 
lowestScoreStudentName = []
maximumScore = -sys.maxsize - 1
maximumScoreStudentName = []

for name, score in students.items():
    totalScore = totalScore + score
    print(name, "your score is: ", score )
    if lowestScore > score:
        lowestScore = score
        lowestScoreStudentName = []
        lowestScoreStudentName.append(name)
    elif lowestScore == score:
        
        lowestScoreStudentName.append(name)
        
    if maximumScore < score:
        maximumScore = score
        maximumScoreStudentName = []
        maximumScoreStudentName.append(name)
    elif maximumScore == score:
        maximumScoreStudentName.append(name)
    
total_sum = sum(list(students.values()))
average_sum = totalScore/len(students) 

print("Average score : " + str(average_sum))
print("Lowest Score holder students name: " + str(lowestScoreStudentName) +(",  Score: ") + str(lowestScore))
print("Highest score holder students name: " + str(maximumScoreStudentName) + (", Score: ") + str(maximumScore))
