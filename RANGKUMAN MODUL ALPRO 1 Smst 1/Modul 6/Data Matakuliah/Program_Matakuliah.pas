program mata_kuliah;
var t : text;
s: String;
i: integer;
pilih : integer;

begin
   assign(t, 'Program Matakuliah Yang Ditempuh.txt');
   rewrite(t);
    writeln(t, 'Daftar Matakuliah Teknik Sipil');
    writeln(t, '=========================================');
    writeln(t, ' A) Kimia Teknik');
    writeln(t, ' B) Pengantar Geologi');
    writeln(t, ' C) Statika');
    writeln(t, ' D) Matematika Teknik');
    writeln(t, ' E) Pancasila');
    writeln(t, ' F) Fisika Teknik');
    writeln(t, ' G) Mekanika Tanah');
    writeln(t, ' H) Algoritma Dan Pemrograman');
   close(t);
end.