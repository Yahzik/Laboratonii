program BUSHIZM;
var x1, y1, x2, y2, x3, y3, x4, y4, x, y, d: real;
begin
  write('Введите координаты 1 прямой (x1 y1 x2 y2): ');
  read(x1, y1, x2, y2);
  write('Введите координаты 2 прямой (x3 y3 x4 y4): ');
  read(x3, y3, x4, y4);
  d := (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4);
  if abs(d) < 0.0001 then
    write('Прямые параллельны')
  else
  begin
    x := ((x1*y2 - y1*x2)*(x3 - x4) - (x1 - x2)*(x3*y4 - y3*x4)) / d;
    y := ((x1*y2 - y1*x2)*(y3 - y4) - (y1 - y2)*(x3*y4 - y3*x4)) / d;
    write('Точка пересечения: (', x:0:2, '; ', y:0:2, ')');
  end;
end.