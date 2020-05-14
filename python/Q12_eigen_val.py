import numpy as np

n = int(input("Dimension of square matrix"))
M = []
X = []
print("Enter the elements of the matrix (one by one): ")

for i in range(n):
    row = [0]*n
    M.append(row)

for i in range(n):
    for j in range(n):
        M[i][j] = int(input())

eigenvalues = np.linalg.eigvals(M)

print(eigenvalues)








