program RemoveExtraSpaces;
var
  text, result: string;
  i: integer;

begin
  write('Введите строку: ');
  readln(text);
  
  result := '';
  
  for i := 1 to Length(text) do
  begin
    if text[i] <> ' ' then
    begin
      result := result + text[i]
    end
    else if (Length(result) > 0) and (result[Length(result)] <> ' ') then
    begin
      result := result + ' ';
    end;
  end;
  
  if (Length(result) > 0) and (result[Length(result)] = ' ') then
    Delete(result, Length(result), 1);
  
  writeln('Результат: ''', result, '''');
end.