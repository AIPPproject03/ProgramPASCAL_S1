program modul_3_kumpulan;
uses crt;
label titlescreen,
     // FOR THE QUESTION 1,2,3______________________
     S1,S2,S3,
     // SPECIAL FOR QUESTION 4______________________
      awal,tmbh,krng,kli,bgi,pkt,
      // EXIT
      exit;
var
    // TITLE PAGE___________________________________
    select : integer;
    balikdong : char;
    back : char;
    // SOAL 1 AND 2_________________________________
    i,a : integer;
    // SOAL 3_______________________________________
    x,j,y : integer;
    // SOAL 4_______________________________________
    menu,b1,b2 : integer;
    hasil : real;
    title : char;
begin

	// TITLE PAGE___________________________________

	titlescreen:
	clrscr;
	textcolor(2);
	writeln('=======================================================================================================================');
	writeln('                                                |AIPP_Project03|');
	writeln('=======================================================================================================================');
	writeln;
	writeln(' Select Your Quetion : ');
	writeln('______________________________________________________________________________________');
	writeln(' 1) Buatlah program untuk mencetak tulisan (Fakultas Teknik) sebanyak N               |');
	writeln('    dimana N adalah nilai yang dimasukkan dari piranti masukkan. jumlah               |');
	writeln('    pengulangan : 3 Output = Fakultas Teknik                                          |');
	writeln('                                                                                      |');
	writeln(' 2) Ubahlah program praktikum langkah 1 dengan menggunakan pengulangan while..do      |');
	writeln('                                                                                      |');
	writeln(' 3) Buatlah program untuk mencetak bintang berikut ini jika diberikan tinggi          |');
	writeln('    segitiga N. Sebagai contoh, jika N = 2 maka outputnya =                           |');
	writeln('           @@                                                                         |');
	writeln('           @                                                                          |');
	writeln('           @                                                                          |');
	writeln('           @@                                                                         |');
	writeln('                                                                                      |');
	writeln(' 4) Buatlah program kalkulator untuk melakukan berbagai operasi aritmatika            |');
  writeln('                                                                                      |');
  writeln(' 5) EXIT                                                                              |');
	writeln('______________________________________________________________________________________|');
	write('  You Choose : ');readln(select);
	case select of

	// SOAL 1_____________________________________________

	1:begin
	   S1:
	   clrscr;
	   writeln('Mencetak Tulisan Sesuai Pilihan Kita');
	   writeln('====================================');
	   write('Masukan Jumlah Pengulangan : ');readln(a);
	   writeln;
	   for i:=1 to a do 
	   writeln('Fakultas Teknik');
	   readkey();
	   writeln;
	   writeln('Wanna try again ? ');
	   writeln('Y,y ---> yes');
   	   writeln('N,n ---> no');
	    write('Choose : ');readln(back);
	   if (back='Y') or (back='y') then goto S1;
	   if (back='N') or (back='n') then goto titlescreen;
	  end;

	  // SOAL 2_________________________________________________

	       2:begin
	          S2:
	          clrscr;
	          writeln('Sekarang Menggunakan While..Do');
	          writeln('==============================');
	          write('Masukan Jumlah Pengulangan : ');readln(a);
	          writeln;
	          i:=1;
	          while i<=a do
	          begin
	          writeln('Fakultas Teknik');
	          i:=i+1;
	         end;
	         writeln;
	         writeln('Wanna try again ? ');
	        writeln('Y,y ---> yes');
   	      writeln('N,n ---> no');
	    write('Choose : ');readln(back);
	   if (back='Y') or (back='y') then goto S2;
	   if (back='N') or (back='n') then goto titlescreen;
	         end;

	   // SOAL 3_________________________________________________

	              3:begin
	                S3:
	                 clrscr;
	                 write('jumlah pengulangan : ');readln(x);
                     writeln;
                       for y:=x downto 1 do
                      begin
                       for j:=1 to y do 
                        write('$');
                        writeln;
                      end;
                       for y:=1 to x do
                      begin
                       for j:=1 to y do
                        write('$');
                        writeln;
                       end;
                       readkey();
                                writeln;
	                             writeln('Wanna try again ? ');
	                              writeln('Y,y ---> yes');
   	                             writeln('N,n ---> no');
	                            write('Choose : ');readln(back);
	                         if (back='Y') or (back='y') then goto S3;
	                      if (back='N') or (back='n') then goto titlescreen;	 
                       end;

       // SOAL 4___________________________________________________________________________________
       
                  4:begin
                     awal:
                     clrscr;
                     writeln('_______________________________________________');
                     writeln('|===================MENU UTAMA================|');
                     writeln('|PROGRAM KALKULATOR|                          |');
                     writeln('|------------------|--------------------------|');
                     writeln('|1. Penjumlahan                               |');
                     writeln('|2. Perkalian                                 |');
                     writeln('|3. Pengurangan                               |');
                     writeln('|4. Pembagian                                 |');
                     writeln('|5. Pangkat Dua (N^2)                         |');
                     writeln('|6. Keluar                                    |');
                     writeln('|_____________________________________________|');
                     write('| Pilih Menu : ');readln(menu);

                     // SELECTION SOAL 4___________________________________________________________
                     
                                      case menu of
                             1:begin
                                tmbh:
                                clrscr;
                               writeln('_______________________________________________');
                               writeln('|===================MENU UTAMA================|');
                               writeln('|PROGRAM KALKULATOR|                          |');
                               writeln('|------------------|--------------------------|');
                               writeln('|1. Penjumlahan                               |');
                               writeln('|2. Perkalian                                 |');
                               writeln('|3. Pengurangan                               |');
                               writeln('|4. Pembagian                                 |');
                               writeln('|5. Pangkat Dua (N^2)                         |');
                               writeln('|6. Keluar                                    |');
                               writeln('|_____________________________________________|');
                               writeln('| Pilih Menu : 1 (Penjumlahan)                |');
                                 write('| Masukan bilangan anda : ');readln(b1);
                                 write('| Masukan bilangan anda : ');readln(b2);
                               hasil:=b1+b2;
                               writeln('| ',b1,' + ',b2,' = ',hasil:0:0);readkey();
                               writeln('| ');
                               write('| Anda Ingin Mengulang Lagi ? (Y/T) : ');readln(title);
                                 if (title='y') or (title='Y') then goto tmbh;
                                 if (title='T') or (title='t') then goto awal;
                                readkey();
                               end;
                              2:begin
                              	kli:
                                clrscr;
                               writeln('_______________________________________________');
                               writeln('|===================MENU UTAMA================|');
                               writeln('|PROGRAM KALKULATOR|                          |');
                               writeln('|------------------|--------------------------|');
                               writeln('|1. Penjumlahan                               |');
                               writeln('|2. Perkalian                                 |');
                               writeln('|3. Pengurangan                               |');
                               writeln('|4. Pembagian                                 |');
                               writeln('|5. Pangkat Dua (N^2)                         |');
                               writeln('|6. Keluar                                    |');
                               writeln('|_____________________________________________|');
                               writeln('| Pilih Menu : 2 (Perkalian)                  |');
                                 write('| Masukan bilangan anda : ');readln(b1);
                                 write('| Masukan bilangan anda : ');readln(b2);
                               hasil:=b1*b2;
                               writeln('| ',b1,' * ',b2,' = ',hasil:0:0);readkey();
                               writeln('| ');
                               write('| Anda Ingin Mengulang Lagi ? (Y/T) : ');readln(title);
                                 if (title='y') or (title='Y') then goto kli;
                                 if (title='T') or (title='t') then goto awal;
                                readkey();
                              end;
                              3:begin
                                krng:
                                clrscr;
                               writeln('_______________________________________________');
                               writeln('|===================MENU UTAMA================|');
                               writeln('|PROGRAM KALKULATOR|                          |');
                               writeln('|------------------|--------------------------|');
                               writeln('|1. Penjumlahan                               |');
                               writeln('|2. Perkalian                                 |');
                               writeln('|3. Pengurangan                               |');
                               writeln('|4. Pembagian                                 |');
                               writeln('|5. Pangkat Dua (N^2)                         |');
                               writeln('|6. Keluar                                    |');
                               writeln('|_____________________________________________|');
                               writeln('| Pilih Menu : 3 (Pengurangan)                |');
                                 write('| Masukan bilangan anda : ');readln(b1);
                                 write('| Masukan bilangan anda : ');readln(b2);
                               hasil:=b1-b2;
                               writeln('| ',b1,' - ',b2,' = ',hasil:0:0);readkey();
                               writeln('| ');
                               write('| Anda Ingin Mengulang Lagi ? (Y/T) : ');readln(title);
                                 if (title='y') or (title='Y') then goto krng;
                                 if (title='T') or (title='t') then goto awal;
                                readkey();
                                end;
                               4:begin
                                 bgi:
                                clrscr;
                               writeln('_______________________________________________');
                               writeln('|===================MENU UTAMA================|');
                               writeln('|PROGRAM KALKULATOR|                          |');
                               writeln('|------------------|--------------------------|');
                               writeln('|1. Penjumlahan                               |');
                               writeln('|2. Perkalian                                 |');
                               writeln('|3. Pengurangan                               |');
                               writeln('|4. Pembagian                                 |');
                               writeln('|5. Pangkat Dua (N^2)                         |');
                               writeln('|6. Keluar                                    |');
                               writeln('|_____________________________________________|');
                               writeln('| Pilih Menu : 4 (Pembagian)                  |');
                                 write('| Masukan bilangan anda : ');readln(b1);
                                 write('| Masukan bilangan anda : ');readln(b2);
                               hasil:=b1/b2;
                               writeln('| ',b1,' / ',b2,' = ',hasil:2:4);readkey();
                               writeln('| ');
                               write('| Anda Ingin Mengulang Lagi ? (Y/T) : ');readln(title);
                                 if (title='y') or (title='Y') then goto bgi;
                                 if (title='T') or (title='t') then goto awal;
                                readkey();
                                end;
                                5:begin
                                  pkt:
                                clrscr;
                               writeln('_______________________________________________');
                               writeln('|===================MENU UTAMA================|');
                               writeln('|PROGRAM KALKULATOR|                          |');
                               writeln('|------------------|--------------------------|');
                               writeln('|1. Penjumlahan                               |');
                               writeln('|2. Perkalian                                 |');
                               writeln('|3. Pengurangan                               |');
                               writeln('|4. Pembagian                                 |');
                               writeln('|5. Pangkat Dua (N^2)                         |');
                               writeln('|6. Keluar                                    |');
                               writeln('|_____________________________________________|');
                               writeln('| Pilih Menu : 5 (Pangkat 2)                  |');
                                 write('| Masukan bilangan anda : ');readln(b1);
                               hasil:=sqr(b1);
                               writeln('| ',b1,'^2 = ',hasil:0:0);readkey();
                               writeln('| ');
                               write('| Anda Ingin Mengulang Lagi ? (Y/T) : ');readln(title);
                                 if (title='y') or (title='Y') then goto pkt;
                                 if (title='T') or (title='t') then goto awal;
                                readkey();
                                end;
                               6:begin
                                 clrscr;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln;
                                 writeln('                                 Terima Kasih Telah Mencoba Kalkulator Saya');
                                 writeln('                                           By. AIPP_Project03');
                                 readln;
                                 end;
                                 end;
     writeln('================================');
	   writeln('Go back to the selecting page ? ');
	   writeln('Y,y ---> yes');
	   writeln('N,n ---> no');
	   write('Choose : ');readln(balikdong);
	   if (balikdong='Y') or (balikdong='y') then goto titlescreen;
	   if (balikdong='N') or (balikdong='n') then goto exit;
     end;

     // EXIT PAGE____________________________________________________________

	                           5:begin
                              exit:
	                            clrscr;
	                            writeln;
	                            writeln;
	                            writeln;
	                            writeln;
	                            writeln;
	                            writeln;
	                            writeln;
	                            writeln;
	                            writeln('                                              Thanks For Everything');
	                            writeln('                                                 Give Like hehehe');
	                            writeln('                                                  AIPP_Project03');
	                            readkey();
	                            end;
	   end;
end.