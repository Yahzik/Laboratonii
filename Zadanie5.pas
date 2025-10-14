program chess;
var
  cord: string;
  letter: char;
  digit: integer;
  letter_num: integer;
begin
  write('Введите координату клетки (например, A1): ');
  readln(cord);
  letter := upcase(cord[1]);
  digit := ord(cord[2]) - ord('0');
  letter_num := ord(letter) - ord('A') + 1;
  if (letter_num + digit) mod 2 = 0 then
    writeln('BLACK')
  else
    writeln('WHITE');
end.