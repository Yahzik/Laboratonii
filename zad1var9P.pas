program zad1var9p;
var
  x, otvet: integer;
function matan(x: integer): integer;
begin
  matan := x*x*x - 3*x*x + 4*x - 2;
end;
begin
  writeln('Вычисление многочлена x³ - 3x² + 4x - 2');
  for x := 0 to 5 do
  begin
    otvet := matan(x);
    writeln('При x = ', x, ': ', otvet);
  end;
end.