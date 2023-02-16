program Rangkuman_Modul_4;
uses crt;
var
   // LOOPING________________________________
   back : char;
   // CHOOSING CASE OF_______________________
   pilih:Integer;
   // VARIABEL OPSIONAL______________________
   x,y,a,b,c : integer;
   // SOAL 1_________________________________
   tambah,kurang : integer;
   p1: integer;
   // SOAL 2_________________________________
   kali,bagi : real;
   p2 : integer;
   // SOAL 3_________________________________
   p,l,t,s : integer;
   vbalok,vkubus : integer;
   p3 : integer;
   // SOAL 4_________________________________
   kalkulator : integer;
   // SOAL 5_________________________________
   lsegitiga,ksegitiga : real;
   alas : integer;
   // SOAL 6_________________________________
   llingkaran,klingkaran : real;
   r : integer;

   // PROCEDURE SOAL 1____________________________________________________________________
       procedure pengurangan; 
    begin 
    writeln;
    kurang:=x-y;
    writeln('pengurangan ',x,' - ',y,' = ',kurang);
    end;
     procedure penjumlahan;
   begin 
   writeln;
   tambah:=x+y;
   writeln('penjumlahan ',x,' +  ',y,' = ',tambah);
   end;
   // PROCEDURE SOAL 2____________________________________________________________________
       procedure perkalian(x,y:integer);
       begin
       writeln;
          kali:=x*y;
          writeln('=========================================');
          writeln(' Hasil perkalian ',x,' * ',y,' = ',kali:0:0);
       end;
       procedure pembagian(x,y:integer);
       begin
       writeln;
          bagi:=x/y;
          writeln('=========================================');
          writeln(' Hasil pembagian ',x,' - ',y,' = ',bagi:2:4);
          end;
    // PROCEDURE SOAL 3___________________________________________________________________
        procedure volume_kubus(s:integer);
        begin
        writeln;
        vkubus:=s*s*s;
        writeln('=========================================');
        writeln(' Jadi, Volume Kubus Adalah : ',vkubus);
        end;
           procedure volume_balok(p,l,t:integer);
           begin
             writeln;
             vbalok:=p*l*t;
             writeln('====================================');
             writeln(' Jadi, Volume Balok Adalah : ',vbalok);
           end;

        {KITA BERALIH KEBAGIAN FUNCTION YGY......}
      // FUNCTION SOAL 4__________________________________________________________________
          function tambahan(x,y:integer):Integer;
            begin
              tambah:=x+y;
            end;
              function kalian(x,y:integer):real;
              begin
                kalian:=x*y;
              end;
                function kurangan(x,y:integer):integer;
                begin
                  kurangan:=x-y;
                end;
                  function bagian(x,y:integer):real;
                  begin
                    bagian:=x/y;
                    end;
      // MODIFIKASI FUNCTION MAUPUN PROCEDURE SOAL 5_______________________________________
        procedure keliling_segitiga(a,b,c:integer);
        begin
          writeln;
          ksegitiga:=a*b*c;
          writeln('===================================');
          writeln(' Jadi, Keliling Segitiga Sama Kaki : ',ksegitiga:0:0);
          end;
        procedure luas_segitiga(alas,t:real);
          begin
            lsegitiga:=alas*(1/2)*t;
            writeln(' Jadi, Luas Segitiga Sama Kaki : ',lsegitiga:0:0);
          end;
        // MODIFIKASI FUNCTION MAUPUN PROCEDURE SOAL 6_____________________________________
           function keliling_lingkaran(r:integer):real;
             begin
               keliling_lingkaran:=2*22/7*r;
             end;
               function luas_lingkaran(r:integer):real;
               begin
                 luas_lingkaran:=22/7*sqr(r);
               end;

   begin
   back:='n';
   repeat
	clrscr;
	writeln('|==============================================================================================|');
	writeln('|                                             PILIH SOAL                                       |');
	writeln('|==============================================================================================|');
	writeln(' 1) Buatlah Kalkulator pengurangan ,penjumlahan menggunakan Procedure tanpa parameter.');
	writeln(' 2) Buatlah Kalkulator perkalian dan pembagian menggunakan Procedure dengan parameter.');
	writeln(' 3) Buatlah procedure untuk menghitung volume balok dan volume kubus');
	writeln(' 4) Buatlah Kalkulator (penjumlahan, pengurangan, perkalian, pembagian) menggunakan function');
	writeln(' 5) Buatlah program menghitung keliling dan luas segitiga sama kaki');
	writeln(' 6) Buatlah program menghitung keliling dan luas lingkaran.');
	writeln('===============================================================================================');
	  write('  PILIH : ');readln(pilih);
    case pilih of

     // NO 1___________________________________________________________________________________

    
      1:begin
      clrscr;
      writeln(' KALKULATOR PENGURANGAN DAN PENJUMLAHAN MENGGUNAKAN PROCEDURE TANPA PARAMATER');
      writeln('=============================================================================');
      writeln(' 1) PENJUMLAHAN ');
      writeln(' 2) PENGURANGAN ');
      writeln;
        write('   PILIH : ');readln(p1);
        case p1 of
1:begin
clrscr;
write('masukan nilai A : ');readln(x);
write('masukan nilai B : ');readln(y);
penjumlahan;
readkey();
end;
2:begin
clrscr;
write('masukan nilai A : ');readln(x);
write('masukan nilai B : ');readln(y);
pengurangan;
readkey();
end;
end;
end;

      // NO 2_________________________________________________________________________________

      2:begin
      clrscr;
      writeln(' KALKULATOR PERKALIAN DAN PEMBAGIAN MENGGUNAKAN PROCEDURE TANPA PARAMATER');
      writeln('=============================================================================');
      writeln(' 1) PERKALIAN ');
      writeln(' 2) PEMBAGIAN ');
      writeln;
        write('   Pilih : ');readln(p2);
        case p2 of
        1:begin
        clrscr;
          writeln;
          writeln('========================================');
          writeln(' PERKALIAN ');
          writeln('========================================');
            write(' Masukan bilangan pertama : ');readln(x);
            write(' Masukan bilangan kedua   : ');readln(y);
            perkalian(x,y);
            readkey();
        end;
         2:begin
         clrscr;
           writeln;
          writeln('========================================');
          writeln(' PEMBAGIAN ');
          writeln('========================================');
            write(' Masukan bilangan pertama : ');readln(x);
            write(' Masukan bilangan kedua   : ');readln(y);
            pembagian(x,y);
            readkey();
         end;
         end;
         end;

      // NO 3________________________________________________________________________

          3:begin
            clrscr;
            writeln(' MENGHITUNG VOLUME BALOK DAN KUBUS');
            writeln('========================================');
            writeln(' 1) BALOK');
            writeln(' 2) KUBUS');
            writeln;
              write('   PILIH : ');readln(p3);
              case p3 of
               1:begin
                 clrscr;
                 writeln;
                 writeln('===========================================');
                 writeln(' VOLUME BALOK');
                 writeln('===========================================');
                   write(' Masukan Panjang Balok : ');readln(p);
                   write(' Masukan Lebar Balok   : ');readln(l);
                   write(' Masukan Tinggi Balok  : ');readln(t);
                   volume_balok(p,l,t);
                   readkey();
                   end;
               2:begin
                 clrscr;
                 writeln;
                 writeln('===========================================');
                 writeln(' VOLUME KUBUS');
                 writeln('===========================================');
                   write(' Masukan Sisi Kubus : ');readln(s);
                   volume_kubus(s);
                   readkey();
          end;
          end;
          end;

        // NO 4_________________________________________________________________________

          4:begin
             clrscr;
                     writeln('_______________________________________________');
                     writeln('|===================MENU UTAMA================|');
                     writeln('|PROGRAM KALKULATOR|                          |');
                     writeln('|------------------|--------------------------|');
                     writeln('|1. Penjumlahan                               |');
                     writeln('|2. Perkalian                                 |');
                     writeln('|3. Pengurangan                               |');
                     writeln('|4. Pembagian                                 |');
                     writeln('|=============================================|');
                       write('  PILIH : ');readln(kalkulator);
                       case kalkulator of
                       1:begin
                         clrscr;
                         write('masukan nilai A : ');readln(x);
                         write('masukan nilai B : ');readln(y);
                         writeln('=============================================');
                         writeln('Hasil Penjumlahan ',x,' +  ',y,' = ',tambahan(x,y));
                         readkey();
                         end;
                        2:begin
                          clrscr;
                         write('masukan nilai A : ');readln(x);
                         write('masukan nilai B : ');readln(y);
                         writeln('======================================');
                         writeln(' Hasil Perkalian ',x,' * ',y,' = ',kalian(x,y):0:0);
                         readkey();
                        end;
                        3:begin
                        clrscr;
                         write('masukan nilai A : ');readln(x);
                         write('masukan nilai B : ');readln(y);
                         writeln('======================================');
                         writeln(' Hasil Pengurangan ',x,' - ',y,' = ',kurangan(x,y));
                         readkey();
                         end;
                         4:begin
                           clrscr;
                           write('masukan nilai A : ');readln(x);
                           write('masukan nilai B : ');readln(y);
                           writeln('======================================');
                           writeln(' Hasil Pembagian ',x,' / ',y,' = ',bagian(x,y):2:4);
                           readkey();
                        end;
                        end;
                        end;

        // NO 5_________________________________________________________________________________________
               
               5:begin
                 clrscr;
                 writeln('============================================');
                 writeln(' KELILING DAN LUAS SEGITIGA SAMA KAKI');
                 writeln('============================================');
                 writeln(' 1) Masukan Inputan Untuk Keliling : ');
                   write('  Masukan a : ');readln(a);
                   write('  Masukan b : ');readln(b);
                   write('  Masukan c : ');readln(c);
                 writeln('============================================');
                 writeln(' 2) Masukan Inputan Untuk Luas : ');
                   write('  Masukan Alas Segitiga   : ');readln(alas);
                   write('  Masukan Tinggi Segitiga : ');readln(t);
                   keliling_segitiga(a,b,c);
                   luas_segitiga(alas,t);
                        end;

        // NO 6________________________________________________________________________________________

               6:begin
                clrscr;
                writeln('===========================================');
                writeln(' KELILING DAN LUAS LINGKARAN ');
                writeln('===========================================');
                  write('  Masukan r : ');readln(r);
                writeln('===========================================');
                writeln(' Jadi, Keliling Lingkaran = ',keliling_lingkaran(r):2:3);
                readkey();
                writeln(' Jadi, Luas Lingkaran     = ',luas_lingkaran(r):2:3);
                readkey();
                end;
         end;
         writeln;
         write(' Mau Ngitung Lagi (y/n) : ');readln(back);
         if back='n' then
         until back='n';
      end.