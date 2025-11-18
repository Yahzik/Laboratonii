program MatrixTask;
const
  N = 8;
type
  TMatrix = array[1..N, 1..N] of integer;
  TArray = array[1..N] of integer;
var
  matrix: TMatrix;
  result: TArray;
  i, j: integer;
begin
  Randomize;
  for i := 1 to N do
    for j := 1 to N do
      matrix[i, j] := Random(50) + 1;
  Writeln('Двумерный массив ', N, 'x', N, ':');
  for i := 1 to N do
  begin
    for j := 1 to N do
      Write(matrix[i, j]:4);
    Writeln;
  end;
  for i := 1 to N do
  begin
    var maxVal: integer;
    var countMax: integer;
    maxVal := matrix[i, 1];
    for j := 2 to N do
      if matrix[i, j] > maxVal then
        maxVal := matrix[i, j];
    countMax := 0;
    for j := 1 to N do
      if matrix[i, j] = maxVal then
        countMax := countMax + 1;
    if countMax = 1 then
      result[i] := 1
    else
      result[i] := -1;
  end;
  Writeln;
  Writeln('Результирующий массив:');
  for i := 1 to N do
    Write(result[i]:4);
  Writeln;
end.