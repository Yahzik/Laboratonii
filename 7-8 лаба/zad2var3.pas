program CountPlusMinus;
var
  s: string;
  total_plus_minus, zero_after, i: integer;

begin
  write('Введите строку: ');
  readln(s);
  
  total_plus_minus := 0;
  zero_after := 0;
  
  for i := 1 to Length(s) do
  begin
    if (s[i] = '+') or (s[i] = '-') then
    begin
      total_plus_minus := total_plus_minus + 1;
      if (i < Length(s)) and (s[i + 1] = '0') then
        zero_after := zero_after + 1;
    end;
  end;
  
  writeln('Общее количество плюсов и минусов: ', total_plus_minus);
  writeln('Количество плюсов и минусов, после которых следует ноль: ', zero_after);
end.