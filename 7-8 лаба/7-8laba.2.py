s = input("Введите строку: ")

total_plus_minus = 0
zero_after = 0

for i in range(len(s)):
    if s[i] == '+' or s[i] == '-':
        total_plus_minus += 1
        if i + 1 < len(s) and s[i + 1] == '0':
            zero_after += 1

print(f"Общее количество '+' и '-': {total_plus_minus}")
print(f"Количество '+/-', после которых следует ноль: {zero_after}")