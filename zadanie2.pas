program kvartirki;
var
  kv, pod, etaj: integer;
begin
  write('Введите номер квартиры: ');
  readln(kv);
  pod := (kv - 1) div 36 + 1;     
  etaj := ((kv - 1) mod 36) div 4+1;  
  writeln('Подъезд: ', pod);
  writeln('Этаж: ', etaj);
end.