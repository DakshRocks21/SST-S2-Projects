cost = int(input("What's the cost ? : "))
people = int(input("How many people? : "))

cost = cost * 110/100 ## Service Charge 10%
cost = cost * 107/100 ## GST 7%

total_cost = cost / people 

print("Total Cost is with GST of 7 percent is , $",(round( total_cost, 2)))
