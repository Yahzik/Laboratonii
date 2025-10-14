program Zavod;
var
  n, i, maxIndex: integer;
  power, total, average, maxPower: real;
  powers: array of real;
begin
  write('Количество предприятий: ');
  readln(n);
  SetLength(powers, n);
  total := 0;
  maxPower := 0;
  maxIndex := 1;
  for i := 0 to n-1 do
  begin
    write('Мощность предприятия ', i+1, ': ');
    readln(power);
    powers[i] := power;
    total := total + power;
    if power > maxPower then
    begin
      maxPower := power;
      maxIndex := i + 1;
    end;
  end;
  average := total / n;
  writeln('Общая мощность: ', total:0:2);
  writeln('Средняя мощность: ', average:0:2);
  writeln('Предприятие с наибольшей мощностью: №', maxIndex);
end.