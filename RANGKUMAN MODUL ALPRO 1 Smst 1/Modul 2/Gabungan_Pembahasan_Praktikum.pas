program Gabungan_Pembahasan_Praktikum;
uses crt;
label Up,S1,S2,S3,S4,S5;
var  
    // SOAL 1
    bilangan:array[1..100] of integer;
    max,min,i,n : integer;
    // SOAL 2
    choose,bulan : integer;
    // SOAL 3
    Op1,Op2 : integer;
    Opr : char;
    hasil : real;
    // SOAL 4
    nilai : integer;
    // SOAL 5
    pilih,a,b : integer;
    tambah,kurang,kali,bagi : real;
    // LOOP PAGE
    back : char;
begin

	// TITLE PAGE___________________________________

	Up:
	textbackground(7);
	textcolor(0);
	clrscr;
	writeln('AIPP_Project03 Copyright');
	writeln('========================================================================================================================');readln;

	// CHOOSING PAGE________________________________

	writeln('Choose Your Formula : ');
	writeln('1) Buatlah program untuk menentukan bilangan bulat terbesar dan yang terkecil dari tiga buah bilangan bulat!');
	writeln(' ');
	writeln('2) Buatlah program untuk membaca nomor bulan (integer), lalu menuliskan nama bulan sesuai dengan angka bulannya');
	writeln('   Misalnya jika dibaca angka 9, maka tercetak agustus.');
	writeln(' ');
	writeln('3) Simulasikan sebuah kalkulator sederhana untuk melakukan operasi aritmatika sebagai berikut :');
	writeln('   Dibaca operand 1, operator, dan operand 2.');
	writeln('       Tentukan hasil operasi aritmatika : ');
	writeln('             Operand 1 Operator Operand 2');
	writeln('                       7 + 3 ');
	writeln('                 Maka hasilnya adalah 10');
	writeln(' ');
	writeln('4) Buatlah program untuk menentukan Harga Mutu serta keterangan Lulus/Tidak Lulus dari nilai akhir sebuah mata kuliah.');
	writeln(' ');
	writeln('5) Buatlah program kalkulator sederhana menggunakan percabangan case..of!');
	writeln(' ');
	write('You wanna choose : ');readln(choose);

	// PAGE EXECUTION______________________________________________

	case choose of

	// PAGE SOAL 1_________________________________________________

	  1:begin
	  S1:
	  clrscr;
	    writeln('Menentukan Bilangan Bulat Terbesar Dan Terkecil');
	    writeln('===============================================');
	  	Write('Masukkan jumlah bilangannya = ');readln(n);
        Max:=1;
        Min:=100000;
      For i:=1 to n do
      Begin
          {Menginputkan Nilai Bilangan Ke I}
          write('Bilangan ke ',i,' = ');readln(bilangan[i]);
          {Mencari Bilangan Terbesar}
          If bilangan[i]>Max then Max:=bilangan[i];
          {Mencari Bilangan Terkecil}
          If bilangan[i]<Min then Min:=bilangan[i];
      End;
     writeln('==========================');
     Writeln('Bilangan Terbesar = ', Max);
     Writeln('Bilangan Terkecil = ', Min);
     readln;
	   writeln(' ');
	   writeln('Wanna count again ? ');
	   writeln('Y,y ---> yes');
	   writeln('N,n ---> no');
	   write('Choose : ');readln(back);
	   if (back='Y') or (back='y') then goto S1;
	   if (back='N') or (back='n') then
	     end;


	  // PAGE SOAL 2_______________________________________________

	   2:begin
	   S2:
	   clrscr;
	   	 writeln('Program membaca bulan dari inputan angka kita.');
	   	 writeln('==============================================');
	   	 write('Angka yang kamu pilih : ');readln(bulan);
	   	 writeln(' ');
	   	 if bulan=1 then
	   	 writeln(' Bulan yang kamu dapat adalah January');
	      	 if bulan=2 then
	   	       writeln(' Bulan yang kamu dapat adalah February');
	   	        if bulan=3 then
	   	          writeln(' Bulan yang kamu dapat adalah March');
	   	            if bulan=4 then
	   	              writeln(' Bulan yang kamu dapat adalah April');
	   	                if bulan=5 then
	   	                  writeln(' Bulan yang kamu dapat adalah May');
	   	                   if bulan=6 then
	   	                  writeln(' Bulan yang kamu dapat adalah June');
	   	                if bulan=7 then
	   	              writeln(' Bulan yang kamu dapat adalah July');
	   	            if bulan=8 then
	   	          writeln(' Bulan yang kamu dapat adalah August');
	   	        if bulan=9 then
	   	      writeln(' Bulan yang kamu dapat adalah September');
	   	         if bulan=10 then
	   	           writeln(' Bulan yang kamu dapat adalah October');
	   	         if bulan=11 then
	   	      writeln(' Bulan yang kamu dapat adalah November');
	   	       if bulan=12 then
	   	     writeln(' Bulan yang kamu dapat adalah December');
	   	   readln;
	   writeln('Wanna try again ? ');
	   writeln('Y,y ---> yes');
	   writeln('N,n ---> no');
	   write('Choose : ');readln(back);
	   if (back='Y') or (back='y') then goto S2;
	   if (back='N') or (back='n') then
	     end;

	    // PAGE SOAL 3__________________________________________________

	   3:begin
	   S3:
	   clrscr;
	     writeln('Kalkulator Sederhana Untuk Menghitung Aritmatika');
	     write('Operand 1           : ');readln(Op1);
	     write('Operator (+,-,*,/)  : ');readln(Opr);
	     write('Operand 2           : ');readln(Op2);
	     writeln('=================================================');
	           if Opr='+' then
	             begin
	            	hasil:=Op1+Op2;
	               end;
	                if Opr='-' then
	                   begin
	                 	hasil:=Op1-Op2;
	                   end;
	                if Opr='*' then
	                   begin
	              	   hasil:=Op1*Op2;
	               end;
	                 if Opr='/' then
	                   begin
	              	 hasil:=Op1/Op2;
	               end;
	      writeln('jadi, hasilnya ',Op1,'  ',Opr,'  ',Op2,' = ',hasil:2:3);
	      readln;
	  writeln('Wanna count again ? ');
	   writeln('Y,y ---> yes');
	   writeln('N,n ---> no');
	  write('Choose : ');readln(back);
	 if (back='Y') or (back='y') then goto S3;
 if (back='N') or (back='n') then
	   end;

	   // PAGE SOAL 4__________________________________________________

	   4:begin
	   S4:
	     clrscr;
	   	 writeln('Menentukan Harga Mutu.');
	   	 writeln('===================================');
	   	 write('Masukan Nilai Yang Telah Diperoleh : ');readln(nilai);
	   	 writeln('===================================');
	   	 writeln(' ');
	   	 if 80<=nilai then
	   	   begin
	   	   writeln('Selamat anda lulus');
	   	   writeln('Nilai Mutu A');
	   	   readkey();
	   	   end
	   	   else
	   	      if (nilai>=79) and (nilai>=75) then
	   	        begin
	   	          writeln('Selamat Anda Lulus');
	   	          writeln('Nilai Mutu B+');
	   	          readkey();
	   	        end
	   	      else
	   	           if (nilai>=74) and (nilai>=70) then
	   	             begin
	   	               writeln('Selamat Anda Lulus');
	   	               writeln('Nilai Mutu B');
	   	               readkey();
	   	              end
	   	           else
	                	 if (nilai>=69) and (nilai>=65) then
	                	   begin
	   	                    writeln('Selamat Anda Lulus');
	   	                    writeln('Nilai Mutu C+');
	   	                    readkey();
	   	                   end
	   	                else
	   	                     if (nilai>=64) and (nilai>=60) then
	   	                        begin
	   	                         writeln('Selamat Anda Lulus');
	   	                         writeln('Nilai Mutu C');
	   	                         readkey();
	   	                        end

	   	  // PAGE UNABLE TO MAKE THE RUN__________________________________________

	   	                     else
	   	                         if (nilai>=59) and (nilai>=56) then
	   	                            begin
	   	                              writeln('Maaf Anda Tidak Lulus');
	   	                              writeln('Nilai Mutu D');
	   	                              readkey();
	   	                            end
	   	                              else
	   	                        if (nilai>=55) and (nilai>=53) then
	   	                         begin
	   	                           writeln('Maaf Anda Tidak Lulus');
	   	                           writeln('Nilai Mutu D');
	   	                           readkey();
	   	                        end
	                          else
	   	                   if (nilai>=52) and (nilai>=50) then
  	                         begin
	   	                      writeln('Maaf Anda Tidak Lulus');
	                          writeln('Nilai Mutu D');
	  	                      readkey();
	   	                    end

	   	   // PAGE UNABLE TO MAKE RUN______________________________________________

	   	                 else
	           if nilai<=50 then
	             begin
    	            writeln('Maaf Anda Tidak Lulus');
	                writeln('Nilai Mutu E');
	   	            readkey();
	   	        end;
	   	         writeln('Wanna try again ? ');
	               writeln('Y,y ---> yes');
	                writeln('N,n ---> no');
	              write('Choose : ');readln(back);
	            if (back='Y') or (back='y') then goto S4;
	          if (back='N') or (back='n') then
	        end;

	   	// PAGE SOAL 5__________________________________________________________

	   5:begin
	     S5:
	     clrscr;
	     writeln('Program Kalkulator Sederhana');
	     writeln('================================');
	     writeln('         My Calculator         |');
	     writeln('                               | ');
	     writeln(' 1.    Penjumlahan             |');
	     writeln(' 2.    Pengurangan             |');
	     writeln(' 3.    Perkalian               |');
	     writeln(' 4.    Pembagian               |');
	     writeln('______ ________________________|');
	     writeln(' ');
	     write('Pilih Menu : ');readln(pilih);
	     case pilih of
	       1:begin
	         clrscr;
	         writeln('Program Penjumlahan');
	         write('Masukan Bilangan 1 : ');readln(a);
	         write('Masukan Bilangan 2 : ');readln(b);
	         writeln('===============================');
	         tambah:=a+b;
	         writeln('Hasil Perhitungan ',a,' + ',b,' = ',tambah:0:0);readkey();
	         end;
	       2:begin
	       	 clrscr;
	       	 writeln('Program Pengurangan');
	         write('Masukan Bilangan 1 : ');readln(a);
	         write('Masukan Bilangan 2 : ');readln(b);
	         writeln('===============================');
	         kurang:=a-b;
	         writeln('Hasil Perhitungan ',a,' - ',b,' = ',kurang:0:0);readkey();
	       end;
	       3:begin
	       	 clrscr;
	       	 writeln('Program Perkalian');
	         write('Masukan Bilangan 1 : ');readln(a);
	         write('Masukan Bilangan 2 : ');readln(b);
	         writeln('===============================');
	         kali:=a*b;
	         writeln('Hasil Perhitungan ',a,' * ',b,' = ',kali:0:0);readkey();
	       end;
	       4:begin
	         clrscr;
	         writeln('Program Pembagian');
	         write('Masukan Bilangan 1 : ');readln(a);
	         write('Masukan Bilangan 2 : ');readln(b);
	         writeln('===============================');
	         bagi:=a/b;
	         writeln('Hasil Perhitungan ',a,' / ',b,' = ',bagi:2:3);readkey();
	   end;
	   end;
	    writeln('Wanna try our calculator again ? ');
	     writeln('Y,y ---> yes');
   	   writeln('N,n ---> no');
	    write('Choose : ');readln(back);
	   if (back='Y') or (back='y') then goto S5;
	   if (back='N') or (back='n') then
	     end;
	   end;

	   // ENDING PAGE__________________________________

	   writeln('================================');
	   writeln('Go back to the selecting page ? ');
	   writeln('Y,y ---> yes');
	   writeln('N,n ---> no');
	   write('Choose : ');readln(back);
	   if (back='Y') or (back='y') then goto up;
	   if (back='N') or (back='n') then
	   writeln('                                    Thanks For Everything');
	   writeln('                                       Give Like hehehe');
	   writeln('                                        AIPP_Project03');
	   readkey();
end.