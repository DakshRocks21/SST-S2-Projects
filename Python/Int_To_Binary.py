bi = ""
de = int(input("DE? : "))
while de != 0:
    bi = str(de%2) + bi
    de = de // 2

print (bi)
