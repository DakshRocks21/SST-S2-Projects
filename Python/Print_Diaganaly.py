from __future__ import print_function

word = 'JustATest'

for i in range(len(word)):
    for j in range(len(word)):
        if i == j:
            print(word[i], end="")
        else:
            print(' ', end="")
    print()
