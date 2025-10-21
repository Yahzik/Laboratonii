arr = []
print("Введите 20 чисел:")
for i in range(20):
    num = int(input(f"Число {i+1}: "))
    arr.append(num)

print("Исходный массив:", arr)

for i in range(len(arr)-1, -1, -1):
    if arr[i] > 0:
        arr.pop(i)
        print("После удаления последнего положительного:", arr)
        break
else:
    print("Положительных элементов нет")

if arr:
    max_val = max(arr)
    max_index = arr.index(max_val)
    arr.pop(max_index)
    print("После удаления наибольшего элемента:", arr)
else:
    print("Массив пуст")