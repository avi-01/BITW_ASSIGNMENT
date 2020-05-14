# Taking predefined input -> MatA and MatB

MatA = [[3,4,6],
     [4,8,1],
     [0,5,3]]

MatB = [[2,3,4],
     [6,2,4],
     [1,5,2]]

MatC = [[0,0,0],
     [0,0,0],
     [0,0,0]]


for i in range(3):
    for j in range(3):
        for k in range(3):
            MatC[i][j] += MatA[i][k] * MatB[k][j]

print(MatC)
