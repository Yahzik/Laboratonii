program MaxNonDecreasing;
var
  arr: array[1..100] of integer;
  n, i, max_len, current_len: integer;
begin
  write('Введите количество элементов: ');
  readln(n);
  
  writeln('Введите элементы массива:');
  for i := 1 to n do
    read(arr[i]);
  
  max_len := 1;
  current_len := 1;
  
  for i := 2 to n do
  begin
    if arr[i] >= arr[i-1] then
      current_len := curre1nt_len + 1
    else
    begin
      if current_len > max_len then
        max_len := current_len;
      current_len := 1;
    end;
  end;
  
  if current_len > max_len then
    max_len := current_len;
  
  writeln('Максимальная длина неубывающего участка: ', max_len);
end.