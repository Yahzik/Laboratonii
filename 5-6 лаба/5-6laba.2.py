arr = list(map(int, input("Введите элементы массива через пробел: ").split()))

print("Исходный массив:", arr)

max_length = 1
current_length = 1

for i in range(1, len(arr)):
    if arr[i] >= arr[i-1]:
        current_length += 1
    else:
        if current_length > max_length:
            max_length = current_length
        current_length = 1
if current_length > max_length:
    max_length = current_length

print("Максимальная длина неубывающего участка:", max_length)