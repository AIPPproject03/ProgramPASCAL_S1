program biodata_berdasarkan_inputan;
uses crt;
label title;
var nama,hobi,nim,lahir,kerja : string;
	pilih : integer;
    back : char;

  // VARIABEL UNTUK FILE TXT______________________________//

    t : text;

  // PROCEDURE INPUT BIODATA MENUJU .TXT_________________//

 procedure hasil_biodata;
 begin
 	writeln(t, '|===========================================================|');
	writeln(t, '|                        |BIODATA|                          |');
	writeln(t, '|________________________=========__________________________|');
	writeln(t, '|');
	writeln(t, '| Nama      : ',nama);
	writeln(t, '| NIM       : ',nim);
	writeln(t, '| TTL       : ',lahir);
	writeln(t, '| Hobi      : ',hobi);
	writeln(t, '| Pekerjaan : ',kerja);
	writeln(t, '|------------------------------------------------------------');
	close(t);
 end;

 // ALGORITMA EKSEKUSI____________________________________//
 
begin
	title:
	clrscr;
	assign(t, ' Input Biodata.txt');
	rewrite(t);
	writeln('=======================================================================================================================');
	writeln('|                                                    |INPUT BIODATA|                                                  |');
	writeln('=======================================================================================================================');
	writeln(' Harap Masukan Data Diri Anda :                                     ');
	writeln;
	  write(' A) NAMA      : ');readln(nama);
	  write(' B) NIM       : ');readln(nim);
	  write(' C) TTL       : ');readln(lahir);
	  write(' D) HOBI      : ');readln(hobi);
	writeln(' F) PEKERJAAN : *Pilih Salah Satu Pekerjaan Dibawah Ini*');
	writeln('                  1) Wiraswasta');
	writeln('                  2) PNS/TNI/POLRI');
	writeln('                  3) Youtuber/Content Creator');
	writeln('                  4) Artis/Aktor');
	writeln('                  5) Hacker');
	writeln('                  6) Mahasiswa');
	  write('  Pilihan Anda : ');readln(pilih);
	writeln('-----------------------------------------------------------------------------------------------------------------------');readln;
	           case pilih of
	             1:begin
	                kerja:='Wiraswasta';
	               end;
	               2:begin
	                 kerja:='PNS/TNI/POLRI';
	                 end;
	                  3:begin
	                    kerja:='Youtuber/Content Creator';
	                    end;
	                     4:begin
	                       kerja:='Artis/Aktor';
	                       end;
	                        5:begin
	                          kerja:='Hacker';
	                          end;
	                           6:begin
	                             kerja:='Mahasiswa';
	                             end;
	                             end;
	      begin
	      clrscr;
	writeln;
	writeln;      
	writeln('                                                       LOADING......');readln;
	      end;
	      begin
	      clrscr;
	writeln;
	writeln;
	writeln('                                          Baik, Terima Kasih Atas Kerja Sama Anda');readln;
	writeln('                                                  Data Sudah Kami Terima');readln;
	      end;
	      begin
	      clrscr;
	writeln;
	writeln;
	writeln;
	writeln('                                            Biodata Anda Sudah Kami Proses Kedalam .txt');
	writeln('                                             Directory Berada Didalam File Pascal Anda');readln;
	       begin
	       hasil_biodata;
	       end;	
	writeln('  Ingin Menulis Lagi ? (Y/T)');
	  write('  Jawab : ');readln(back);
	  if (back='Y') or (back='y') then goto title;
	  if (back='T') or (back='t') then
	  begin
	  	clrscr;
	writeln;
	writeln;
	writeln;
	writeln('                                                   Dibuat Oleh AIPP_Project03');readln;
	writeln('                                                   Terima Kasih Saya Ucapkan');readln;
	writeln('                                                     A.Irwin Putra Pangesti');readln;
	end;
	end;
end.