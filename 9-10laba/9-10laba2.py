import random
matrix = [[random.randint(1, 50) for _ in range(8)] for _ in range(8)]
print("Двумерный массив 8x8:")
for row in matrix:
    print(row)
result = []
for i in range(8):
    max_val = max(matrix[i])
    count_max = matrix[i].count(max_val)
    if count_max == 1:
        result.append(1)
    else:
        result.append(-1)
print("\nРезультирующий массив:")
print(result)