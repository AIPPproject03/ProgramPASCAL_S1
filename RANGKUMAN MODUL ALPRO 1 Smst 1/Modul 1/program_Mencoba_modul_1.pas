program Mencoba_modul_1;
uses crt;
label Up;
var hasil,L,Pi,r,S,a,b,c,x,x1,x2 : real;
    pilih : byte;
    select : char;
    detik,sisa,konvjam,konvmnt,konvdtk : integer;
begin

// PAGE TITLE_____

    Up:
    clrscr;
    writeln('Pilih Soal Dibawah Ini : ');
    writeln('-------------------------------------');
    writeln('1) Buatlah program untuk menghitung luas permukaan kerucut.');
    writeln('   Luas permukaan kerucut (L = Pi*r*(r+S), dimana pi = 3,1415');
    writeln(' ');
    writeln('2) Buatlah program untuk mencari nilai x1 dan x2 dari persamaan linear');
    writeln('   ax^2 + bx + c = 0 dengan rumus : ');
    writeln(' ');
    writeln('         [ x12 = -b +- sqrt(b^2-4ac)/2*a]   ');
    writeln(' ');
    writeln('   Dimana nilai a, b, dan c merupakan inputan dari piranti masukan.');
    writeln('3) Algoritma Konversi Detik.');
    writeln(' ');
    write('  Pilih Soal nomor berapa? ');readln(pilih);
    writeln;

// PAGE SELECT_____

   case pilih of
  1:begin
      writeln('Luas Permukaan Kerucut');
      write('Masukan bilangan r : ');readln(r);
      write('Masukan bilangan s : ');readln(s);
      writeln(' ');
      Pi:=3.1415;
      L:=Pi*r*(r+s);
      writeln('jadi, luas permukaan kerucut adalah ',L:3:5);readkey();
    end;
  2:begin
      writeln('Mencari nilai x1 dan x2 dari persamaan linear ax^2+bx+c=0');
      write('Masukan nilai a : ');readln(a);
      write('Masukan nilai b : ');readln(b);
      write('Masukan nilai c : ');readln(c);
      writeln('=========================================');
      x1:=(0-b+sqrt(b*b-4*a*c)/2*a);
      x2:=(0-b-sqrt(b*b-4*a*c)/2*a);
      writeln('______________');
      writeln('Jadi, Nilai x1 = ',x1:4:2);
      writeln('Jadi, Nilai x2 = ',x2:4:2);
      end;
  3:begin
      writeln('Algoritma Konversi Detik');
      write('Masukan detik : ');readln(detik);
      writeln('_______________________________ ');
      konvjam:=detik div 3600;
      sisa:=detik mod 3600;
      writeln(' ',konvjam,' jam');readkey();
      konvmnt:=sisa div 60;
      writeln(' ',konvmnt,' menit');readkey();
      konvdtk:=sisa mod 60;
      writeln(' ',konvdtk,' detik');readkey();
  end;
  end;
  writeln('------------------------------------------');
  writeln('y dan Y -----> yes');
  writeln('n dan N -----> no');
  write('Masih ingin menghitung?? ');
  readln(select);
  if (select='y') or (select='Y') then goto Up;
  if (select='n') or (select='N') then 
  writeln('Baik, Terima Kasih Dan Semoga Terbantu');
  writeln('PROGRAMED BY.AIPP_PROJECT03');readkey();

end.