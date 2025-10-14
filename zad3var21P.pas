program sredrost;
var
  n, i, boys, girls: integer;
  gender: char;
  height, boysSum, girlsSum: real;
  boysHeights, girlsHeights: array of real;
begin
  write('Введите количество учеников в классе: ');
  readln(n);
  SetLength(boysHeights, n);
  SetLength(girlsHeights, n);
  boys := 0;
  girls := 0;
  boysSum := 0;
  girlsSum := 0;
  for i := 1 to n do
  begin
    write('Ученик ', i, ': Введите пол (м/ж): ');
    readln(gender);
    write('Ученик ', i, ': Введите рост (см): ');
    readln(height);
    if (gender = 'м') or (gender = 'М') then
    begin
      boysHeights[boys] := height;
      boysSum := boysSum + height;
      boys := boys + 1;
    end
    else if (gender = 'ж') or (gender = 'Ж') then
    begin
      girlsHeights[girls] := height;
      girlsSum := girlsSum + height;
      girls := girls + 1;
    end
    else
    begin
      writeln('Неверный ввод пола! Используйте "м" или "ж"');
    end;
  end;
  writeln;
  writeln('========================================');
  writeln('Количество мальчиков: ', boys);
  writeln('Количество девочек: ', girls);
  if boys > 0 then
  begin
    writeln('Средний рост мальчиков: ', (boysSum / boys):0:1, ' см');
  end
  else
  begin
    writeln('Нет данных о мальчиках');
  end;
  if girls > 0 then
  begin
    writeln('Средний рост девочек: ', (girlsSum / girls):0:1, ' см');
  end
  else
  begin
    writeln('Нет данных о девочках');
  end;
end.