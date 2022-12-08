Uses Crt;

var
  x, b, a, h, s, sy: real;
  z, n: integer;

function f(x: real): real;
begin
  f := 2 * power(x, 3) + 1 * x + 18;
end;

function f1(x: real): real;
begin
  f1 := 0.5 * power(x, 4) + 2 * sqr(x) - 2 * x;
end;

procedure proc0;
var
  m: string;
begin
  clrscr;
  m := 'сама формула f:=2*x**3 + 1*x+18';
  writeln(m, '. Считаем площадь по этой криволинейной');
  readkey;
end;

procedure proc1;
var
  ii: integer;
begin
  clrScr;
  h := (b - a) / n;
  x := a + h / 2;
  for ii := 0 to n - 1 do
  begin
    s += f(x);
    x += h;
  end;
  s *= h;
  writeln('примерная площадь:', s:0:2);
  readkey;
end;

procedure proc2;
begin
  clrscr;
  writeln('введите абн:');
  read(a, b, n);
  readkey;
end;

procedure proc3;
var
  ii: integer;
begin
  clrScr;
  h := (b - a) / n;
  x := a + h / 2;
  for ii := 0 to n - 1 do
  begin
    s += f(x);
    x += h;
  end;
  sy := f1(b) - f1(a);
  writeln('точная площая:', sy:0:2);
  readkey;
end;

procedure proc4;
var
  ii: integer;
begin
  h := 0;
  x := 0;
  s := 0;
  sy := 0;
  clrscr;
  h := (b - a) / n;
  x := a + h / 2;
  for ii := 0 to n - 1 do
  begin
    s += f(x);
    x += h;
  end;
  s *= h;
  sy := f1(b) - f1(a);
  writeln('погрешность:', (s - sy):0:2);
  readkey;
end;

begin
  repeat
    ClrScr;
    writeln('формулировка - 1');
    WRITEln('ввод абн - 2');
    WriteLn('приблеженное - 3');
    writeln('точное - 4');
    writeln('погрешность - 5');
    WriteLn('Exit - 0');
    read(z);
    case z of
      1: proc0;
      2: proc2;
      3: proc1;
      4: proc3;
      5: proc4;
    end;
  until z = 0;
end.