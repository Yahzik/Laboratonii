def remove_extra_spaces(text):
    result = []
    for char in text:
        if char != ' ':
            result.append(char)
        elif result and result[-1] != ' ':
            result.append(' ')

    if result and result[0] == ' ':
        result = result[1:]

    return ''.join(result)

text = input("Введите строку: ")
result = remove_extra_spaces(text)
print(f"Результат: '{result}'")