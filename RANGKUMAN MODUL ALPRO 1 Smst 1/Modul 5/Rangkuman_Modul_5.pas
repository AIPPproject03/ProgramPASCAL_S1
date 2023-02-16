program Rangkuman_Modul_5;
uses crt;
label up;
var

  // Optional______________________________________________// 
   pilih : integer;
   title : char;

  // SOAL 1________________________________________________//
   a, b, c, d, f : integer;
   
  // SOAL 2________________________________________________//
   desimal: integer;
   binary : string;

function deret_fibonacci(a,b,c,d,f:integer):integer;
begin
    d := 0;
    f := 1;
    c := 0;
    for b := 1 to a do
    begin
    c := d + c;
    d :=f;
    f :=c;
    write(c);
    write(' ');
    end;
    end;
function desimal_biner(binary:string):string;
begin
Binary := ' ';
repeat
begin
if Desimal mod 2=0 then Binary:='0'+Binary
else Binary:='1'+Binary;
Desimal:=Desimal div 2;
end;
until Desimal = 0;
writeln;
writeln('Hasil Konversi');
writeln('==========================');
writeln;
WriteLn ('Bilangan Biner : ',Binary);
end;
begin
	up:
	clrscr;
	writeln('=========================================================');
	writeln('|                       PILIH SOAL                      |');
	writeln('=========================================================');
	writeln(' 1) Program Deret Fibonacci Dengan Mengimplementasikan');
	writeln('    Fungsi Reklusif');
	writeln(' 2) Program Mengubah Angka Decimal Ke Binary Menggunakan');
	writeln('    Reklusif');
	writeln;
	  write('  Pilih : ');readln(pilih);
	  case pilih of
1:begin
    clrscr;
    writeln('Program Deret Fibonacci ');
    writeln;
    write('Masukkan Jumlah Deret : ');readln(a);
    write('Deret Fibonacci (',a,') Deret : ');
    deret_fibonacci(a,b,c,d,f);
    readln;
    end;
2:begin
  clrscr;
  writeln(' Program Desimal Ke Biner');
  writeln;
    write(' Masukan Bilangan Desimal : ');readln(desimal);
    desimal_biner(binary);
    end;
    end;
    writeln(' Ngitung Lagi (y/n): ');
      write(' Pilih : ');readln(title);
      if title='y' then goto up
      else
end.