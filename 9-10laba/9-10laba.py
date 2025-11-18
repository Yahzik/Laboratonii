import random


def find_max_element(arr):
    max_value = arr[0]
    max_index = 0

    for i in range(1, len(arr)):
        if arr[i] > max_value:
            max_value = arr[i]
            max_index = i

    return max_value, max_index


def find_special_elements(arr):

    min_abs_value = abs(arr[0])
    min_abs_index = 0

    max_neg_value = None
    max_neg_index = -1

    for i in range(len(arr)):
        if abs(arr[i]) < min_abs_value:
            min_abs_value = abs(arr[i])
            min_abs_index = i
        if arr[i] < 0:
            if max_neg_value is None or arr[i] > max_neg_value:
                max_neg_value = arr[i]
                max_neg_index = i
    return min_abs_value, min_abs_index, max_neg_value, max_neg_index


def fill_array(size=10, min_val=-100, max_val=100):
    return [random.randint(min_val, max_val) for _ in range(size)]


def print_array(arr):
    print(f"Массив: {arr}")

if __name__ == "__main__":
    arr = fill_array(10)
    print_array(arr)
    print()
 
    max_value, max_index = find_max_element(arr)
    print(f"Максимальный элемент: {max_value} (индекс: {max_index})")
    print()
    min_abs_value, min_abs_index, max_neg_value, max_neg_index = find_special_elements(arr)

    print(f"Минимальный по модулю элемент: {arr[min_abs_index]} (индекс: {min_abs_index}, модуль: {min_abs_value})")

    if max_neg_index != -1:
        print(f"Максимальный отрицательный элемент: {max_neg_value} (индекс: {max_neg_index})")
    else:
        print("Отрицательных элементов в массиве нет")