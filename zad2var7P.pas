program begatnia;
var
  A, X, d, t: real;
  a_days, b_days: integer;
begin
  write('A: ');
  readln(A);
  write('X: ');
  readln(X);
  d := A;
  a_days := 1;
  while d <= X do
  begin
    d := d * 1.1;
    a_days := a_days + 1;
  end;
  t := 0;
  d := A;
  b_days := 0;
  while t <= 100 do
  begin
    b_days := b_days + 1;
    t := t + d;
    d := d * 1.1;
  end;
  writeln('а) ', a_days, ' дней');
  writeln('б) ', b_days, ' дней');
end.