program ArrayOperations;
var
  arr: array[1..50] of integer;
  i, n, lastPosIndex, maxIndex, maxVal: integer;
begin
  n := 20;
  writeln('Введите 20 чисел:');
  for i := 1 to n do
  begin
    write('Число ', i, ': ');
    readln(arr[i]);
  end;
  
  write('Исходный массив: ');
  for i := 1 to n do
    write(arr[i], ' ');
  writeln;
  
  lastPosIndex := 0;
  for i := n downto 1 do
  begin
    if arr[i] > 0 then
    begin
      lastPosIndex := i;
      break;
    end;
  end;
  
  if lastPosIndex > 0 then
  begin
    for i := lastPosIndex to n-1 do
      arr[i] := arr[i+1];
    n := n - 1;
    write('После удаления последнего положительного: ');
    for i := 1 to n do
      write(arr[i], ' ');
    writeln;
  end
  else
    writeln('Положительных элементов нет');
  
  if n > 0 then
  begin
    maxVal := arr[1];
    maxIndex := 1;
    for i := 2 to n do
    begin
      if arr[i] > maxVal then
      begin
        maxVal := arr[i];
        maxIndex := i;
      end;
    end;
    
    for i := maxIndex to n-1 do
      arr[i] := arr[i+1];
    n := n - 1;
    
    write('После удаления наибольшего элемента: ');
    for i := 1 to n do
      write(arr[i], ' ');
    writeln;
  end
  else
    writeln('Массив пуст');
end.