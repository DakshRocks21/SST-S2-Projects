answer = 0
temp = 1

while temp > 0:
    print ("ONE OF THE NUMBER HAVE TO BE 0")
    f = int(input("Value for F? : "))
    v = int(input("Value for V? : "))
    e = int(input("Value for E? : "))
    if any([f==0, v==0, e==0]):
        if f == 0:
            f = 2 + e - v
            print("F = " , f)
            break
        elif v == 0:
            v = 2 - f + e
            print ("V =  ", v)
            break
        else:
            e = f + v - 2
            print ("E = ", e)
            break
            
        
    



