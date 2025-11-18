program ArrayOperations;
const
  N = 10;
type
  TArray = array[1..N] of integer;
procedure FillArray(var arr: TArray);
var
  i: integer;
begin
  Randomize;
  for i := 1 to N do
    arr[i] := Random(201) - 100;
end;
procedure PrintArray(arr: TArray);
var
  i: integer;
begin
  Write('Массив: ');
  for i := 1 to N do
    Write(arr[i], ' ');
  Writeln;
end;
procedure FindMaxElement(arr: TArray; var maxValue, maxIndex: integer);
var
  i: integer;
begin
  maxValue := arr[1];
  maxIndex := 1;
  for i := 2 to N do
  begin
    if arr[i] > maxValue then
    begin
      maxValue := arr[i];
      maxIndex := i;
    end;
  end;
end;
procedure FindSpecialElements(arr: TArray; var minAbsValue, minAbsIndex, maxNegValue, maxNegIndex: integer);
var
  i: integer;
  foundNegative: boolean;
begin
  minAbsValue := Abs(arr[1]);
  minAbsIndex := 1;
  foundNegative := false;
  maxNegValue := 0;
  maxNegIndex := -1;
  for i := 1 to N do
  begin
    if arr[i] < 0 then
    begin
      maxNegValue := arr[i];
      maxNegIndex := i;
      foundNegative := true;
      break;
    end;
  end;
  for i := 1 to N do
  begin
    if Abs(arr[i]) < minAbsValue then
    begin
      minAbsValue := Abs(arr[i]);
      minAbsIndex := i;
    end;
    if (arr[i] < 0) and (arr[i] > maxNegValue) then
    begin
      maxNegValue := arr[i];
      maxNegIndex := i;
      foundNegative := true;
    end;
  end;
  if not foundNegative then
  begin
    maxNegValue := 0;
    maxNegIndex := -1;
  end;
end;
var
  arr: TArray;
  maxValue, maxIndex: integer;
  minAbsValue, minAbsIndex, maxNegValue, maxNegIndex: integer;
begin
  FillArray(arr);
  PrintArray(arr);
  Writeln;
  FindMaxElement(arr, maxValue, maxIndex);
  Writeln('Максимальный элемент: ', maxValue, ' (индекс: ', maxIndex, ')');
  Writeln;
  FindSpecialElements(arr, minAbsValue, minAbsIndex, maxNegValue, maxNegIndex);
  Writeln('Минимальный по модулю элемент: ', arr[minAbsIndex], ' (индекс: ', minAbsIndex, ', модуль: ', minAbsValue, ')');
  if maxNegIndex <> -1 then
    Writeln('Максимальный отрицательный элемент: ', maxNegValue, ' (индекс: ', maxNegIndex, ')')
  else
    Writeln('Отрицательных элементов в массиве нет');
end.