print('Введите координаты 1 прямой (x1 y1 x2 y2): ', end='')
x1, y1, x2, y2 = map(float, input().split())
print('Введите координаты 2 прямой (x3 y3 x4 y4): ', end='')
x3, y3, x4, y4 = map(float, input().split())
d = (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4)
if abs(d) < 0.0001:
    print('Прямые параллельны')
else:
    x = ((x1*y2 - y1*x2)*(x3 - x4) - (x1 - x2)*(x3*y4 - y3*x4)) / d
    y = ((x1*y2 - y1*x2)*(y3 - y4) - (y1 - y2)*(x3*y4 - y3*x4)) / d
    print(f'Точка пересечения: ({x:.2f}; {y:.2f})')