program PrintChars;
var
  text: string;

procedure PrintChars(s: string);
var
  len, middleIndex: integer;
begin
  len := Length(s);
  
  if len = 0 then
  begin
    writeln('Строка пустая');
    exit;
  end;
  
  writeln('Первый символ: ', s[1]);
  writeln('Последний символ: ', s[len]);
  
  if len > 2 then
  begin
    middleIndex := len div 2;
    if len mod 2 = 1 then
      writeln('Средний символ: ', s[middleIndex + 1])
    else
      writeln('Средний символ: ', s[middleIndex], ' (или ', s[middleIndex + 1], ')');
  end
  else
    writeln('Среднего символа нет');
end;

begin
  write('Введите строку: ');
  readln(text);
  PrintChars(text);
  readln;
end.