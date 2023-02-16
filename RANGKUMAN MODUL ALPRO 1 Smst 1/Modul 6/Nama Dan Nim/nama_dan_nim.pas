program mata_kuliah;
var t : text;
nama,nim : string;

begin
   assign(t, 'Inputan Nama Dan NIM.txt');
   rewrite(t);
   writeln('Silahkan Input Nama Dan NIM Anda : ');
     write(' Input Nama : ');readln(nama);
     write(' Input NIM  : ');readln(nim);

     // OUTPUT TXT_________________________________________// 

   writeln(t, 'Biodata Anda : ');
   writeln(t,'NAMA : ',nama);
   writeln(t,'NIM  : ',nim);
   close(t);
end.