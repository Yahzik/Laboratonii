numbers = []

print("Введите 20 целых чисел:")
for i in range(20):
    num = int(input(f"Число {i+1}: "))
    numbers.append(num)

print("\nИсходный массив:")
print(numbers)

for i in range(len(numbers)):
    if numbers[i] > 0:
        numbers[i] = 0
    elif numbers[i] < 0:
        numbers[i] = numbers[i] ** 2

print("\nПреобразованный массив:")
print(numbers)