def print_chars(s):
    if len(s) == 0:
        print("Строка пустая")
        return

    print(f"Первый символ: {s[0]}")
    print(f"Последний символ: {s[-1]}")

    if len(s) > 2:
        middle_index = len(s) // 2
        print(f"Средний символ: {s[middle_index]}")
    else:
        print("Среднего символа нет")

text = input("Введите строку: ")
print_chars(text)